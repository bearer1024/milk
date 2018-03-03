package com.elgin.dao;

import com.elgin.entities.RegistCertificate;
import com.elgin.entities.User;
import com.elgin.utils.Page;

import java.util.List;
import java.util.Map;

/**
 * @author wangzhuai
 * @date 2018/2/19
 */
public interface RegistCertificateDao {
    int add(RegistCertificate registCertificate);

    int delete(Integer id);

    int count();

    int update(RegistCertificate registCertificate);

    RegistCertificate get(Integer id);

    List<RegistCertificate> getListByKeyWord(String keyword);
    List<RegistCertificate> getList(Page page);

//    Page queryCertificateForPage(int pageNo,int pageSize);
}
