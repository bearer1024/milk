package com.elgin.controller;

import com.elgin.entities.RegistCertificate;
import com.elgin.service.IRegisterCertificateManager;
import com.elgin.utils.Page;
import com.elgin.utils.SheetManager;
import org.apache.log4j.Logger;
import org.apache.poi.ss.usermodel.Sheet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
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
            registCertificate.setCertificate_expire_date(registCertificate.getCertificate_expire_date().replace("T"," "));
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
        int count = registerCertificateManager.count();

	    logger.info("currentPage:"+currentPageNo);
        Page page = new Page(currentPageNo, count, 20);
        List<RegistCertificate> registCertificates = registerCertificateManager.selectList(page);
        mm.put("list", registCertificates);
        mm.put("totalPage", page.getTotalPageCount());
        mm.put("currentPage", page.getCurrentPageNo());

        return "/list_register";
    }


    @RequestMapping("edit-certificate")
    public String editCertificate(RegistCertificate registCertificate, ModelMap mm){
        registerCertificateManager.update(registCertificate);
        int count = registerCertificateManager.count();

        Page page = new Page(1, count, 20);
        List<RegistCertificate> registCertificates = registerCertificateManager.selectList(page);
        mm.put("list", registCertificates);
        return "/list_register";
    }

    @RequestMapping("delete-certificate")
    public String deleteCertificate(int id, ModelMap mm){
        registerCertificateManager.delete(id);

        int count = registerCertificateManager.count();
        Page page = new Page(1, count, 20);
        List<RegistCertificate> registCertificates = registerCertificateManager.selectList(page);
        mm.put("list", registCertificates);
        return "/list_register";
    }

    @RequestMapping(value="uploadMilkInfo",method= RequestMethod.POST)
    public String uploadMilkInfo(@RequestParam("file") MultipartFile file, HttpServletRequest request){
	    String currentProjectPath = request.getSession().getServletContext().getRealPath(File.separator);
	    String saveFileDirectoryPath = currentProjectPath+"excels";
	    try {
            File saveDirectory = new File(saveFileDirectoryPath);
            if(!saveDirectory.exists()){
                saveDirectory.mkdirs();
            }
            String fileName = file.getOriginalFilename();
            File remoteFile = new File(saveDirectory, fileName);
            file.transferTo(remoteFile);
            String remotePath = saveDirectory+File.separator+fileName;
            logger.info("file uploaded successfully, remotePath is: "+remotePath);
            SheetManager sheetManager = new SheetManager();
            ArrayList<HashMap<String,Object>> hashMapArraylist = sheetManager.readExcel(remoteFile);
            boolean result = registerCertificateManager.addToDatabase(hashMapArraylist);
            if(result){
                logger.info("import milk info successfully!");
            }
            //remoteFile.delete();
            return "/list_register";

        } catch (IOException e) {
            e.printStackTrace();
        }

        return "/list_register";
    }



}
