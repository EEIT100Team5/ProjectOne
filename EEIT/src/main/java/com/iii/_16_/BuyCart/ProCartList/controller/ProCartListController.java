package com.iii._16_.BuyCart.ProCartList.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.iii._16_.BuyCart.ProCart.model.ProCartBean;

import com.iii._16_.BuyCart.ProCartList.model.ProCartListBean;
import com.iii._16_.BuyCart.ProCartList.model.ProCartListService;


@Controller
@RequestMapping("/addInCartList")
public class ProCartListController {

		
		@Autowired
		private ProCartListService procartlistservice;
		
		@ModelAttribute
		public void getCartListBean(Map<String, Object> map) {
			ProCartListBean cartlist = new ProCartListBean();
			map.put("ProCartListBean", cartlist);
		}
		
		@RequestMapping(value="/buy/{productid}",method = RequestMethod.POST)
		public String addThisOneInCart(@PathVariable("productid") Integer id,
				@ModelAttribute("ProCartBean") ProCartBean cartbean,Map<String,Object> map) {
			
			return "";
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
}
