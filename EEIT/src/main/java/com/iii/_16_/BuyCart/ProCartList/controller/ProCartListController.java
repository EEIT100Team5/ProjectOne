package com.iii._16_.BuyCart.ProCartList.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.iii._16_.BuyCart.ProCartList.model.ProCartListBean;


@Controller
public class ProCartListController {

	@ModelAttribute
	public void getCartBean(Map<String, Object> map) {
		ProCartListBean cartlist = new ProCartListBean();
		map.put("ProCartListBean", cartlist);
	}
}
