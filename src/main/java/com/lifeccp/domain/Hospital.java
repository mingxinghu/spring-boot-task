package com.lifeccp.domain;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by Star on 2015/9/15.
 */
@Entity
@Table(name = "hospital")
public class Hospital extends BasicDomain {
    @Column(name = "gw_code")
    private String gwCode;//网关编号

    private String name;//名称

    private Boolean status;//状态 1：有效，0：无效

    @Column(name = "area_province")
    private String areaProvince;//省

    @Column(name = "area_city")
    private String areaCity;//市

    @Column(name = "area_region")
    private String areaRegion;//地区

    @Column(name = "create_user")
    private Integer createUser;//创建用户

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    @Column(name = "create_date")
    private Date createDate;//创建时间

    private String bewrite;//医院描述

    private String contactor;//医院联系人

    @Column(name = "contactor_phone")
    private String contactorPhone;//医院联系电话

    @Column(name = "enterprise_id")
    private Integer enterpriseId;//所属集团ID

    public String getGwCode() {
        return gwCode;
    }

    public void setGwCode(String gwCode) {
        this.gwCode = gwCode;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    public String getAreaProvince() {
        return areaProvince;
    }

    public void setAreaProvince(String areaProvince) {
        this.areaProvince = areaProvince;
    }

    public String getAreaCity() {
        return areaCity;
    }

    public void setAreaCity(String areaCity) {
        this.areaCity = areaCity;
    }

    public String getAreaRegion() {
        return areaRegion;
    }

    public void setAreaRegion(String areaRegion) {
        this.areaRegion = areaRegion;
    }

    public Integer getCreateUser() {
        return createUser;
    }

    public void setCreateUser(Integer createUser) {
        this.createUser = createUser;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getBewrite() {
        return bewrite;
    }

    public void setBewrite(String bewrite) {
        this.bewrite = bewrite;
    }

    public String getContactor() {
        return contactor;
    }

    public void setContactor(String contactor) {
        this.contactor = contactor;
    }

    public String getContactorPhone() {
        return contactorPhone;
    }

    public void setContactorPhone(String contactorPhone) {
        this.contactorPhone = contactorPhone;
    }

    public Integer getEnterpriseId() {
        return enterpriseId;
    }

    public void setEnterpriseId(Integer enterpriseId) {
        this.enterpriseId = enterpriseId;
    }
}
