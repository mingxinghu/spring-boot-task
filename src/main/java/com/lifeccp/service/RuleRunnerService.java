package com.lifeccp.service;

import com.lifeccp.bean.CasePoolGroupSourceBean;
import com.lifeccp.domain.AssignRule;
import com.lifeccp.domain.CasePool;
import com.lifeccp.domain.CasePoolGroup;
import com.lifeccp.domain.CasePoolHospital;
import com.lifeccp.exception.RuleNotExistException;
import com.lifeccp.repository.*;
import com.lifeccp.util.AppConstant;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.*;

/**
 * Created by Star on 2015/9/15.
 */
@Service
public class RuleRunnerService {
    private String batchNo;
    private Logger logger = LogManager.getLogger(this.getClass());

    @Autowired
    private AssignRuleRepository assignRuleRepository;
    @Autowired
    private CasePoolRepository casePoolRepository;
    @Autowired
    private RequestProcedureRepository requestProcedureRepository;
    @Autowired
    private CasePoolHospitalRepository casePoolHospitalRepository;
    @Autowired
    private CasePoolGroupRepository casePoolGroupRepository;


    public void execute(String batchNo) throws Exception {
        this.batchNo = batchNo;
        //缓存院间和院内规则
        Map<String, AssignRule> outsideRuleMap = new HashMap<String, AssignRule>();
        Map<String, AssignRule> insideRuleMap = new HashMap<String, AssignRule>();
        List<AssignRule> allRules = assignRuleRepository.findByEnabled(true);
        if (null == allRules || allRules.size() <= 0) {
            throw new RuleNotExistException("Running["+batchNo+"] ---> has no rule!");
        }
        allRules.forEach( assignRule -> {
            String key = assignRule.getFromId() + AppConstant.SPECHARS_UNDERLINE + assignRule.getDeviceType();
            if (assignRule.getRuleType() == AppConstant.ASSIGN_RULE_TYPE_ENTERPRISE_OUTSIDE || assignRule.getRuleType() == AppConstant.ASSIGN_RULE_TYPE_ENTERPRISE_INSIDE) {
                if (null != outsideRuleMap.get(key)){
                    logger.error("Running[{}] ---> rule[fromId:{};deviceType:{}] is duplicate!", batchNo, assignRule.getFromId(), assignRule.getDeviceType());
                }
                outsideRuleMap.put(key, assignRule);
            } else if (assignRule.getRuleType() == AppConstant.ASSIGN_RULE_TYPE_HOSPITAL_INSIDE) {
                if (null != insideRuleMap.get(key)){
                    logger.error("Running[{}] ---> rule[fromId:{};deviceType:{}] is duplicate!", batchNo, assignRule.getFromId(), assignRule.getDeviceType());
                }
                insideRuleMap.put(key, assignRule);
            } else {
                logger.error("Running[{}] ---> rule[id:{}] unknow type!", batchNo, assignRule.getId());
            }

        });

        //缓存病历的检查方法
        Map<Integer, String> deviceTypeMap = new HashMap<>();
        requestProcedureRepository.findCaseDeviceTypes().forEach(requestProcedure -> deviceTypeMap.put(Integer.parseInt(requestProcedure.getCaseUid()), requestProcedure.getModality().toUpperCase()));

        //setup 1：将病历从报告池分配到医院池
        List<CasePoolGroupSourceBean> groupSourceBeans = null;
        List<CasePool> newCasePools = casePoolRepository.findByAction(AppConstant.CASEPOOL_ACTION_NEW);
        if (null != newCasePools && newCasePools.size() > 0) {
            groupSourceBeans = new ArrayList<>();
            for (CasePool casePool : newCasePools) {
                //获取case检查方法
                String deviceType = deviceTypeMap.get(casePool.getCaseUid());
                if (null == deviceType || deviceType.length() <= 0) {
                    logger.error("Running[{}] ---> casePool[id:{};uid:{}] has no device type!", batchNo, casePool.getId(), casePool.getCaseUid());
                    updateCasePoolAction(casePool, AppConstant.CASEPOOL_ACTION_UNKNOW);
                    continue;
                }
                //获取case匹配的规则
                AssignRule matchRule = outsideRuleMap.get(casePool.getHospitalId() + AppConstant.SPECHARS_UNDERLINE + deviceType);
                if (null == matchRule) {
                    logger.error("Running[{}] ---> casePool[id:{};hospitalId:{};deviceType:{}] has no match of rule!", batchNo, casePool.getId(), casePool.getHospitalId(), deviceType);
                    updateCasePoolAction(casePool, AppConstant.CASEPOOL_ACTION_UNKNOW);
                    continue;
                }
                //将case从报告池移至医院池
                try {
                    CasePoolHospital casePoolHospital = createCasePoolHospital(casePool, matchRule);
                    groupSourceBeans.add(new CasePoolGroupSourceBean(deviceType, casePoolHospital));
                } catch (Exception e) {
                    logger.error(e.getMessage(), e);
                }
            }
        }

        //setup 2：将病历从医院池分配到组池
        if (null != groupSourceBeans) {
            for (CasePoolGroupSourceBean sourceBean : groupSourceBeans) {
                //新增的医院池中病历
                CasePoolHospital casePoolHospital = sourceBean.getCasePoolHospital();
                //获取case匹配的规则
                AssignRule matchRule = insideRuleMap.get(casePoolHospital.getHospitalId() + AppConstant.SPECHARS_UNDERLINE + sourceBean.getDeviceType());
                if (null == matchRule) {
                    logger.error("Running[{}] ---> casePoolHospital[id:{};hospitalId:{};deviceType:{}] has no match of rule!", batchNo, casePoolHospital.getId(), casePoolHospital.getHospitalId(), sourceBean.getDeviceType());
                    updateCasePoolHospitalStatus(casePoolHospital, AppConstant.CASEPOOLHOSPITAL_STATUS_UNKNOW);
                    continue;
                }
                //将case从医院池移至组池
                try {
                    createCasePoolGroup(casePoolHospital, matchRule);
                } catch (Exception e) {
                    logger.error(e.getMessage(), e);
                }
            }
        }
    }

