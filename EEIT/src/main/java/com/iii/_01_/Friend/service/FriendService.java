package com.iii._01_.Friend.service;

import com.iii._01_.Friend.bean.FriendBean;

public interface FriendService {

	Integer getFriendStatus(String account1 ,String account2);
	
	void saveFriendRequest(FriendBean fb);
	
	void updateFriendRequest(FriendBean fb);
	
	FriendBean getFriendBeanByBothAccount(String account1 ,String account2);
}
