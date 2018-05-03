package com.iii._05_.InputLiveStreamTime.model;

import java.util.List;

public interface InputLiveStreamTimeService {
	public List<InputLiveStreamTimeBean> getLiveStreamsByStreamName(Integer streamName);
	
	public List<InputLiveStreamTimeBean> getLiveStreamsBySeqNo(Integer LiveStreamSeqNo);
	
	public List<InputLiveStreamTimeBean> getAllLiveStreams();
	
	public List<InputLiveStreamTimeBean> getLiveStreamByAccount(String account);
	
	public int saveLiveStreams(InputLiveStreamTimeBean InputLiveStreamTimeBean);

	public void updateLiveStreams(InputLiveStreamTimeBean InputLiveStreamTimeBean);

	public void deleteLiveStreams(InputLiveStreamTimeBean InputLiveStreamTimeBean);
}
