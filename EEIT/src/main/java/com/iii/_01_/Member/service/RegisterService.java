package com.iii._01_.Member.service;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.iii._01_.Member.bean.MemberBean;
import com.iii._01_.Member.dao.MemberDAO;

@Service
@Transactional
public class RegisterService {

	@Autowired
	MemberDAO dao;
	
	//檢查account重複
	@Transactional
	public Boolean checkAccountDuplicate(String account) {
		Boolean result = true;
		if(dao.selectMember(account) != null ) {
			result = false;
		};
		return result;
	}
	@Transactional
	public void saveAccount(MemberBean bean) throws SQLException {
		dao.insertMember(bean);
	}
	
	
}
