package com.elgin.dao;

import com.elgin.entities.RegistCertificate;
import com.elgin.entities.User;

import java.util.List;

/**
 * @author wangzhuai
 * @date 2018/2/19
 */
public interface RegistCertificateDao {
    int add(RegistCertificate registCertificate);

    int delete(Integer id);

    int update(RegistCertificate registCertificate);

    User get(Integer id);

    List<RegistCertificate> getList();
}
