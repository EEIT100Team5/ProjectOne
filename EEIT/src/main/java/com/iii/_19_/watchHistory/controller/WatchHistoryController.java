package com.iii._19_.watchHistory.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.iii._19_.videoManage.model.VideoBean;
import com.iii._19_.watchHistory.model.WatchHistoryService;

@Controller
@RequestMapping("watchHistory")
public class WatchHistoryController {
	
	@Autowired
	WatchHistoryService watchHistoryService;
	
	@RequestMapping(value = "{account}", method=RequestMethod.GET)
	public String getWatchHistory(@PathVariable("account") String account, Map<String, Object> map) {
		List<VideoBean> watchHistoryVideoBeanList =  watchHistoryService.getAccountWatchHistory(account);
		map.put("watchHistory", watchHistoryVideoBeanList);
		return "watchHistory/watchHistory";
	}
}
