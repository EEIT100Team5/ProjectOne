package com.iii._01_.Member.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.iii._01_.Member.bean.MemberBean;
import com.iii._01_.Member.dao.MemberDAO;
import com.iii._01_.Member.service.UpdateService;

@Controller
public class UpdateController {

	@Autowired
	MemberDAO dao;
	
	@Autowired
	UpdateService updateService;
	
//	@ModelAttribute
//	public void getMember(@RequestParam(value = "account" , required=false) String account , Map<String , MemberBean> map) {
//		if(account !=null) {
//		map.put("Member", dao.selectMember(account));
//		}
//	}
	
	@RequestMapping(value = "/MemberCenter/memberUpdate" , method = RequestMethod.GET)
	public String getMemberUpdate(HttpSession session , Map<String , MemberBean> map) {
		MemberBean originalBean =  (MemberBean) session.getAttribute("LoginOK");
		 originalBean = updateService.getMemberBeanFromDB(originalBean.getAccount());
		System.out.println("這裡是/memberUpdate \n" + "originalBean :" + originalBean);
		
		map.put("MemberBean", originalBean);
		
		return "MemberCenter/memberUpdate";
	}
	
	@RequestMapping(value = "/MemberCenter/memberUpdate" , method = RequestMethod.POST)
	public String addMemberUpdate(@ModelAttribute("MemberBean") MemberBean mb ,BindingResult result ,HttpServletRequest request) {
			System.out.println("修改:" + mb);
		
		
		
		return "redirect:/MemberCenter";
	}
	
}
