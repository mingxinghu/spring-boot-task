package com.lifeccp.bean;

import com.lifeccp.domain.CasePoolHospital;

/**
 * Created by Star on 2015/9/16.
 */
public class CasePoolGroupSourceBean {
    private String deviceType;
    private CasePoolHospital casePoolHospital;

    /**
     * Instantiates a new Case pool group source bean.
     */
    public CasePoolGroupSourceBean() {
    }

    /**
     * Instantiates a new Case pool group source bean.
     *
     * @param deviceType the device type
     * @param casePoolHospital the case pool hospital
     */
    public CasePoolGroupSourceBean(String deviceType, CasePoolHospital casePoolHospital) {
        this.deviceType = deviceType;
        this.casePoolHospital = casePoolHospital;
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

    /**
     * Gets case pool hospital.
     *
     * @return the case pool hospital
     */
    public CasePoolHospital getCasePoolHospital() {
        return casePoolHospital;
    }

    /**
     * Sets case pool hospital.
     *
     * @param casePoolHospital the case pool hospital
     */
    public void setCasePoolHospital(CasePoolHospital casePoolHospital) {
        this.casePoolHospital = casePoolHospital;
    }
}
