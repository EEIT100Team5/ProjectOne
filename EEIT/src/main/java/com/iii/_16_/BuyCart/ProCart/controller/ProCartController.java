package com.iii._16_.BuyCart.ProCart.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.iii._16_.BuyCart.ProCart.model.ProCartBean;
import com.iii._16_.BuyCart.ProCart.model.ProCartService;



@Controller
public class ProCartController {
	
	@Autowired
	private ProCartService procartservice;
	

	@ModelAttribute
	public void getCartBean(Map<String, Object> map) {
		ProCartBean cartbean = new ProCartBean();
		map.put("ProCartBean", cartbean);
	}
}
