package com.iii._09_.controller;

import java.sql.Date;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.iii._09_.bean.productBean;
import com.iii._09_Service.productService;

@Controller
public class productController {
	
	@Autowired
	private productService proService;
	
	
	@ModelAttribute
	public void addProductBean(Map<String,Object> map) {
		map.put("productBean", new productBean());
	}
	
	
	@RequestMapping(value = "/uploadproduct" ,method = RequestMethod.GET)
	public String getProductId(Map<String,Object> map,HttpSession session) {
		
//		productBean bean = (productBean) session.getAttribute("");
		
//		MemberBean bean = (MemberBean) session.getAttribute("LoginOK");
//		System.out.println(bean);
		System.out.println("aaaaaa");
//		map.put("productBean", new productBean());
		
		return "Product/InsertProductSimple";
	}
	
	@RequestMapping(value = "/insertProduct",method = RequestMethod.POST)
	public String insertProduct(@ModelAttribute("productBean") productBean pro,HttpSession session) {
		
//		productBean bean = (productBean) session.getAttribute("");
		
//		MemberBean bean = (MemberBean) session.getAttribute("LoginOK");
//		System.out.println(bean);
//		proService.insert(pro);
//		
		
		System.out.println(pro);
		System.out.println("aaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
		return "Product/InsertProductSimple";
	}
	


}