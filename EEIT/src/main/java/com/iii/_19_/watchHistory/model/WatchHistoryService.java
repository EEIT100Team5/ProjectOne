package com.iii._19_.watchHistory.model;

import java.util.List;

import com.iii._19_.videoManage.model.VideoBean;

public interface WatchHistoryService {
	public int saveWatchHistory(WatchHistoryBean watchHistoryBean) ;
	
	public List<VideoBean> getAccountWatchHistory(String account);
}
