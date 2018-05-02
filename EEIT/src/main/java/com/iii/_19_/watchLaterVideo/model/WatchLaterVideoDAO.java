package com.iii._19_.watchLaterVideo.model;

import java.util.List;

public interface WatchLaterVideoDAO {
	public int saveWatchLaterVideo(WatchLaterVideoBean watchLaterVideoBean);

	public void updateWatchLaterVideo(WatchLaterVideoBean watchLaterVideoBean);

	public void deleteWatchLaterVideo(WatchLaterVideoBean watchLaterVideoBean);

	public WatchLaterVideoBean getWatchLaterVideo(String account, Integer videoSeqNo);

	public List<WatchLaterVideoBean> getWatchLaterVideoByAccount(String account);

	public List<WatchLaterVideoBean> getAllWatchLaterVideo();
	
	public WatchLaterVideoBean getWatchLaterVideoBySeqNo(Integer watchLaterVideoSeqNo);
}
