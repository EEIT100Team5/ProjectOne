package com.iii._01_.Member.controller;

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
import org.springframework.web.bind.annotation.SessionAttributes;

import com.iii._01_.Member.bean.MemberBean;
import com.iii._01_.Member.service.LoginService;

//@SessionAttributes("LoginOK")
@Controller
public class MemberController {
	@ModelAttribute("MemberBean")
	public MemberBean getMemberBean() {
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
	@RequestMapping("testTop")
	public String test(HttpServletRequest request) {
		return "testTop";
				
	}
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String target = (String) session.getAttribute("traget");
		session.removeAttribute("LoginOK");
		session.removeAttribute("target");
		
		return "redirect:/" + target;
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@ModelAttribute("MemberBean") MemberBean mb, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String target = (String) session.getAttribute("traget");
		Map<String, String> errorMessageMap = new HashMap<String, String>();
		model.addAttribute("ErrorMessageKey", errorMessageMap);
		MemberBean bean = loginService.checkIDPassword(mb.getAccount(), mb.getPassword());
		if (bean != null) {
			session.setAttribute("LoginOK", bean);
		}
		return "redirect:/"+ target;
	}



	@RequestMapping("/top")
	public String topTest(Model model) {
		model.addAttribute("MemberBean", new MemberBean());
		return "top";
	}

}
