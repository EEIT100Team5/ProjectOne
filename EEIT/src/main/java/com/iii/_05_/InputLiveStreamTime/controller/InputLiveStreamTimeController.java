package com.iii._05_.InputLiveStreamTime.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.iii._01_.Member.bean.MemberBean;
import com.iii._05_.AuctionItemSelect.model.AuctionItemSelectBean;
import com.iii._05_.Bid.model.BidBean;
import com.iii._05_.InputLiveStreamTime.model.InputLiveStreamTimeBean;
import com.iii._05_.InputLiveStreamTime.model.InputLiveStreamTimeService;
import com.iii._19_.commentVideos.model.CommentVideosBean;
import com.iii._19_.videoManage.model.VideoBean;


@Controller
//@RequestMapping("InputLiveStreamTime")
public class InputLiveStreamTimeController {

	@Autowired 	
	InputLiveStreamTimeService InputLiveStreamTimeService;
	
	
	@RequestMapping("/LiveStream")
	public String getLiveStreamsBySeqNo(@RequestParam("LiveNo") Integer LiveNo,Model model) {
		
		
//		List<InputLiveStreamTimeBean> InputLiveStreamTimeBeanList =  InputLiveStreamTimeService.getLiveStreamsByStreamName(streamName);
		
		model.addAttribute("LiveStream", InputLiveStreamTimeService.getLiveStreamsBySeqNo(LiveNo));
		
		return "LiveStreamRoom/LiveStreamRoom";
	}

	@ModelAttribute("BidBean")
	public BidBean getBidBean() {
		System.out.println("BibBean here");
		return new BidBean();
	
	}
	@ModelAttribute("AuctionItemSelectBean")
	public AuctionItemSelectBean getAuctionItemSelectBean() {
		System.out.println("AuctionItemSelectBean here");
		return new AuctionItemSelectBean();
	
	}
	
	@RequestMapping(value="/LiveStreamHall",method=RequestMethod.GET)
	public String getAllLiveStreamList(Map<String, Object> map, HttpSession session) {
		List<InputLiveStreamTimeBean> AllLiveStreamList = InputLiveStreamTimeService.getAllLiveStreams();
		map.put("AllLiveStream", AllLiveStreamList);
		return "LiveStreamHall/LiveStreamHall";
	}
	
	
//	@RequestMapping(method = RequestMethod.GET)
//	public String getAllLiveStreams() {
//		List<InputLiveStreamTimeBean> InputLiveStreamTimeBeanList = InputLiveStreamTimeService.getAllLiveStreams();
//		return "OK";
//	}
	
//	@RequestMapping(value = "{account}",method = RequestMethod.GET)
//	public String getLiveStreamByAccount(String account) {
//		List<InputLiveStreamTimeBean> InputLiveStreamTimeBeanList =  InputLiveStreamTimeService.getLiveStreamByAccount(account);
//		return "OK";
//	}
	
	
}
