package com.lifeccp.domain;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by Star on 2015/9/14.
 */
@Entity
@Table(name = "casePool_group")
public class CasePoolGroup extends BasicDomain {

    @Column(name = "group_id")
    private Integer groupId;//分组ID

    @Column(name = "case_id")
    private Integer caseId;//病历ID

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    @Column(name = "create_date")
    private Date createDate;//创建时间

    @Column(name = "applied_rule_id")
    private Integer appliedRuleId;//匹配规则ID

    private String batch;//批次号

    private Byte status;//状态

    /**
     * Gets group id.
     *
     * @return the group id
     */
    public Integer getGroupId() {
        return groupId;
    }

    /**
     * Sets group id.
     *
     * @param groupId the group id
     */
    public void setGroupId(Integer groupId) {
        this.groupId = groupId;
    }

    /**
     * Gets case id.
     *
     * @return the case id
     */
    public Integer getCaseId() {
        return caseId;
    }

    /**
     * Sets case id.
     *
     * @param caseId the case id
     */
    public void setCaseId(Integer caseId) {
        this.caseId = caseId;
    }

    /**
     * Gets create date.
     *
     * @return the create date
     */
    public Date getCreateDate() {
        return createDate;
    }

    /**
     * Sets create date.
     *
     * @param createDate the create date
     */
    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    /**
     * Gets applied rule id.
     *
     * @return the applied rule id
     */
    public Integer getAppliedRuleId() {
        return appliedRuleId;
    }

    /**
     * Sets applied rule id.
     *
     * @param appliedRuleId the applied rule id
     */
    public void setAppliedRuleId(Integer appliedRuleId) {
        this.appliedRuleId = appliedRuleId;
    }

    /**
     * Gets batch.
     *
     * @return the batch
     */
    public String getBatch() {
        return batch;
    }

    /**
     * Sets batch.
     *
     * @param batch the batch
     */
    public void setBatch(String batch) {
        this.batch = batch;
    }

    /**
     * Gets status.
     *
     * @return the status
     */
    public Byte getStatus() {
        return status;
    }

    /**
     * Sets status.
     *
     * @param status the status
     */
    public void setStatus(Byte status) {
        this.status = status;
    }
}
