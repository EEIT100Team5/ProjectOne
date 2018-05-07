package com.iii._05_.AuctionItemSelect.controller;

import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.iii._01_.Member.bean.MemberBean;
import com.iii._05_.AuctionItemSelect.model.AuctionItemSelectBean;
import com.iii._05_.AuctionItemSelect.model.AuctionItemSelectService;
import com.iii._05_.Bid.model.BidBean;
import com.iii._05_.InputLiveStreamTime.model.InputLiveStreamTimeBean;
import com.iii._05_.InputLiveStreamTime.model.InputLiveStreamTimeService;

@Controller
public class AuctionItemSelectController {
	@Autowired
	AuctionItemSelectService auctionItemSelectService;
	

	
	@RequestMapping(value = "/Auction", method = RequestMethod.POST)
	public String Auction(@ModelAttribute("AuctionItemSelectBean") AuctionItemSelectBean ab, BindingResult result,
			HttpServletRequest request)throws SQLException{

 
		HttpSession session = request.getSession();
		String target = (String) session.getAttribute("target");
		target = target.substring(target.lastIndexOf("/EEIT/") + 5);
		System.out.println("target="+target);
		

//		Map<String, String> BidErrorMessage = new HashMap<String, String>();
//		session.setAttribute("BidErrorMap", BidErrorMessage);
		
		MemberBean memberBean = (MemberBean)session.getAttribute("LoginOK");
		String account = memberBean.getAccount();
		
		ab.setAccount(account);
//		ab.setLiveStreamSeqNo(Integer.parseInt(target2));
		
		
		auctionItemSelectService.saveAuction(ab);
		
		
		return "redirect:" + target;
	}
}
