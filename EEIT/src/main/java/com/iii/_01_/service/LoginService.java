package com.iii._01_.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.iii._01_.bean.MemberBean;
import com.iii._01_.dao.MemberDAO;

public class LoginService {

	@Autowired
	MemberDAO dao;

	public MemberBean checkIDPassword(String account, String password) {

		// 透過變數dao，呼叫它的select()方法，要傳入參數 id。將傳回值放入變數
		// MemberBean mb 內。
		MemberBean mb = dao.selectMember(account);
		// 如果mb不等於 null 而且參數 password等於mb內的password) {
		if (mb != null && password.equals(mb.getPassword())) {
			// 傳回 mb物件，同時結束本方法
			return mb;
		}
		return null;
	}
}
