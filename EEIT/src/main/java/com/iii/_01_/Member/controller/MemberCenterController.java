package com.iii._01_.Member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberCenterController {

	@RequestMapping("/MemberCenter")
	public String memberCenter() {
		return "MemberCenter/MemberCenter";
	}
	
}
