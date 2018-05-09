package com.iii._05_.InputLiveStreamTime.controller;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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

	@RequestMapping(value="/InsertLiveStream",method=RequestMethod.GET)
	public String getInsertAllLiveStreamList(Map<String, Object> map, HttpSession session) {
		List<InputLiveStreamTimeBean> AllLiveStreamList = InputLiveStreamTimeService.getAllLiveStreams();
		map.put("AllLiveStream", AllLiveStreamList);
		return "InsertLiveStream/InsertLiveStream";
	}
	
	@ModelAttribute("InputLiveStreamTimeBean")
	public InputLiveStreamTimeBean getInputLiveStreamTimeBean() {
		System.out.println("AuctionItemSelectBean here");
		return new InputLiveStreamTimeBean();
	
	}
	
	@RequestMapping(value = "/InsertLiveStream", method = RequestMethod.POST)
	public String InsertLiveStream(@ModelAttribute("InputLiveStreamTimeBean") InputLiveStreamTimeBean sb, BindingResult result,
			HttpServletRequest request)throws SQLException{

 
		HttpSession session = request.getSession();
		String target = (String) session.getAttribute("target");
		target = target.substring(target.lastIndexOf("/EEIT/") + 5);
		System.out.println("target="+target);
		

//		Map<String, String> BidErrorMessage = new HashMap<String, String>();
//		session.setAttribute("BidErrorMap", BidErrorMessage);
		
		MemberBean memberBean = (MemberBean)session.getAttribute("LoginOK");
		String account = memberBean.getAccount();
		
		MultipartFile photo = sb.getPhoto();
		String originalPhotoName = photo.getOriginalFilename();
		sb.setLiveCoverName(originalPhotoName);
		String extPhoto = originalPhotoName.substring(originalPhotoName.lastIndexOf("."));
		sb.setVideoSeqNo(1);
		sb.setLiveStatus(Integer.toString(1));
		sb.setAccount(account);
//		ab.setLiveStreamSeqNo(Integer.parseInt(target2));
		
		
		InputLiveStreamTimeService.saveLiveStreams(sb, extPhoto, photo);
		
		
		return "redirect:" + target;
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
