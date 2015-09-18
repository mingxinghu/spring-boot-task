package com.lifeccp.domain;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by Star on 2015/9/15.
 */
@Entity
@Table(name = "assignRule")
public class AssignRule extends BasicDomain {
    @Column(name = "rule_type")
    private Byte ruleType;//规则类型

    private String article;

    private String name;

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    @Column(name = "create_date")
    private Date createDate;//创建时间

    @Column(name = "creator_id")
    private Integer creatorId;//创建者

    private Short priority;//优先级

    @Column(name = "from_id")
    private Integer fromId;//来源医院ID

    @Column(name = "to_id")
    private Integer toId;//目标医院ID或小组ID

    private Boolean enabled;//是否可用

    @Column(name = "device_type")
    private String deviceType;//设备类型

    /**
     * Gets rule type.
     *
     * @return the rule type
     */
    public Byte getRuleType() {
        return ruleType;
    }

    /**
     * Sets rule type.
     *
     * @param ruleType the rule type
     */
    public void setRuleType(Byte ruleType) {
        this.ruleType = ruleType;
    }

    /**
     * Gets article.
     *
     * @return the article
     */
    public String getArticle() {
        return article;
    }

    /**
     * Sets article.
     *
     * @param article the article
     */
    public void setArticle(String article) {
        this.article = article;
    }

    /**
     * Gets name.
     *
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * Sets name.
     *
     * @param name the name
     */
    public void setName(String name) {
        this.name = name;
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
     * Gets creator id.
     *
     * @return the creator id
     */
    public Integer getCreatorId() {
        return creatorId;
    }

    /**
     * Sets creator id.
     *
     * @param creatorId the creator id
     */
    public void setCreatorId(Integer creatorId) {
        this.creatorId = creatorId;
    }

    /**
     * Gets priority.
     *
     * @return the priority
     */
    public Short getPriority() {
        return priority;
    }

    /**
     * Sets priority.
     *
     * @param priority the priority
     */
    public void setPriority(Short priority) {
        this.priority = priority;
    }

    /**
     * Gets from id.
     *
     * @return the from id
     */
    public Integer getFromId() {
        return fromId;
    }

    /**
     * Sets from id.
     *
     * @param fromId the from id
     */
    public void setFromId(Integer fromId) {
        this.fromId = fromId;
    }

    /**
     * Gets to id.
     *
     * @return the to id
     */
    public Integer getToId() {
        return toId;
    }

    /**
     * Sets to id.
     *
     * @param toId the to id
     */
    public void setToId(Integer toId) {
        this.toId = toId;
    }

    /**
     * Gets enabled.
     *
     * @return the enabled
     */
    public Boolean getEnabled() {
        return enabled;
    }

    /**
     * Sets enabled.
     *
     * @param enabled the enabled
     */
    public void setEnabled(Boolean enabled) {
        this.enabled = enabled;
    }

    /**
     * Gets device type.
     *
     * @return the device type
     */
    public String getDeviceType() {
        return deviceType;
    }

    /**
     * Sets device type.
     *
     * @param deviceType the device type
     */
    public void setDeviceType(String deviceType) {
        this.deviceType = deviceType;
    }
}
