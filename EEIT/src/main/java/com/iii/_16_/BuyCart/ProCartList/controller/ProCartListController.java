package com.iii._16_.BuyCart.ProCartList.controller;

import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.iii._01_.Member.bean.MemberBean;
import com.iii._16_.BuyCart.ProCart.model.ProCartBean;

import com.iii._16_.BuyCart.ProCartList.model.ProCartListBean;
import com.iii._16_.BuyCart.ProCartList.model.ProCartListService;
import com.iii._16_.ProductSale.Product.model.ProductSaleBean;
import com.iii._16_.ProductSale.Product.model.ProductSaleService;

@Controller
@RequestMapping("/CartList")
public class ProCartListController {
	@Autowired
	private ProCartListService procartlistservice;
	@Autowired
	private ProductSaleService productsaleservice;


	//點選購物車按鈕，送回使用者帳號 來搜尋 購物車清單中 含有當前使用的購物明細
	@RequestMapping(value = "/getCart/{account}", method = RequestMethod.GET)
	public String getCart(@PathVariable("account") String id, @ModelAttribute("MemberBean") MemberBean mb,
			Map<String, Object> map, HttpSession session) throws SQLException {
			//此方法回傳使用者帳號account  Ex.bob放入購物車的物品
		
			//先將使用者帳號傳回購物車service方法  用帳號找出所有購物明細		
			List<ProCartListBean> list = procartlistservice.getByAccount(id);
			//將明細放入Map物件中 由jsp el撈出資料
			map.put("cartlist", list);
			
			
			
			List<ProductSaleBean> list2 = new ArrayList<>();			
			try {
			System.out.println("從購物車中撈出bob的購買資訊 = "+ list);
			map.put("cartlist", list);
			for (ProCartListBean product : list) {
				ProductSaleBean productbean = productsaleservice.getBySeqNo(product.getProductSeqNo());
				list2.add(productbean);
				System.out.println("從購物車中撈出bob的購買資訊 用產品pk找到產品資訊的Bean  bean== "+product);
			}			
			map.put("productlist",list2);
			System.out.println("找到的bean再存入list 物件中  === "+ list2);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "Cart/CartproductList";
	}
	
	@RequestMapping(value = "/getCart", method = RequestMethod.GET)
	public String noCart() {

		return "pleaselogin";
	}

}
