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

import java.util.List;

@Controller
@RequestMapping("admin/registCertificate/")
public class RegistCertificateController {
  
	private Logger logger=Logger.getLogger(this.getClass());
	
	@Autowired
	private IRegisterCertificateManager registerCertificateManager;

	@RequestMapping("add")
	public JsonResult addPage(RegistCertificate registCertificate) {
		logger.info("add page...");

        try {
            registCertificate.setPublish_certificate_time(registCertificate.getPublish_certificate_time().replace("T"," "));
            registerCertificateManager.add(registCertificate);
        } catch (Exception e) {
            e.printStackTrace();
            return JsonResultUtil.getErrorJson("添加失败");
        }
        return JsonResultUtil.getSuccessJson("添加成功");
	}

	@RequestMapping("list-register")
	public String list(Integer currentPageNo, ModelMap mm){
	    if(currentPageNo==null){
            currentPageNo = 1;
        }
        List<RegistCertificate> registCertificates = registerCertificateManager.selectList(currentPageNo);
        mm.put("list", registCertificates);
        return "/list-register";
    }

    @RequestMapping("list-register-json")
    public GridJsonResult listRegisterJson(){
	    // TODO paging feature
        //Page webPage = registerCertificateManager.
        Page webPage = new Page();//FIXME
        return JsonResultUtil.getGridJson(webPage);
    }

    @RequestMapping("edit-certificate")
    public String editCertificate(int id, ModelMap mm){
        RegistCertificate result = registerCertificateManager.getDetailById(id);
        mm.put("result", result);
        return "/editMilkRegInfo";
    }





}
