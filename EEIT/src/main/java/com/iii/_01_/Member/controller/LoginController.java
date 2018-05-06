package com.iii._01_.Member.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.iii._01_.Member.bean.MemberBean;
import com.iii._01_.Member.service.LoginService;

//@SessionAttributes("LoginOK")
@Controller
public class LoginController {

	@Autowired
	LoginService loginService;

	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String target = (String) session.getAttribute("target");
		target = target.substring(target.lastIndexOf("/EEIT/") + 5);
		session.removeAttribute("LoginOK");
		session.removeAttribute("target");
		session.removeAttribute("UpdateOK");

		return "redirect:" + target;
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@ModelAttribute("MemberBean") MemberBean mb, BindingResult result, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String target = (String) session.getAttribute("target");
		target = target.substring(target.lastIndexOf("/EEIT/") + 5);
		Map<String, String> errorMessageMap = new HashMap<String, String>();
		session.setAttribute("ErrorMessageKey", errorMessageMap);
		MemberBean bean = loginService.checkIDPassword(mb.getAccount(), mb.getPassword());
		if (bean != null) {
			session.setAttribute("LoginOK", bean);
		} else {
			errorMessageMap.put("error", "帳號或密碼錯誤!");
		}
		return "redirect:" + target;
	}

	@RequestMapping(value = "MemberCenter/forgotPassword" ,method=RequestMethod.GET)
	public String forgotPassword() {
		return "/MemberCenter/forgotPassword";
	}

	@RequestMapping(value = "MemberCenter/forgotPassword" , method=RequestMethod.POST)
	public String resetPassword(@RequestParam("email")String email, Model model) {
		
		
		
		
		//寄送含有帳號 ,新密碼的email到信箱中
		
		
		
		model.addAttribute("message", "新的密碼已經寄送到您的email內，登入後請盡速修改");
		
		return "/MemberCenter/sendNewPassword";
	}
	

}
