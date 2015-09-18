package com.lifeccp.domain;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by Star on 2015/9/14.
 */
@Entity
@Table(name = "casePool_personal")
public class CasePoolPersonal extends BasicDomain {

    @Column(name = "user_id")
    private Integer userId;//用户ID

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

    @Column(name = "assigner_id")
    private Integer assigner_id;//分配人ID

    /**
     * Gets user id.
     *
     * @return the user id
     */
    public Integer getUserId() {
        return userId;
    }

    /**
     * Sets user id.
     *
     * @param userId the user id
     */
    public void setUserId(Integer userId) {
        this.userId = userId;
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

    /**
     * Gets assigner _ id.
     *
     * @return the assigner _ id
     */
    public Integer getAssigner_id() {
        return assigner_id;
    }

    /**
     * Sets assigner _ id.
     *
     * @param assigner_id the assigner _ id
     */
    public void setAssigner_id(Integer assigner_id) {
        this.assigner_id = assigner_id;
    }
}
