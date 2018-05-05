package com.iii._05_.InputLiveStreamTime.model;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service
public class InputLiveStreamTimeServiceImpl implements InputLiveStreamTimeService {

	@Autowired
	InputLiveStreamTimeDAO InputLiveStreamTimeDAO;
	
	@Transactional
	@Override
	public List<InputLiveStreamTimeBean> getLiveStreamsByStreamName(String streamName) {
		return InputLiveStreamTimeDAO.getLiveStreamsByStreamName(streamName);
	}
	@Transactional
	@Override
	public InputLiveStreamTimeBean getLiveStreamsBySeqNo(int LiveStreamSeqNo) {
		return InputLiveStreamTimeDAO.getLiveStreamsBySeqNo(LiveStreamSeqNo);
		
	}
	@Transactional
	@Override
	public List<InputLiveStreamTimeBean> getAllLiveStreams() {
		return InputLiveStreamTimeDAO.getAllLiveStreams();
	}
	@Transactional
	@Override
	public List<InputLiveStreamTimeBean> getLiveStreamByAccount(String account) {
		
		return InputLiveStreamTimeDAO.getLiveStreamByAccount(account);
	}
	@Transactional
	@Override
	public int saveLiveStreams(InputLiveStreamTimeBean InputLiveStreamTimeBean) {
		return InputLiveStreamTimeDAO.saveLiveStreams(InputLiveStreamTimeBean);
	}
	@Transactional
	@Override
	public void updateLiveStreams(InputLiveStreamTimeBean InputLiveStreamTimeBean) {
		InputLiveStreamTimeDAO.updateLiveStreams(InputLiveStreamTimeBean);
		
	}
	@Transactional
	@Override
	public void deleteLiveStreams(InputLiveStreamTimeBean InputLiveStreamTimeBean) {
		InputLiveStreamTimeDAO.deleteLiveStreams(InputLiveStreamTimeBean);
		
	}

}
