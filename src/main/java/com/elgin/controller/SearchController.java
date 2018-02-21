package com.elgin.controller;

import com.elgin.entities.RegistCertificate;
import com.elgin.service.impl.RegistCertificateService;
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
	private RegistCertificateService registCertificateService;

	@RequestMapping("search")
	public String search(String keyword, ModelMap mm) {

		List<RegistCertificate> resultList = registCertificateService.search(keyword);
		mm.put("resultList", resultList);
		for (RegistCertificate registCertificate : resultList) {
			logger.info(registCertificate.getApplicant_name());
		}
		return "/searchResult";
	}



}
