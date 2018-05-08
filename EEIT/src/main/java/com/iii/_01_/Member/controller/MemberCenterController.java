package com.iii._01_.Member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.iii._01_.Member.bean.MemberBean;
import com.iii._01_.Member.service.MemberCenterService;

@Controller
public class MemberCenterController {

	@Autowired
	MemberCenterService memberCenterService;
	
	
	@RequestMapping("/MemberCenter")
	public String memberCenter() {
		return "MemberCenter/MemberCenter";
	}
	
	@RequestMapping("/profile/{account}")
	public String profile(@PathVariable("account")String account , Model model) {
		
		MemberBean bean = memberCenterService.getProfile(account);
		
		model.addAttribute("otherside", bean);		
		
		return "MemberCenter/profile";
	}
	

	
}
