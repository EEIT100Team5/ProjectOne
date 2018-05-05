package com.iii._19_.watchLaterVideo.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.iii._01_.Member.bean.MemberBean;
import com.iii._19_.videoManage.model.VideoBean;
import com.iii._19_.watchLaterVideo.model.WatchLaterVideoBean;
import com.iii._19_.watchLaterVideo.model.WatchLaterVideoService;

@Controller
@RequestMapping("watchLaterVideo")
public class WatchLaterVideoController {

	@Autowired
	private WatchLaterVideoService watchLaterVideoService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String getWatchLaterVideoByAccount(HttpSession session, Map<String, Object> map) {
		MemberBean memberBean = (MemberBean)session.getAttribute("LoginOK");
		String account = memberBean.getAccount();
		List<VideoBean> watchLaterVideo =  watchLaterVideoService.getWatchLaterVideoByAccount(account);
		map.put("watchLaterVideo", watchLaterVideo);
		return "watchLaterVideo/watchLaterVideo";
	}
	
	@RequestMapping(value = "{account}/{videoSeqNo}",method = RequestMethod.GET)
	public String getWatchLaterVideo(@PathVariable("account") String account, @PathVariable("videoSeqNo") Integer videoSeqNo) {
		WatchLaterVideoBean WatchLaterVideoBeanList = watchLaterVideoService.getWatchLaterVideo(account, videoSeqNo);
		return "OK";
	}
	
//	@RequestMapping(method = RequestMethod.GET)
	public String getAllWatchLaterVideo() {
		List<WatchLaterVideoBean> watchLaterVideoBeanList = watchLaterVideoService.getAllWatchLaterVideo();
		return  "OK";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String saveWatchLaterVideo(@ModelAttribute WatchLaterVideoBean watchLaterVideoBean) {
		int key = watchLaterVideoService.saveWatchLaterVideo(watchLaterVideoBean);
		return "OK";
	}
	
	@RequestMapping(method = RequestMethod.PUT)
	public String updateWatchLaterVideo(@ModelAttribute WatchLaterVideoBean watchLaterVideoBean) {
		watchLaterVideoService.updateWatchLaterVideo(watchLaterVideoBean);
		return "OK";
	}
	
	@RequestMapping(value = "{watchLaterVideoSeqNo}" , method = RequestMethod.DELETE)
	public String deleteWatchLaterVideo(@PathVariable Integer watchLaterVideoSeqNo) {
		WatchLaterVideoBean watchLaterVideoBean = watchLaterVideoService.getWatchLaterVideoBySeqNo(watchLaterVideoSeqNo);
		watchLaterVideoService.deleteWatchLaterVideo(watchLaterVideoBean);
		
		return "OK";
	}
}
