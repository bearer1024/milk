package com.elgin.controller;

import com.elgin.entities.RegistCertificate;
import com.elgin.service.IRegisterCertificateManager;
import com.elgin.utils.GridJsonResult;
import com.elgin.utils.JsonResult;
import com.elgin.utils.JsonResultUtil;
import com.elgin.utils.Page;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping("admin/registCertificate/")
public class RegistCertificateController {
  
	private Logger logger=Logger.getLogger(this.getClass());
	
	@Autowired
	private IRegisterCertificateManager registerCertificateManager;

	@RequestMapping("add")
	public void addPage(RegistCertificate registCertificate, HttpServletResponse response) {
		logger.info("add page..." + registCertificate.toString());
        try {
            registCertificate.setPublish_certificate_time(registCertificate.getPublish_certificate_time().replace("T"," "));
            int add = registerCertificateManager.add(registCertificate);
            if (add > 0) {
                logger.info("插入成功");
                response.sendRedirect("/admin/registCertificate/list-register");
            } else {
                logger.info("插入失败");
            }
        } catch (Exception e) {
            logger.error(e);
        }
	}

	@RequestMapping("list-register")
	public String list(Integer currentPageNo, ModelMap mm){
	    if(currentPageNo==null){
            currentPageNo = 1;
        }
        List<RegistCertificate> registCertificates = registerCertificateManager.selectList(currentPageNo);
        mm.put("list", registCertificates);
        return "/list_register";
    }


    @RequestMapping("edit-certificate")
    public String editCertificate(RegistCertificate registCertificate, ModelMap mm){
        registerCertificateManager.update(registCertificate);
        List<RegistCertificate> registCertificates = registerCertificateManager.selectList(1);
        mm.put("list", registCertificates);
        return "/list_register";
    }

    @RequestMapping("delete-certificate")
    public String deleteCertificate(int id, ModelMap mm){
        registerCertificateManager.delete(id);
        List<RegistCertificate> registCertificates = registerCertificateManager.selectList(1);
        mm.put("list", registCertificates);
        return "/list_register";
    }




}
