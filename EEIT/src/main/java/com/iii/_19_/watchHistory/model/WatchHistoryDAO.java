package com.iii._19_.watchHistory.model;

import java.util.List;

public interface WatchHistoryDAO {
	public int saveWatchHistory(WatchHistoryBean watchHistoryBean) ;
	
	public List<Integer> getAccountWatchHistory(String account);
}
