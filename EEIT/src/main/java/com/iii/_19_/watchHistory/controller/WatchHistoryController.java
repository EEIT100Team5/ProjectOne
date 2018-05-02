package com.iii._19_.watchHistory.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.iii._19_.videoManage.model.VideoBean;
import com.iii._19_.watchHistory.model.WatchHistoryBean;
import com.iii._19_.watchHistory.model.WatchHistoryService;

@Controller
@RequestMapping("watchHistory")
public class WatchHistoryController {
	
	@Autowired
	WatchHistoryService watchHistoryService;
	
	@RequestMapping(value = "{account}", method=RequestMethod.GET)
	public String getUserWatchHistory(@PathVariable("account") String account, Map<String, Object> map) {
		List<VideoBean> watchHistoryVideoBeanList =  watchHistoryService.getAccountWatchHistory(account);
		map.put("watchHistory", watchHistoryVideoBeanList);
		return "watchHistory/watchHistory";
	}
	
	@RequestMapping(value="{account}/{videoSeqNo}", method=RequestMethod.GET)
	public String getWatchHistory(@PathVariable("account") String account, @PathVariable("videoSeqNo") Integer videoSeqNo) {
		List<WatchHistoryBean> watchHistoryBeanList = watchHistoryService.getWatchHistory(account,videoSeqNo);
		return "OK";
	}
	
//	@RequestMapping(value = "{account}" , method=RequestMethod.GET)
	public String getAllWatchHistory(@PathVariable("account") String account) {
		List<WatchHistoryBean> watchHistoryList= watchHistoryService.getAllWatchHistory(account);
		return "OK";
	}
	
	@RequestMapping(method = RequestMethod.PUT)
	public String updateWatchHistory(@ModelAttribute WatchHistoryBean watchHistoryBean) {
		watchHistoryService.updateWatchHistory(watchHistoryBean);
		return "OK";
	}
	
	@RequestMapping(value = "{watchHistorySeqNo}" ,method = RequestMethod.DELETE)
	public String deleteWatchHistory(@PathVariable Integer watchHistorySeqNo) {
		WatchHistoryBean watchHistoryBean = watchHistoryService.getWatchHistoryBySeqNo(watchHistorySeqNo);
		
		
		watchHistoryService.deleteWatchHistory(watchHistoryBean);
		return "OK";
	}
}
