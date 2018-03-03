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
import java.util.Map;

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
	public int update(RegistCertificate registCertificate) {
		 return registCertificateDao.update(registCertificate);
	}

	@Override
	public List<RegistCertificate> search(String keyword) {
		List<RegistCertificate> list = registCertificateDao.getListByKeyWord(keyword);

		return list;
	}

	@Override
	public List<RegistCertificate> selectList(Page page) {

		List<RegistCertificate> list = registCertificateDao.getList(page);

		return list;
	}

	@Override
	public RegistCertificate getDetailById(int id) {
		return registCertificateDao.get(id);
	}

    @Override
    public int delete(int id) {
        return registCertificateDao.delete(id);
    }

    @Override
    public int count() {
        return registCertificateDao.count();
    }


}
