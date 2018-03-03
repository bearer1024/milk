package com.elgin.entities;

import java.util.Date;

/**
 * @author wangzhuai
 * @date 2018/2/19
 */
public class RegistCertificate {
    private Integer id;
    private String application_number;
    private String product_name;
    private String powder_level;
    private String applicant_name;
    private String publish_certificate_time;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getApplication_number() {
        return application_number;
    }

    public void setApplication_number(String application_number) {
        this.application_number = application_number;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public String getPowder_level() {
        return powder_level;
    }

    public void setPowder_level(String powder_level) {
        this.powder_level = powder_level;
    }

    public String getApplicant_name() {
        return applicant_name;
    }

    public void setApplicant_name(String applicant_name) {
        this.applicant_name = applicant_name;
    }

    public String getPublish_certificate_time() {
        return publish_certificate_time;
    }

    public void setPublish_certificate_time(String publish_certificate_time) {
        this.publish_certificate_time = publish_certificate_time;
    }

    @Override
    public String toString() {
        return "RegistCertificate{" +
                "id=" + id +
                ", application_number='" + application_number + '\'' +
                ", product_name='" + product_name + '\'' +
                ", powder_level='" + powder_level + '\'' +
                ", applicant_name='" + applicant_name + '\'' +
                ", publish_certificate_time='" + publish_certificate_time + '\'' +
                '}';
    }
}
