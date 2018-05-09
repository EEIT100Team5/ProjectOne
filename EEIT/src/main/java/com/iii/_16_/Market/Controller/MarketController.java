package com.iii._16_.Market.Controller;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.iii._01_.Member.bean.MemberBean;
import com.iii._09_.addproduct.model.ProductBean;
import com.iii._16_.PersonShop.bean.PersonShopBean;
import com.iii._16_.ProductSale.Product.model.ProductSaleBean;
import com.iii._16_.ProductSale.Product.model.ProductSaleService;

@Controller
public class MarketController {
	@Autowired
	private ProductSaleService productservice;

	@RequestMapping("/marketindex")
	public String welcomeMarket(Map<String, Object> map) {
		// map.put("productBean", new productBean());
		return "marketIndex/Mindex";
	}

	@RequestMapping("/gethot")
	public String getProducthot() {

		return "marketIndex/ProductHot";
	}

	@RequestMapping(value = "/goMarketHomePage", method = RequestMethod.GET)
	public String goPersonHomePage(Map<String, Object> map) throws SQLException {
		List<ProductSaleBean> productlist = productservice.selectAllProduct();
		map.put("productbeans", productlist);
		return "marketIndex/Mindex";
	}
//	@RequestMapping("/testmarket")
//	public String  go() {
//		return "Product/Test";
//	}
	@RequestMapping("/testmarket")
	public String  go() {
		return "uploaderHomePage/uploaderHomePage";
	}
	
}
