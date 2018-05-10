package com.iii._16_.ProductSale.ProductIntro.controller;

import java.sql.SQLException;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.iii._16_.BuyCart.ProCartList.model.ProCartListBean;
import com.iii._16_.ProductSale.Product.model.ProductSaleDao;
import com.iii._16_.ProductSale.Product.model.ProductSaleService;

@Controller
@RequestMapping("/searchProductIntro")
public class ProductIntroController {
	@Autowired
	private ProductSaleService productsaleservice;
	
	@ModelAttribute
	public void getCartListBean(Map<String, Object> map) {
		ProCartListBean cartlist = new ProCartListBean();
		map.put("ProCartListBean", cartlist);
	}
	
	@RequestMapping("/{ProductSeqNo}")
	public String searchProduct(@PathVariable("ProductSeqNo") int productSeqNo ,Map<String,Object> map) throws SQLException {
		
		map.put("productSaleBean", productsaleservice.getBySeqNo(productSeqNo));
		return "Product/productIntro";
	}
}
