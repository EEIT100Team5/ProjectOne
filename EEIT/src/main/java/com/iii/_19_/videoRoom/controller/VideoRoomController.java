package com.iii._19_.videoRoom.controller;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.iii._01_.Member.bean.MemberBean;
import com.iii._19_.commentVideos.model.CommentVideosBean;
import com.iii._19_.commentVideos.model.CommentVideosService;
import com.iii._19_.likeUnlikeVideos.model.LikeUnlikeVideosBean;
import com.iii._19_.likeUnlikeVideos.model.LikeUnlikeVideosService;
import com.iii._19_.subscriptionUploader.model.SubscriptionUploaderBean;
import com.iii._19_.subscriptionUploader.model.SubscriptionUploaderService;
import com.iii._19_.videoManage.model.VideoBean;
import com.iii._19_.videoManage.model.VideoManageService;
import com.iii._19_.videoRoom.model.VideoRoomService;
import com.iii._19_.watchHistory.model.WatchHistoryBean;
import com.iii._19_.watchHistory.model.WatchHistoryService;

@Controller
@RequestMapping("videoRoom")
public class VideoRoomController {
	@Autowired
	VideoRoomService videoRoomService;

	@Autowired
	VideoManageService videoManageService;

	@Autowired
	WatchHistoryService watchHistoryService;

	@Autowired
	SubscriptionUploaderService subscriptionUploaderService;

	@Autowired
	LikeUnlikeVideosService likeUnlikeVideosService;

	@Autowired
	CommentVideosService commentVideosService;

	@RequestMapping(value = "{videoSeqNo}", method = RequestMethod.GET)
	public String getVideoRoom(@PathVariable("videoSeqNo") Integer videoSeqNo, Map<String, Object> map, HttpSession session) {
		MemberBean memberBean = (MemberBean) session.getAttribute("LoginOK");
		String account = memberBean.getAccount();
		//無帳號為訪客
		if (account.equals(null)) {
			account = "visitor";
		}
		
		//瀏覽紀錄
		Timestamp now = new java.sql.Timestamp(System.currentTimeMillis());
		WatchHistoryBean watchHistoryBean = new WatchHistoryBean(0, account, videoSeqNo, now, 0, "1");
		watchHistoryService.saveWatchHistory(watchHistoryBean);
		VideoBean videoBean = videoManageService.getVideo(videoSeqNo);
		videoBean.setVideoViews(videoBean.getVideoViews() + 1);
		videoManageService.updateVideo(videoBean);
		
		//取得訂閱狀況
		String uploaderAccount = videoBean.getAccount();
		SubscriptionUploaderBean subscriptionUploaderBean = subscriptionUploaderService.getSubscriptionUploader(account, uploaderAccount);
		if(subscriptionUploaderBean != null && subscriptionUploaderBean.getSubscriptionUploaderStatus().equals("subscription")) {
			map.put("subscriptionUploaderStatus", subscriptionUploaderBean.getSubscriptionUploaderStatus());
		}
		
		//取得喜歡影片狀況
		LikeUnlikeVideosBean likeUnlikeVideosBean = likeUnlikeVideosService.getLikeUnlikeVideos(account, videoSeqNo);
		if(likeUnlikeVideosBean != null && likeUnlikeVideosBean.getLikeUnlikeVideosStatus().equals("like")) {
			map.put("likeUnlikeVideoStatus", likeUnlikeVideosBean.getLikeUnlikeVideosStatus());
		}else if(likeUnlikeVideosBean != null && likeUnlikeVideosBean.getLikeUnlikeVideosStatus().equals("unlike")) {
			map.put("likeUnlikeVideoStatus", likeUnlikeVideosBean.getLikeUnlikeVideosStatus());
		}else if(likeUnlikeVideosBean != null && likeUnlikeVideosBean.getLikeUnlikeVideosStatus().equals("none")) {
			map.put("likeUnlikeVideoStatus", likeUnlikeVideosBean.getLikeUnlikeVideosStatus());
		}
		//取得影片評論
		List<CommentVideosBean> commentVideoBeanList = commentVideosService.getCommentVideosByVideo(videoSeqNo);
		
		
		//放入map
		
		map.put("video", videoManageService.getVideo(videoSeqNo));
		map.put("uploaderVideo", videoManageService.getAllVideo());
		map.put("commentVideo", commentVideoBeanList);
		//返回jsp
		return "videoRoom/videoRoom";
	}

}
