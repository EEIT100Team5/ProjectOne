package com.iii._19_.videoType.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class VideoTypeServiceImpl implements VideoTypeService {

	@Autowired
	VideoTypeDAO videoTypeDAO;
	
	@Override
	public List<VideoTypeBean> getAllVideoType() {
		return videoTypeDAO.getAllVideoType();
	}

	@Override
	public VideoTypeBean getVideoType(String videoType) {
		return videoTypeDAO.getVideoType(videoType);
	}

	@Override
	public int saveVideoType(VideoTypeBean videoTypeBean) {
		return videoTypeDAO.saveVideoType(videoTypeBean);
	}

	@Override
	public void updateVideoType(VideoTypeBean videoTypeBean) {
		videoTypeDAO.updateVideoType(videoTypeBean);
	}

	@Override
	public void deleteVideoType(VideoTypeBean videoTypeBean) {
		videoTypeDAO.deleteVideoType(videoTypeBean);
	}
	

}
