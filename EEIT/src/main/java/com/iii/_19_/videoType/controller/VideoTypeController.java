package com.iii._19_.videoType.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.iii._19_.videoType.model.VideoTypeBean;
import com.iii._19_.videoType.model.VideoTypeService;

@Controller
@RequestMapping("videoType")
public class VideoTypeController {
	
	@Autowired
	private VideoTypeService videoTypeService;
	
	@RequestMapping(value = "{videoType}",method=RequestMethod.GET)
	public String getVideoType(@PathVariable String videoType) {
		VideoTypeBean videoTypeBean = videoTypeService.getVideoType(videoType);
		return "OK";
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public String getAllVideoTypes() {
		List<VideoTypeBean> videoTypeBean = videoTypeService.getAllVideoType();
		return "OK";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String saveVideoType(@ModelAttribute VideoTypeBean videoTypeBean) {
		int key = videoTypeService.saveVideoType(videoTypeBean);
		return "OK";
	}
	
	@RequestMapping(method = RequestMethod.PUT)
	public String updateVideoType(@ModelAttribute VideoTypeBean videoTypeBean) {
		videoTypeService.updateVideoType(videoTypeBean);
		return "OK";
	}
	
	@RequestMapping(value = "{videoType}",method = RequestMethod.DELETE)
	public String deleteVideoType(@PathVariable String videoType) {
		VideoTypeBean videoTypeBean = videoTypeService.getVideoType(videoType);
		videoTypeService.deleteVideoType(videoTypeBean);
		return "OK";
	}
}
