package com.elgin.service;

import com.elgin.entities.RegistCertificate;
import com.elgin.utils.Page;

import java.util.List;

public interface IRegisterCertificateManager {

    int add(RegistCertificate registCertificate);

    int update(RegistCertificate registCertificate);

    List<RegistCertificate> search(String keyword);

    List<RegistCertificate> selectList(Page page);

    RegistCertificate getDetailById(int id);
    int delete(int id);

    int count();

    String readFileToImportMilkInfo(String filePath);
}
