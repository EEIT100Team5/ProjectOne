package com.iii._01_.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.iii._01_.bean.MemberBean;

//@SessionAttributes("LoginOK")
@Controller
public class MemberController {
	

	
//	@RequestMapping(value="/login.do" , method=RequestMethod.POST)
//	public String login(@ModelAttribute("MemberBean") MemberBean mb ) {
//		
//		
//		return "";
//	}
	
	@RequestMapping(value = "/login.do" , method=RequestMethod.POST)
	public String login() {
		
		return "top";
	}
	
	@RequestMapping("/top")
	public String topTest(Model model) {
		model.addAttribute("MemberBean", new MemberBean());
		return "top";
	}
	
	
	
}
