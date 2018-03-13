package com.elgin.entities;

/**
 * @author wangzhuai
 * @date 2018/2/19
 */
public class RegistCertificate {
    private Integer id;
    private String application_number;
    private String product_name;
    private String applicant_name;
    private String certificate_expire_date;

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
    
    public String getApplicant_name() {
        return applicant_name;
    }

    public void setApplicant_name(String applicant_name) {
        this.applicant_name = applicant_name;
    }

    public String getCertificate_expire_date() {
        return certificate_expire_date;
    }

    public void setCertificate_expire_date(String certificate_expire_date) {
        this.certificate_expire_date = certificate_expire_date;
    }

    @Override
    public String toString() {
        return "RegistCertificate{" +
                "id=" + id +
                ", application_number='" + application_number + '\'' +
                ", product_name='" + product_name + '\'' +
                ", applicant_name='" + applicant_name + '\'' +
                ", certificate_expire_date='" + certificate_expire_date + '\'' +
                '}';
    }
}
