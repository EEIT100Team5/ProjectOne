package com.iii._16_.Product.controller;

import java.sql.SQLException;
import java.util.Map;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.iii._16_.Product.bean.ProductBean;
import com.iii._16_.Product.service.ProductService;





@Controller
public class Productcontroller {
	@Autowired
	private ProductService productservice;
	@Autowired
	ServletContext context;

	
	@ModelAttribute
	public void getProduct(Map<String,Object> map) {
		ProductBean productbean = new ProductBean();
		map.put("ProductBean", productbean);
	}
	
	@RequestMapping(value="/productupload" ,method=RequestMethod.GET)
	public String productUpload() {
	return "Product/InsertProductSimple";	
	}
	
	@RequestMapping("/marketindex")
	public String getMarketIndex() {
	

	return "marketIndex/Mindex";	
	}
	
	@RequestMapping(value = "/insertproduct", method = RequestMethod.GET)
	public String getProductId(Model model) {
		ProductBean bb = new ProductBean();
		model.addAttribute("ProductBean", bb);
		System.out.println("here is contact");
		return "_16_/customerreport/contact";
		
	}
}
