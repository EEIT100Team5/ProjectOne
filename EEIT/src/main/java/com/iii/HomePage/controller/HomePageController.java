package com.iii.HomePage.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.iii.HomePage.model.HomePageService;

@Controller
public class HomePageController {

	@Autowired
	HomePageService homePageService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Map<String, Object> map) {
		map.put("hotVideos", homePageService.getHotVideos());
		map.put("newVideos", homePageService.getNewVideos());
		map.put("sortedVideos", homePageService.getSortedVideos());
		return "index";
	}

}
