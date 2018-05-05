package com.iii._01_.Member.controller;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.iii._01_.Member.bean.MemberBean;

@ControllerAdvice
public class MemberBeanController {

	@ModelAttribute("MemberBean")
	public MemberBean getMemberBean() {
		System.out.println("MemberBean here");
		return new MemberBean();
	
	}
	
}
