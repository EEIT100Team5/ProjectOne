package com.iii._01_.Member.controller;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.iii._01_.Member.bean.MemberBean;
import com.iii._01_.Member.dao.MemberDAO;
import com.iii._01_.Member.service.UpdateService;

@Controller
public class UpdateController {

	@Autowired
	MemberDAO dao;
	
	@Autowired
	UpdateService updateService;
	
//	@ModelAttribute
//	public void getMember(@RequestParam(value = "account" , required=false) String account , Map<String , MemberBean> map) {
//		if(account !=null) {
//		map.put("Member", dao.selectMember(account));
//		}
//	}
	
	@ModelAttribute("updateMemberBean")
	public MemberBean getMemberBean(HttpSession session) {
		System.out.println("updateMemberBean here");
		MemberBean originalBean =  (MemberBean) session.getAttribute("LoginOK");
		 originalBean = updateService.getMemberBeanFromDB(originalBean.getAccount());
		return originalBean;
	
	}
	
	
	@RequestMapping(value = "/MemberCenter/memberUpdate" , method = RequestMethod.GET)
	public String getMemberUpdate(HttpSession session , Map<String , MemberBean> map) {
		MemberBean originalBean =  (MemberBean) session.getAttribute("LoginOK");
		 originalBean = updateService.getMemberBeanFromDB(originalBean.getAccount());
		System.out.println("這裡是/memberUpdate \n" + "originalBean :" + originalBean);
		
		map.put("updateMemberBean", originalBean);
		
		return "MemberCenter/memberUpdate";
	}
	
	@RequestMapping(value = "/MemberCenter/memberUpdate" , method = RequestMethod.POST)
	public String addMemberUpdate(@ModelAttribute("updateMemberBean") MemberBean mb ,BindingResult result ,HttpSession session ) throws SQLException {
			System.out.println("修改:" + mb);
		
			Map<String, String> updateErrorMessage = new HashMap<String, String>();
			session.setAttribute("updateErrorMap", updateErrorMessage);
			
			MultipartFile photo = mb.getPhoto();
			String originalPhotoName = photo.getOriginalFilename();
			mb.setPhotoName(originalPhotoName);
			String extPhoto = originalPhotoName.substring(originalPhotoName.lastIndexOf("."));
		
			updateService.updateMember(mb, extPhoto, photo);
			session.setAttribute("updateOK", "資料更新完成!");
		return "redirect:/MemberCenter";
	}
	
}
