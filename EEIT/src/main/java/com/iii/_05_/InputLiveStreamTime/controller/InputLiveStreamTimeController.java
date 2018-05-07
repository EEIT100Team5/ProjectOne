package com.iii._05_.InputLiveStreamTime.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.iii._05_.AuctionItemSelect.model.AuctionItemSelectBean;
import com.iii._05_.Bid.model.BidBean;
import com.iii._05_.InputLiveStreamTime.model.InputLiveStreamTimeBean;
import com.iii._05_.InputLiveStreamTime.model.InputLiveStreamTimeService;
import com.iii._19_.commentVideos.model.CommentVideosBean;


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
//	@RequestMapping(method = RequestMethod.GET)
//	public String getAllLiveStreams() {
//		List<InputLiveStreamTimeBean> InputLiveStreamTimeBeanList = InputLiveStreamTimeService.getAllLiveStreams();
//		return "OK";
//	}
//	
//	@RequestMapping(value = "{account}",method = RequestMethod.GET)
//	public String getLiveStreamByAccount(String account) {
//		List<InputLiveStreamTimeBean> InputLiveStreamTimeBeanList =  InputLiveStreamTimeService.getLiveStreamByAccount(account);
//		return "OK";
//	}
	
	
}
