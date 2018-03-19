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

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
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

    @Override
	public String readFileToImportMilkInfo(String filePath){
		File file = new File(filePath);

		return null;
	}

	@Override
	public boolean addToDatabase(ArrayList<HashMap<String,Object>> hashMapArrayList){
		ArrayList<RegistCertificate> registCertificateArrayList = new ArrayList<RegistCertificate>();
		try {
			for(HashMap<String,Object> hashMap : hashMapArrayList){
				RegistCertificate registCertificate = new RegistCertificate();
				registCertificate.setApplicant_name(hashMap.get("applicant_name").toString());
				registCertificate.setApplication_number(hashMap.get("applicantion_number").toString());
				registCertificate.setCertificate_expire_date(hashMap.get("certificate_expire_date").toString());
				registCertificate.setProduct_name(hashMap.get("product_name").toString());
				registCertificateArrayList.add(registCertificate);
			}
			for(RegistCertificate regist : registCertificateArrayList){
				add(regist);
			}
			return true;
		}
		catch (Exception e){
			e.printStackTrace();
			return false;
		}
	}


}
