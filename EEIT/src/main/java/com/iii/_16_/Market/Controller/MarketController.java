package com.iii._16_.Market.Controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.iii._09_.bean.productBean;

@Controller
public class MarketController {
	@RequestMapping("/marketindex")
	public String welcomeMarket(Map<String, Object> map) {
//		map.put("productBean", new productBean());
		return "marketIndex/Mindex";
	}

}