package com.iii._01_.Member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.iii._01_.Member.bean.MemberBean;
import com.iii._01_.Member.dao.MemberDAO;

@Service
public class UpdateServiceImpl implements UpdateService {

	@Autowired
	MemberDAO dao;
	
	@Override
	@Transactional
	public MemberBean getMemberBeanFromDB(String account) {
		MemberBean mb = dao.selectMember(account);
		return mb;
	}
	
	
}
