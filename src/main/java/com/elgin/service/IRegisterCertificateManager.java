package com.elgin.service;

import com.elgin.entities.RegistCertificate;
import com.elgin.utils.Page;

import java.util.List;
import java.util.Map;

public interface IRegisterCertificateManager {

    int add(RegistCertificate registCertificate);

    List<RegistCertificate> search(String keyword);

    Page selectListForPage(Map map, int pageNo, int pageSize);
}
