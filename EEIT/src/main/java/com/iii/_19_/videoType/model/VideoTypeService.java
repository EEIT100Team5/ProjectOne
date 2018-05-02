package com.iii._19_.videoType.model;

import java.util.List;

public interface VideoTypeService {
	
	public List<VideoTypeBean> getAllVideoType();
	
	public VideoTypeBean getVideoType(String videoType);
	
	public int saveVideoType(VideoTypeBean videoTypeBean);
	
	public void updateVideoType(VideoTypeBean videoTypeBean);
	
	public void deleteVideoType(VideoTypeBean videoTypeBean);
	
	
}
