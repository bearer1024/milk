package com.elgin.service.impl;

import com.elgin.dao.RegistCertificateDao;
import com.elgin.dao.UserDao;
import com.elgin.entities.RegistCertificate;
import com.elgin.entities.User;
import com.elgin.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("registCertificateService")
public class RegistCertificateService {
    
	@Autowired
	private RegistCertificateDao registCertificateDao;
	
	public int add(RegistCertificate registCertificate) {
		int result=registCertificateDao.add(registCertificate);
        return result;
	}

}
