package com.iii._01_.Manager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.iii._01_.Manager.bean.ManagerBean;

@Controller
public class ManagerController {

	@RequestMapping(value = "/managerLogin" , method = RequestMethod.GET)
	public String getManagerLogin(Model model) {
		
		model.addAttribute(new ManagerBean());
		
		return "managerLogin";
	}
	
	@RequestMapping(value = "managerLogin" , method = RequestMethod.POST)
	public String addManagerLogin(@ModelAttribute("ManagerBean")ManagerBean mb ) {
		
		
		
		
		
		
		return "Backstage/Backstage";
	}
	
	
}