    @Transactional
    private void updateCasePoolAction(CasePool casePool, Byte action){
        casePool.setAction(action);
        casePool.setUpdateDate(new Date());
        casePoolRepository.save(casePool);
    }

    @Transactional
    private CasePoolHospital createCasePoolHospital(CasePool casePool, AssignRule assignRule){
        CasePoolHospital casePoolHospital = new CasePoolHospital();
        casePoolHospital.setCaseId(casePool.getId());
        casePoolHospital.setAppliedRuleId(assignRule.getId());
        casePoolHospital.setHospitalId(assignRule.getToId());
        casePoolHospital.setBatch(this.batchNo);
        casePoolHospital.setCreateDate(new Date());
        casePoolHospital.setStatus(AppConstant.CASEPOOLHOSPITAL_STATUS_NEW);
        CasePoolHospital _casePoolHospital1 = casePoolHospitalRepository.save(casePoolHospital);

        casePool.setAction(AppConstant.CASEPOOL_ACTION_MATCHED);
        casePool.setUpdateDate(new Date());
        casePoolRepository.save(casePool);
        return _casePoolHospital1;
    }

    @Transactional
    private void updateCasePoolHospitalStatus(CasePoolHospital casePoolHospital, Byte status) {
        casePoolHospital.setStatus(status);
        casePoolHospitalRepository.save(casePoolHospital);
    }

    @Transactional
    private void createCasePoolGroup(CasePoolHospital casePoolHospital, AssignRule assignRule){
        CasePoolGroup casePoolGroup  = new CasePoolGroup();
        casePoolGroup.setCaseId(casePoolHospital.getCaseId());
        casePoolGroup.setAppliedRuleId(assignRule.getId());
        casePoolGroup.setGroupId(assignRule.getToId());
        casePoolGroup.setBatch(this.batchNo);
        casePoolGroup.setCreateDate(new Date());
        casePoolGroup.setStatus(AppConstant.CASEPOOLGROUP_STATUS_NEW);
        casePoolGroupRepository.save(casePoolGroup);

        casePoolHospital.setStatus(AppConstant.CASEPOOLHOSPITAL_STATUS_MATCHED);
        casePoolHospitalRepository.save(casePoolHospital);
    }

    public void run(){
        System.out.println("this is my simple quartz job!");
    }
}
