package com.iii._01_.Member.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.iii._01_.Member.bean.MemberBean;

@Controller
@RequestMapping("MemberCenter")
public class UpdateController {

	@RequestMapping(value = "/memberUpdate" , method = RequestMethod.GET)
	public String getMemberUpdate() {
		return "MemberCenter/memberUpdate";
	}
	
	@RequestMapping(value = "/memberUpdate" , method = RequestMethod.POST)
	public String addMemberUpdate(@ModelAttribute("MemberBean") MemberBean mb ,BindingResult result ,HttpServletRequest request) {
			
		
		
		
		return "redirect:MemberCenter/memberUpdate";
	}
	
}
