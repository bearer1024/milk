package com.elgin.service;

import com.elgin.entities.RegistCertificate;

import java.util.List;

public interface IRegisterCertificateManager {

    int add(RegistCertificate registCertificate);

    List<RegistCertificate> search(String keyword);
}
