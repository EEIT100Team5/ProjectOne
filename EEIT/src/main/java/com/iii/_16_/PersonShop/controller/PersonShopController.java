package com.iii._16_.PersonShop.controller;

import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.iii._01_.Member.bean.MemberBean;
import com.iii._16_.FAQ.bean.MemberFAQBean;
import com.iii._16_.PersonShop.bean.PersonShopBean;
import com.iii._16_.PersonShop.service.PersonShopService;

@Controller
public class PersonShopController {
	@Autowired
	private PersonShopService PshopService;
	@Autowired
	ServletContext context;
	@ModelAttribute
	public void getShopBean(Map<String, Object> map) {
		PersonShopBean Pshopbean = new PersonShopBean();
		map.put("PersonShopBean", Pshopbean);
		System.out.println("here is shopbean");
	}
	
	@RequestMapping(value = "Pshop.do", method = RequestMethod.GET)
	public String getProductId(Map<String, Object> map, @ModelAttribute("MemberBean") MemberBean mb,
			@ModelAttribute("PersonShopBean") PersonShopBean psb, HttpSession session) {
		MemberBean bean = (MemberBean) session.getAttribute("LoginOK");
		System.out.println(bean);	
		System.out.println("here is pshop.do");
		return "/PersonShop/addPShopForm";
		
	}
	
	@RequestMapping(value = "/addPersonShop", method = RequestMethod.POST)
	public String addQues(@ModelAttribute("PersonShopBean") PersonShopBean psb, BindingResult result,
			HttpServletRequest request) {
		 String[] suppressedFields = result.getSuppressedFields();
		 if (suppressedFields.length > 0) {
		 System.out.println("嘗試輸入不允許的欄位");
		 throw new RuntimeException("嘗試輸入不允許的欄位: " +
		 StringUtils.arrayToCommaDelimitedString(suppressedFields));
		 }

//		imestamp ts = new java.sql.Timestamp(System.currentTimeMillis());
//		mb.setMemQuesTime(ts);

		// 得到一個multipart文件 並取出檔名(originalFilename)
		// 副檔名(extImage)
		MultipartFile quesImage = psb.getPersonShopFile();
		String originalFilename = quesImage.getOriginalFilename();
		psb.setPersonShopCoverFileName(originalFilename);

		// 取出影片封面圖片副檔名
		String extImage = originalFilename.substring(originalFilename.lastIndexOf("."));
		PersonShopBean psb2 = PshopService.saveImage(psb, extImage, quesImage);
		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
		System.out.println(psb);
		try {
			PshopService.insert(psb);
			request.setAttribute("hereisurshop", psb);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "uploaderHomePage/uploaderHomePage";
		
	}
}
