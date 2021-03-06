package com.elgin.controller;

import com.elgin.entities.RegistCertificate;
import com.elgin.service.impl.RegisterCertificateManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("api/")
public class SearchController {
  
	private Logger logger=Logger.getLogger(this.getClass());
	
	@Autowired
	private RegisterCertificateManager registerCertificateManager;

	@RequestMapping("search")
	public String search(String keyword, ModelMap mm) {

		List<RegistCertificate> resultList = registerCertificateManager.search(keyword);
		mm.put("resultList", resultList);
		return "/searchResult";
	}

	@RequestMapping("productDetail")
	public String productDetail(int id, ModelMap mm) {

		RegistCertificate result = registerCertificateManager.getDetailById(id);
		mm.put("result", result);

		return "/certificateDetail";
	}

}
