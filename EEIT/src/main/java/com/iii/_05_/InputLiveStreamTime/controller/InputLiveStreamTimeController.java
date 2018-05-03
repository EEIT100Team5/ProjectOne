package com.iii._05_.InputLiveStreamTime.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.iii._05_.InputLiveStreamTime.model.InputLiveStreamTimeBean;
import com.iii._05_.InputLiveStreamTime.model.InputLiveStreamTimeService;
import com.iii._19_.commentVideos.model.CommentVideosBean;


@Controller
@RequestMapping("InputLiveStreamTime")
public class InputLiveStreamTimeController {

	@Autowired 
	InputLiveStreamTimeService InputLiveStreamTimeService;
	
	
	@RequestMapping(value = "{streamName}", method = RequestMethod.GET)
	public String getLiveStreamsByStreamName(Integer streamName) {
		List<InputLiveStreamTimeBean> InputLiveStreamTimeBeanList =  InputLiveStreamTimeService.getLiveStreamsByStreamName(streamName);
		return "OK";
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public String getAllLiveStreams() {
		List<InputLiveStreamTimeBean> InputLiveStreamTimeBeanList = InputLiveStreamTimeService.getAllLiveStreams();
		return "OK";
	}
	
	@RequestMapping(value = "{account}",method = RequestMethod.GET)
	public String getCommentVideosByVideoAndAccount(String account) {
		List<InputLiveStreamTimeBean> InputLiveStreamTimeBeanList =  InputLiveStreamTimeService.getLiveStreamByAccount(account);
		return "OK";
	}
	
	
}
