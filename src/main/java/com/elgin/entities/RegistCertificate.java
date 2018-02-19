package com.elgin.entities;

import java.util.Date;

/**
 * @author wangzhuai
 * @date 2018/2/19
 */
public class RegistCertificate {
    private Integer id;
    private String applicationNumber;
    private String productName;
    private String powderLevel;
    private String applicantName;
    private String publishCertificateTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getApplicationNumber() {
        return applicationNumber;
    }

    public void setApplicationNumber(String applicationNumber) {
        this.applicationNumber = applicationNumber;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getPowderLevel() {
        return powderLevel;
    }

    public void setPowderLevel(String powderLevel) {
        this.powderLevel = powderLevel;
    }

    public String getApplicantName() {
        return applicantName;
    }

    public void setApplicantName(String applicantName) {
        this.applicantName = applicantName;
    }

    public String getPublishCertificateTime() {
        return publishCertificateTime;
    }

    public void setPublishCertificateTime(String publishCertificateTime) {
        this.publishCertificateTime = publishCertificateTime;
    }
}
