package com.elgin.service.impl;

import com.elgin.dao.RegistCertificateDao;
import com.elgin.dao.UserDao;
import com.elgin.entities.RegistCertificate;
import com.elgin.entities.User;
import com.elgin.service.IRegisterCertificateManager;
import com.elgin.service.UserService;
import com.elgin.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("registCertificateService")
public class RegisterCertificateManager implements IRegisterCertificateManager{
    
	@Autowired
	private RegistCertificateDao registCertificateDao;

	@Override
	public int add(RegistCertificate registCertificate) {
		int result=registCertificateDao.add(registCertificate);
        return result;
	}

	@Override
	public List<RegistCertificate> search(String keyword) {
		List<RegistCertificate> list = registCertificateDao.getListByKeyWord(keyword);

		return list;
	}

	@Override
	public List<RegistCertificate> selectList(int currentPageNo) {
		int count = registCertificateDao.count();

		Page page = new Page(currentPageNo, count, 20);
		List<RegistCertificate> list = registCertificateDao.getList(page);

		return list;
	}

	@Override
	public Page selectListForPage(Map map, int pageNo, int pageSize){
		Page page = registCertificateDao.queryCertificateForPage(pageNo,pageSize);
		return page;
	}
}
