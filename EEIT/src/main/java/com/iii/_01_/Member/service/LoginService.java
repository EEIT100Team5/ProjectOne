package com.iii._01_.Member.service;

import org.springframework.transaction.annotation.Transactional;

import com.iii._01_.Member.bean.MemberBean;

public interface LoginService {

	MemberBean checkIDPassword(String account, String password);

}