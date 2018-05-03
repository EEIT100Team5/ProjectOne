package com.iii._01_.Member.controller;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.iii._01_.Member.bean.MemberBean;
import com.iii._01_.Member.service.LoginService;
import com.iii._01_.Member.service.RegisterService;

//@SessionAttributes("LoginOK")
@Controller
public class MemberController {
	@ModelAttribute("MemberBean")
	public MemberBean getMemberBean() {
		System.out.println("Member MemberBean here");
		return new MemberBean();
	}

	@Autowired
	RegisterService registerService;

	@Autowired
	LoginService loginService;

	@RequestMapping("/testTop")
	public String test(HttpServletRequest request) {
		return "testTop";

	}

	@RequestMapping("/testTop2")
	public String test2(HttpServletRequest request) {
		return "_01test/testTop";

	}

	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String target = (String) session.getAttribute("target");
		target = target.substring(target.lastIndexOf("/"));
		session.removeAttribute("LoginOK");
		session.removeAttribute("target");

		return "redirect:" + target;
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@ModelAttribute("MemberBean") MemberBean mb,BindingResult result, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String target = (String) session.getAttribute("target");
		target = target.substring(target.lastIndexOf("/"));
		Map<String, String> errorMessageMap = new HashMap<String, String>();
		session.setAttribute("ErrorMessageKey", errorMessageMap);
		MemberBean bean = loginService.checkIDPassword(mb.getAccount(), mb.getPassword());
		if (bean != null) {
			session.setAttribute("LoginOK", bean);
		} else {
			errorMessageMap.put("error", "帳號或密碼錯誤!");
		}
		return "redirect:" + target;
	}

	@RequestMapping("/top")
	public String topTest(Model model) {
		model.addAttribute("MemberBean", new MemberBean());
		return "top";
	}

	// ---------------------------------------------------------------------

//	@RequestMapping(value = "/register", method = RequestMethod.POST)
//	public String register(
//			@ModelAttribute("MemberBean") MemberBean mb,BindingResult result , HttpServletRequest request
//			) {
//
//		System.out.println("進入/register");
//
//		HttpSession session = request.getSession();
//		String target = (String) session.getAttribute("target");
//		target = target.substring(target.lastIndexOf("/"));
//
//		Map<String, String> registerErrorMessage = new HashMap<String, String>();
//		session.setAttribute("registerErrorMap", registerErrorMessage);
//
//		if (registerService.checkAccountDuplicate(mb.getAccount()) != true) {
//			try {
//				registerService.saveAccount(mb);
//			} catch (SQLException e) {
//				registerErrorMessage.put("SQL", e.getMessage());
//				return "redirect:" + target;
//			}
//			return "redirect:Register/registerSuccess";
//
//			// 有異常時
//		} else {
//
//			registerErrorMessage.put("Duplicate", "帳號重複");
//			return "redirect:" + target;
//		}
//	}

}
