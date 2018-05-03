package com.iii._05_.InputLiveStreamTime.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class InputLiveStreamTimeServiceImpl implements InputLiveStreamTimeService {

	@Autowired
	InputLiveStreamTimeDAO InputLiveStreamTimeDAO;
	
	
	@Override
	public List<InputLiveStreamTimeBean> getLiveStreamsByStreamName(Integer streamName) {
		return InputLiveStreamTimeDAO.getLiveStreamsByStreamName(streamName);
	}

	@Override
	public List<InputLiveStreamTimeBean> getLiveStreamsBySeqNo(Integer LiveStreamSeqNo) {
		return InputLiveStreamTimeDAO.getLiveStreamsBySeqNo(LiveStreamSeqNo);
		
	}

	@Override
	public List<InputLiveStreamTimeBean> getAllLiveStreams() {
		return InputLiveStreamTimeDAO.getAllLiveStreams();
	}

	@Override
	public List<InputLiveStreamTimeBean> getLiveStreamByAccount(String account) {
		
		return InputLiveStreamTimeDAO.getLiveStreamByAccount(account);
	}

	@Override
	public int saveLiveStreams(InputLiveStreamTimeBean InputLiveStreamTimeBean) {
		return InputLiveStreamTimeDAO.saveLiveStreams(InputLiveStreamTimeBean);
	}

	@Override
	public void updateLiveStreams(InputLiveStreamTimeBean InputLiveStreamTimeBean) {
		InputLiveStreamTimeDAO.updateLiveStreams(InputLiveStreamTimeBean);
		
	}

	@Override
	public void deleteLiveStreams(InputLiveStreamTimeBean InputLiveStreamTimeBean) {
		InputLiveStreamTimeDAO.deleteLiveStreams(InputLiveStreamTimeBean);
		
	}

}
