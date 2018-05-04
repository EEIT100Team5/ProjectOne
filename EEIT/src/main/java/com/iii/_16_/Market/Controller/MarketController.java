package com.iii._16_.Market.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MarketController {
	@RequestMapping("/marketindex")
	public String welcomeMarket() {
		return "marketIndex/Mindex";
		}
	
}
