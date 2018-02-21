package com.elgin.controller;

import com.elgin.entities.User;
import com.elgin.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
public class AdminUserController {
  
	private Logger logger=Logger.getLogger(this.getClass());

	@RequestMapping("/adminLogin.do")
	public String adminLogin(ModelMap mm) {
		logger.info("adminLogin...");
		return "/admin_login";
	}
    

}
