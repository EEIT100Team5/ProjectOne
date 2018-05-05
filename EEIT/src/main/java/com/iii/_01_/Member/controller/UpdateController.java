package com.iii._01_.Member.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.iii._01_.Member.bean.MemberBean;
import com.iii._01_.Member.dao.MemberDAO;

@Controller
@RequestMapping("MemberCenter")
public class UpdateController {

	@Autowired
	MemberDAO dao ;
	
//	@ModelAttribute
//	public void getMember(@RequestParam(value = "account" , required=false) String account , Map<String , MemberBean> map) {
//		if(account !=null) {
//		map.put("Member", dao.selectMember(account));
//		}
//	}
	 
	@RequestMapping(value = "/memberUpdate" , method = RequestMethod.GET)
	public String getMemberUpdate(@RequestParam(value = "account" , required=false) String account , Map<String , MemberBean> map) {
		if(account !=null) {
		map.put("Member", dao.selectMember(account));
		System.out.println("這裡是/memberUpdate");
		}
		return "MemberCenter/memberUpdate";
	}
	
	@RequestMapping(value = "/memberUpdate" , method = RequestMethod.POST)
	public String addMemberUpdate(@ModelAttribute("MemberBean") MemberBean mb ,BindingResult result ,HttpServletRequest request) {
			
		
		
		
		return "redirect:memberUpdate";
	}
	
}
