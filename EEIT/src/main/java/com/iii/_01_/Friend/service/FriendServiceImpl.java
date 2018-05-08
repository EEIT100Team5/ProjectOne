package com.iii._01_.Friend.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.iii._01_.Friend.bean.FriendBean;
import com.iii._01_.Friend.dao.FriendDAO;

@Service
@Transactional
public class FriendServiceImpl implements FriendService {

	@Autowired
	FriendDAO dao;
	
	
	
	@Override
	public Integer getFriendStatus(String account1, String account2) {
		
			Integer result1 = dao.getFriendStatus(account1, account2);
			Integer result2 = dao.getFriendStatus(account2, account1);
			
			if(result1.equals(1) || result2.equals(2)) {
				return 1 ;
			}else {
				return 0 ;
			}
			
	}



	@Override
	public void saveFriendRequest(FriendBean fb) {
		dao.saveFriendRequest(fb);
	}



	@Override
	public void updateFriendRequest(FriendBean fb) {
		dao.updateFriendRequest(fb);
	}



	@Override
	public FriendBean getFriendBeanByBothAccount(String account1, String account2) {
		
		return null;
	}

	
	
	
}
