package com.iii._01_.Member.controller;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.iii._01_.Member.bean.MemberBean;
import com.iii._01_.Member.service.RegisterService;

//@MultipartConfig(location = "", fileSizeThreshold = 5 * 1024 * 1024, maxFileSize = 1024 * 1024
//		* 500, maxRequestSize = 1024 * 1024 * 500 * 5)
@Controller
public class RegisterController {

	@Autowired
	RegisterService registerService;
	@RequestMapping(value =  "/register" , method = RequestMethod.GET)
	public void go() {
		System.out.println(":3");
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String register(@ModelAttribute("MemberBean") MemberBean mb, HttpServletRequest request)
			 {
			
		System.out.println("進入/register");
		
		if (registerService.checkAccountDuplicate(mb.getAccount()) != true) {
			try {
				registerService.saveAccount(mb);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			//有異常時
		} else {
			HttpSession session = request.getSession();
			String target = (String) session.getAttribute("target");
			target = target.substring(target.lastIndexOf("/"));

			Map<String, String> registerErrorMessage = new HashMap<String, String>();
			session.setAttribute("registerErrorMap", registerErrorMessage);
			registerErrorMessage.put("Duplicate", "帳號重複");
			return "redirect:" + target;
		}

		return "redirect:/Register/registerSuccess";
	}

}
