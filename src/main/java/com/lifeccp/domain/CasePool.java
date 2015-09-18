package com.lifeccp.domain;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by Star on 2015/9/14.
 */
@Entity
@Table(name = "casePool")
public class CasePool extends BasicDomain {

    @Column(name = "case_uid")
    private Integer caseUid;

    @Column(name = "submit_user_id")
    private Integer submitUserId;//提交case的用户id

    @Column(name = "service_user_id")
    private Integer serviceUserId;//分配case的用户id

    @Column(name = "report_user_id")
    private Integer reportUserId;//为case写报告的用户id

    private String title;//标题

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    @Column(name = "submit_time")
    private Date submitTime;//为检查时间

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    @Column(name = "allocation_date")
    private Date allocationDate;

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    @Column(name = "report_time")
    private Date reportTime;//最后做完成时间

    private Byte status;//状态

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    @Column(name = "create_date")
    private Date createDate;//为case提交时间

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    @Column(name = "update_date")
    private Date updateDate;//最后做完成时间

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    @Column(name = "confirm_date")
    private Date confirmDate;//确认时间

    @Column(name = "patient_id")
    private Integer patientId;//病人ID

    @Column(name = "action")
    private Byte action;//处理结果 0：新上传；1：已分配；2：未分配

    @Column(name = "hospital_id")
    private Integer hospitalId;//医院ID

    @Column(name = "gateway_id")
    private Integer gatewayId;//网关ID

    /**
     * Gets case uid.
     *
     * @return the case uid
     */
    public Integer getCaseUid() {
        return caseUid;
    }

    /**
     * Sets case uid.
     *
     * @param caseUid the case uid
     */
    public void setCaseUid(Integer caseUid) {
        this.caseUid = caseUid;
    }

    /**
     * Gets submit user id.
     *
     * @return the submit user id
     */
    public Integer getSubmitUserId() {
        return submitUserId;
    }

    /**
     * Sets submit user id.
     *
     * @param submitUserId the submit user id
     */
    public void setSubmitUserId(Integer submitUserId) {
        this.submitUserId = submitUserId;
    }

    /**
     * Gets service user id.
     *
     * @return the service user id
     */
    public Integer getServiceUserId() {
        return serviceUserId;
    }

    /**
     * Sets service user id.
     *
     * @param serviceUserId the service user id
     */
    public void setServiceUserId(Integer serviceUserId) {
        this.serviceUserId = serviceUserId;
    }

    /**
     * Gets report user id.
     *
     * @return the report user id
     */
    public Integer getReportUserId() {
        return reportUserId;
    }

    /**
     * Sets report user id.
     *
     * @param reportUserId the report user id
     */
    public void setReportUserId(Integer reportUserId) {
        this.reportUserId = reportUserId;
    }

    /**
     * Gets title.
     *
     * @return the title
     */
    public String getTitle() {
        return title;
    }

    /**
     * Sets title.
     *
     * @param title the title
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * Gets submit time.
     *
     * @return the submit time
     */
    public Date getSubmitTime() {
        return submitTime;
    }

    /**
     * Sets submit time.
     *
     * @param submitTime the submit time
     */
    public void setSubmitTime(Date submitTime) {
        this.submitTime = submitTime;
    }

    /**
     * Gets allocation date.
     *
     * @return the allocation date
     */
    public Date getAllocationDate() {
        return allocationDate;
    }

    /**
     * Sets allocation date.
     *
     * @param allocationDate the allocation date
     */
    public void setAllocationDate(Date allocationDate) {
        this.allocationDate = allocationDate;
    }

    /**
     * Gets report time.
     *
     * @return the report time
     */
    public Date getReportTime() {
        return reportTime;
    }

    /**
     * Sets report time.
     *
     * @param reportTime the report time
     */
    public void setReportTime(Date reportTime) {
        this.reportTime = reportTime;
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
     * Gets update date.
     *
     * @return the update date
     */
    public Date getUpdateDate() {
        return updateDate;
    }

    /**
     * Sets update date.
     *
     * @param updateDate the update date
     */
    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    /**
     * Gets confirm date.
     *
     * @return the confirm date
     */
    public Date getConfirmDate() {
        return confirmDate;
    }

    /**
     * Sets confirm date.
     *
     * @param confirmDate the confirm date
     */
    public void setConfirmDate(Date confirmDate) {
        this.confirmDate = confirmDate;
    }

    /**
     * Gets patient id.
     *
     * @return the patient id
     */
    public Integer getPatientId() {
        return patientId;
    }

    /**
     * Sets patient id.
     *
     * @param patientId the patient id
     */
    public void setPatientId(Integer patientId) {
        this.patientId = patientId;
    }

    /**
     * Gets action.
     *
     * @return the action
     */
    public Byte getAction() {
        return action;
    }

    /**
     * Sets action.
     *
     * @param action the action
     */
    public void setAction(Byte action) {
        this.action = action;
    }

    /**
     * Gets hospital id.
     *
     * @return the hospital id
     */
    public Integer getHospitalId() {
        return hospitalId;
    }

    /**
     * Sets hospital id.
     *
     * @param hospitalId the hospital id
     */
    public void setHospitalId(Integer hospitalId) {
        this.hospitalId = hospitalId;
    }

    /**
     * Gets gateway id.
     *
     * @return the gateway id
     */
    public Integer getGatewayId() {
        return gatewayId;
    }

    /**
     * Sets gateway id.
     *
     * @param gatewayId the gateway id
     */
    public void setGatewayId(Integer gatewayId) {
        this.gatewayId = gatewayId;
    }
}
