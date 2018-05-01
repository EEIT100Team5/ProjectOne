package com.iii._19_.likeUnlikeVideos.controller;

import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iii._19_.likeUnlikeVideos.model.LikeUnlikeVideosBean;
import com.iii._19_.likeUnlikeVideos.model.LikeUnlikeVideosService;
import com.iii._19_.videoManage.model.VideoBean;
import com.iii._19_.videoManage.model.VideoManageService;

@Controller
@RequestMapping("likeUnlikeVideos")
public class LikeUnlikeVideosController {
	
	@Autowired
	LikeUnlikeVideosService likeUnlikeVideosService;
	
	@Autowired
	VideoManageService videoManageService; 
	
	@RequestMapping(value = "{account}/{videoSeqNo}" , method=RequestMethod.GET)
	public  String getLikeUnlikeVideo(@PathVariable String account, @PathVariable Integer videoSeqNo) {
		likeUnlikeVideosService.getLikeUnlikeVideos(account, videoSeqNo);
		
		return "OK";
	}
	
	@RequestMapping(value = "{account}", method = RequestMethod.GET)
	public String getUserLikeVideos(@PathVariable String account) {
		likeUnlikeVideosService.getUserAllLikeVideos(account);
		
		return "OK";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public @ResponseBody Map<String,Integer> saveLikeUnlikeVideos(
			@RequestParam("account") String account,
			@RequestParam("videoSeqNo") Integer videoSeqNo,
			@RequestParam("likeUnlikeStatus") String likeUnlikeStatus
			) {
		//新增喜歡影片或不喜歡影片紀錄
		Timestamp now = new java.sql.Timestamp(System.currentTimeMillis());
		LikeUnlikeVideosBean likeUnlikeVideosBean = new LikeUnlikeVideosBean(0, account, videoSeqNo, likeUnlikeStatus, now, 0);
		likeUnlikeVideosService.saveLikeUnlikeVideos(likeUnlikeVideosBean);
		
		//增加影片喜歡總數
		VideoBean vb = videoManageService.getVideo(videoSeqNo);
		if(likeUnlikeStatus.equalsIgnoreCase("like")) {
			vb.setVideoLikes(vb.getVideoLikes() + 1);
			videoManageService.updateVideo(vb);
			//增加影片不喜歡總數
		}else if(likeUnlikeStatus.equalsIgnoreCase("unlike")) {
			vb.setVideoUnlikes(vb.getVideoUnlikes() + 1);
			videoManageService.updateVideo(vb);
		}
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("likeNumber", vb.getVideoLikes());
		map.put("unlikeNumber", vb.getVideoUnlikes());
		return map;
	}
	
	@RequestMapping(method = RequestMethod.PUT)
	public @ResponseBody Map<String,Integer> updateLikeUnlikeVideos(
			@RequestParam("account") String account,
			@RequestParam("videoSeqNo") Integer videoSeqNo,
			@RequestParam("likeUnlikeStatus") String likeUnlikeStatus
			) {
		LikeUnlikeVideosBean likeUnlikeVideosBean = likeUnlikeVideosService.getLikeUnlikeVideos(account, videoSeqNo);
		Timestamp now = new java.sql.Timestamp(System.currentTimeMillis());
		
		
		VideoBean vb = videoManageService.getVideo(videoSeqNo);
		if(likeUnlikeStatus.equalsIgnoreCase("like")) {
			if(likeUnlikeVideosBean.getLikeUnlikeVideosStatus().equals("like")) {
				
			}else if(likeUnlikeVideosBean.getLikeUnlikeVideosStatus().equals("unlike")) {
				if( vb.getVideoUnlikes() > 0) {
					vb.setVideoUnlikes(vb.getVideoUnlikes() - 1);
				}
				vb.setVideoLikes(vb.getVideoLikes() + 1);
			}else if(likeUnlikeVideosBean.getLikeUnlikeVideosStatus().equals("none")) {
				vb.setVideoLikes(vb.getVideoLikes() + 1);
				
			}
		}else if(likeUnlikeStatus.equalsIgnoreCase("unlike")) {
			if(likeUnlikeVideosBean.getLikeUnlikeVideosStatus().equals("like")) {
				if(vb.getVideoLikes() > 0) {
					vb.setVideoLikes(vb.getVideoLikes() - 1);
				}
				vb.setVideoUnlikes(vb.getVideoUnlikes() + 1);
			}else if(likeUnlikeVideosBean.getLikeUnlikeVideosStatus().equals("unlike")) {
				
			}else if(likeUnlikeVideosBean.getLikeUnlikeVideosStatus().equals("none")) {
				vb.setVideoUnlikes(vb.getVideoUnlikes() + 1 );
			}
		}else if(likeUnlikeStatus.equalsIgnoreCase("none")) {
			if(likeUnlikeVideosBean.getLikeUnlikeVideosStatus().equals("like")) {
				vb.setVideoLikes(vb.getVideoLikes() - 1);
			}else if(likeUnlikeVideosBean.getLikeUnlikeVideosStatus().equals("unlike")) {
				vb.setVideoUnlikes(vb.getVideoUnlikes() - 1);
			}else if(likeUnlikeVideosBean.getLikeUnlikeVideosStatus().equals("none")) {
				
			}
		}
		videoManageService.updateVideo(vb);
		
		likeUnlikeVideosBean.setLikeUnLikeVideosDate(now);
		likeUnlikeVideosBean.setLikeUnlikeVideosStatus(likeUnlikeStatus);
		likeUnlikeVideosService.updateLikeUnlikeVideos(likeUnlikeVideosBean);
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("likeNumber", vb.getVideoLikes());
		map.put("unlikeNumber", vb.getVideoUnlikes());
		return map;
	}
	
	@RequestMapping(value = "{account}/{videoSeqNo}", method = RequestMethod.DELETE)
	public String deleteLikeUnlikeVideos(@PathVariable("account") String account,@PathVariable("videoSeqNo") Integer videoSeqNo) {
		LikeUnlikeVideosBean likeUnlikeVideosBean = likeUnlikeVideosService.getLikeUnlikeVideos(account, videoSeqNo);
		likeUnlikeVideosService.deleteLikeUnlikeVideos(likeUnlikeVideosBean);
		return "OK";
	}
}