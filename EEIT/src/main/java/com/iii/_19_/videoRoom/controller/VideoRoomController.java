package com.iii._19_.videoRoom.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.iii._19_.videoManage.model.VideoManageService;
import com.iii._19_.videoRoom.model.VideoRoomService;

@Controller
@RequestMapping("videoRoom")
public class VideoRoomController {
	@Autowired
	VideoRoomService videoRoomService;
	
	@Autowired
	VideoManageService videoManageService;
	
	@RequestMapping(value="{videoSeqNo}",method=RequestMethod.GET)
	public String getVideoRoom(@PathVariable("videoSeqNo") Integer videoSeqNo,Map<String,Object> map) {
		map.put("video", videoManageService.getVideo(videoSeqNo) );
		map.put("uploaderVideo", videoManageService.getAllVideo());
		return "videoRoom/videoRoom";
	}
	
	
}
