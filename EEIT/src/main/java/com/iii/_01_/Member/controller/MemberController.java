package com.iii._01_.Member.controller;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.iii._01_.Member.bean.MemberBean;
import com.iii._01_.Member.service.LoginService;
import com.iii._01_.Member.service.RegisterService;

//@SessionAttributes("LoginOK")
@Controller
public class MemberController {
	@ModelAttribute("MemberBean")
	public MemberBean getMemberBean() {
		System.out.println("MemberBean here");
		return new MemberBean();
	}
	
	
	
	@Autowired
	LoginService loginService;

	// @RequestMapping(value="/login.do" , method=RequestMethod.POST)
	// public String login(@ModelAttribute("MemberBean") MemberBean mb ) {
	//
	//
	// return "";
	// }
	@RequestMapping("/testTop")
	public String test(HttpServletRequest request) {
		return "testTop";
				
	}
	
	@RequestMapping("/testTop2")
	public String test2(HttpServletRequest request) {
		return "_01test/testTop";
				
	}
	
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String target = (String) session.getAttribute("target");
		target = target.substring(target.lastIndexOf("/"));
		session.removeAttribute("LoginOK");
		session.removeAttribute("target");
		
		return "redirect:" + target;
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@ModelAttribute("MemberBean") MemberBean mb, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String target = (String) session.getAttribute("target");
		target = target.substring(target.lastIndexOf("/"));
		Map<String, String> errorMessageMap = new HashMap<String, String>();
		session.setAttribute("ErrorMessageKey", errorMessageMap);
		MemberBean bean = loginService.checkIDPassword(mb.getAccount(), mb.getPassword());
		if (bean != null) {
			session.setAttribute("LoginOK", bean);
		}else {
			errorMessageMap.put("error", "帳號或密碼錯誤!");
		}
		return "redirect:"+ target;
	}



	@RequestMapping("/top")
	public String topTest(Model model) {
		model.addAttribute("MemberBean", new MemberBean());
		return "top";
	}
	
	
	
//	---------------------------------------------------------------------
	
	


}
