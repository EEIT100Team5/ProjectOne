package com.iii._01_.Friend.dao;

import com.iii._01_.Friend.bean.FriendBean;

public interface FriendDAO {

	public void saveFriendRequest(FriendBean fb);
	
	public void updateFriendRequest(FriendBean fb);
	
	public Integer getFriendStatus(String accountSend ,String accountTo);
	
	public void deleteFriendRequest(FriendBean fb);
	
}
