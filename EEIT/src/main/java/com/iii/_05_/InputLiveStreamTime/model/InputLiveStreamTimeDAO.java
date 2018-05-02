package com.iii._05_.InputLiveStreamTime.model;

import java.util.List;

import com.iii._19_.commentVideos.model.CommentVideosBean;

public interface InputLiveStreamTimeDAO {

	public List<InputLiveStreamTimeBean> getLiveStreamsBySeqNo(Integer LiveStreamSeqNo);
	
	public List<InputLiveStreamTimeBean> getAllLiveStreams();
	
	public List<InputLiveStreamTimeBean> getLiveStreamByAccount(String account);
	
	public int saveLiveStreams(InputLiveStreamTimeBean InputLiveStreamTimeBean);

	public void updateLiveStreams(InputLiveStreamTimeBean InputLiveStreamTimeBean);

	public void deleteLiveStreams(InputLiveStreamTimeBean InputLiveStreamTimeBean);
	
}
