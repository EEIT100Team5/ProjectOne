package com.iii._16_.ProductSale.Product.controller;

import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.iii._01_.Member.bean.MemberBean;
import com.iii._16_.FAQ.bean.MemberFAQBean;
import com.iii._16_.ProductSale.Product.model.ProductSaleBean;
import com.iii._16_.ProductSale.Product.model.ProductSaleService;




@Controller
public class ProductSaleController {
	@Autowired
	private ProductSaleService service;
	@Autowired
	ServletContext context;
	@RequestMapping(value = "Sale.do", method = RequestMethod.GET)
	public String createProduct(Map<String, Object> map, @ModelAttribute("MemberBean") MemberBean mb,
			@ModelAttribute("ProductSaleBean") ProductSaleBean psb, HttpSession session) {
		// MemberFAQBean bb = new MemberFAQBean();
		// model.addAttribute("memberFAQBean", bb);
		MemberBean bean = (MemberBean) session.getAttribute("LoginOK");
		System.out.println(bean);
		System.out.println(psb);
		System.out.println("here is contact");

		return "ProductSaleForm";
	}

	@ModelAttribute
	public void getFormBean(Map<String, Object> map) {
		ProductSaleBean psbbean = new ProductSaleBean();
		map.put("ProductSaleBean", psbbean);
		System.out.println("here is salebean");
	}
	
	@RequestMapping(value = "/ProductSaleForm", method = RequestMethod.POST)
	public String ProductFormComing(@ModelAttribute("ProductSaleBean") ProductSaleBean psb, BindingResult result,
			HttpServletRequest request) {
		Timestamp ts = new java.sql.Timestamp(System.currentTimeMillis());
		psb.setProDate(ts);
		try {
			service.insert(psb);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "success";
	}
}
