package com.iii._19_.watchHistory.model;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iii._19_.videoManage.model.VideoBean;
import com.iii._19_.videoManage.model.VideoManageDAO;

@Service
public class WatchHistoryServiceImpl implements WatchHistoryService {
	
	@Autowired
	WatchHistoryDAO watchHistoryDAO;

	@Autowired
	VideoManageDAO videoManageDAO;
	
	@Override
	public int saveWatchHistory(WatchHistoryBean watchHistoryBean) {
		return watchHistoryDAO.saveWatchHistory(watchHistoryBean);
	}

	@Override
	public List<VideoBean> getAccountWatchHistory(String account) {
		List<Integer> watchHistoryBeanList = watchHistoryDAO.getAccountWatchHistory(account);
		List<VideoBean> videoBeanList = new ArrayList<VideoBean>();
		for(Integer videoSeqNo : watchHistoryBeanList) {
			VideoBean vb = videoManageDAO.getVideo(videoSeqNo);
			videoBeanList.add(vb);
		}
		return videoBeanList;
	}
}
