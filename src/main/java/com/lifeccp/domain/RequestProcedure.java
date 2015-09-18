package com.lifeccp.domain;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by Star on 2015/9/15.
 */
@Entity
@Table(name = "request_procedure")
public class RequestProcedure extends BasicDomain {
    @Column(name = "exam_name")
    private String examName;//检查名称

    private String modality;//设备类型

    private String method;//检查方法

    private String bodyPart;//正文

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    @Column(name = "create_date")
    private Date createDate;//创建时间

    @Column(name = "case_uid")
    private String caseUid;//病历UID

    /**
     * Gets exam name.
     *
     * @return the exam name
     */
    public String getExamName() {
        return examName;
    }

    /**
     * Sets exam name.
     *
     * @param examName the exam name
     */
    public void setExamName(String examName) {
        this.examName = examName;
    }

    /**
     * Gets modality.
     *
     * @return the modality
     */
    public String getModality() {
        return modality;
    }

    /**
     * Sets modality.
     *
     * @param modality the modality
     */
    public void setModality(String modality) {
        this.modality = modality;
    }

    /**
     * Gets method.
     *
     * @return the method
     */
    public String getMethod() {
        return method;
    }

    /**
     * Sets method.
     *
     * @param method the method
     */
    public void setMethod(String method) {
        this.method = method;
    }

    /**
     * Gets body part.
     *
     * @return the body part
     */
    public String getBodyPart() {
        return bodyPart;
    }

    /**
     * Sets body part.
     *
     * @param bodyPart the body part
     */
    public void setBodyPart(String bodyPart) {
        this.bodyPart = bodyPart;
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
     * Gets case uid.
     *
     * @return the case uid
     */
    public String getCaseUid() {
        return caseUid;
    }

    /**
     * Sets case uid.
     *
     * @param caseUid the case uid
     */
    public void setCaseUid(String caseUid) {
        this.caseUid = caseUid;
    }
}
