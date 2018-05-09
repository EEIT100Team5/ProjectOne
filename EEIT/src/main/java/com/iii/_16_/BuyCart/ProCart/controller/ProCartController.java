package com.iii._16_.BuyCart.ProCart.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.iii._16_.BuyCart.ProCart.model.ProCartBean;
import com.iii._16_.BuyCart.ProCart.model.ProCartService;


@Controller
@RequestMapping("")
public class ProCartController {
	
	@Autowired
	private ProCartService procartservice;
	

	@ModelAttribute
	public void getCartBean(Map<String, Object> map) {
		ProCartBean cartbean = new ProCartBean();
		map.put("ProCartBean", cartbean);
	}
	
//	@RequestMapping(value="/buy/{productid}",method = RequestMethod.POST)
//	public String addThisOneInCart(@PathVariable("productid") Integer id,
//			@ModelAttribute("ProCartBean") ProCartBean cartbean,Map<String,Object> map) {
//		
//		return "";
//	}
}
