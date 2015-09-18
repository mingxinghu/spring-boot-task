package com.lifeccp.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Created by Star on 2015/9/15.
 */
@Entity
@Table(name = "`group`")
public class Group extends BasicDomain{
    private String name;//名称

    @Column(name = "leader_id")
    private Integer leaderId;//组长ID

    @Column(name = "hospital_id")
    private Integer hospitalId;//医院ID

    private String description;//描述

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getLeaderId() {
        return leaderId;
    }

    public void setLeaderId(Integer leaderId) {
        this.leaderId = leaderId;
    }

    public Integer getHospitalId() {
        return hospitalId;
    }

    public void setHospitalId(Integer hospitalId) {
        this.hospitalId = hospitalId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
