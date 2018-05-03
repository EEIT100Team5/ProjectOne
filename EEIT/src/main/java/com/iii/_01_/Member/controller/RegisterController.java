package com.iii._01_.Member.controller;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.iii._01_.Member.bean.MemberBean;

@MultipartConfig(location = "", 
fileSizeThreshold = 5*1024 * 1024, 
maxFileSize = 1024 * 1024 * 500, 
maxRequestSize = 1024 * 1024 * 500 * 5)
@Controller
public class RegisterController {

	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String register(@ModelAttribute("MemberBean") MemberBean mb, Model model, HttpServletRequest request) {
		

		
		return "redirect:/top";
	}
	
	
}
