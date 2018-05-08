package com.iii._01_.Backstage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Backstage")
public class BackstageController {

	@RequestMapping("")
	public String backstage() {
		
		return "Backstage/Backstage";
	}
	
	
}
