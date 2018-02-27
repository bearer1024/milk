package com.elgin.controller;

import com.elgin.entities.RegistCertificate;
import com.elgin.entities.User;
import com.elgin.service.UserService;
import com.elgin.service.impl.RegistCertificateService;
import com.elgin.utils.JsonResult;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("admin/registCertificate/")
public class RegistCertificateController {
  
	private Logger logger=Logger.getLogger(this.getClass());
	
	@Autowired
	private RegistCertificateService registCertificateService;

	@RequestMapping("add")
	public String addPage(RegistCertificate registCertificate) {
		logger.info("add page...");

		registCertificate.setPublish_certificate_time(registCertificate.getPublish_certificate_time().replace("T"," "));
		registCertificateService.add(registCertificate);
		return "test";
	}

	@RequestMapping("list")
	public ModelAndView list(){
	    ModelAndView view = new ModelAndView();
	    view.setViewName("/product/list-product");
	    return view;
    }



}
