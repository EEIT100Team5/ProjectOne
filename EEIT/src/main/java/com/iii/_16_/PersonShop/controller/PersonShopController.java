package com.iii._16_.PersonShop.controller;

import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.iii._01_.Member.bean.MemberBean;
import com.iii._16_.PersonShop.bean.PersonShopBean;
import com.iii._16_.PersonShop.service.PersonShopService;

@Controller
public class PersonShopController {
	@Autowired
	private PersonShopService PshopService;
	@Autowired
	ServletContext context;
	@ModelAttribute
	public void getShopBean(Map<String, Object> map) {
		PersonShopBean Pshopbean = new PersonShopBean();
		map.put("PersonShopBean", Pshopbean);
		System.out.println("here is shopbean");
	}
	
	@RequestMapping(value = "Pshop.do", method = RequestMethod.GET)
	public String getProductId(Map<String, Object> map, @ModelAttribute("MemberBean") MemberBean mb,
			@ModelAttribute("PersonShopBean") PersonShopBean psb, HttpSession session) {
		
		MemberBean bean = (MemberBean) session.getAttribute("LoginOK");
		System.out.println(bean);
		
		System.out.println("here is pshop.do");

		return "/PersonShop/addPShopForm";
		
	}

	
}
