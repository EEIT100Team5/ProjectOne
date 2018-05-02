package com.iii._19_.replyCommentVideoLikeUnlike.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.iii._19_.replyCommentVideoLikeUnlike.model.ReplyCommentVideoLikeUnlikeBean;
import com.iii._19_.replyCommentVideoLikeUnlike.model.ReplyCommentVideoLikeUnlikeService;

@Controller
@RequestMapping("ReplyCommentVideoLikeUnlike")
public class ReplyCommentVideoLikeUnlikeController {
	
	@Autowired
	ReplyCommentVideoLikeUnlikeService replyCommentVideoLikeUnlikeService;
	
	@RequestMapping(value = "{replyCommentVideosSeqNo}",method = RequestMethod.GET)
	public String getReplyCommentVideoLikeUnlikeByReplyComment(@PathVariable("replyCommentVideosSeqNo")
			Integer replyCommentVideosSeqNo) {
		List<ReplyCommentVideoLikeUnlikeBean> replyCommentVideoLikeUnlikeBeanList = replyCommentVideoLikeUnlikeService.getReplyCommentVideoLikeUnlikeByReplyComment(replyCommentVideosSeqNo);
		return "OK";
	}

	@RequestMapping(method = RequestMethod.GET)
	public String getAllReplyCommentVideoLikeUnlike() {
		List<ReplyCommentVideoLikeUnlikeBean> replyCommentVideoLikeUnlikeBeanList = replyCommentVideoLikeUnlikeService.getAllReplyCommentVideoLikeUnlike();
		return "OK";
	}

	@RequestMapping(value = "{replyCommentVideosSeqNo}/{account}",method = RequestMethod.GET)
	public String getReplyCommentVideoLikeUnlikeByReplyCommentAndAccount(
			@PathVariable("replyCommentVideosSeqNo") Integer replyCommentVideosSeqNo,@PathVariable("account") String account) {
		List<ReplyCommentVideoLikeUnlikeBean> replyCommentVideoLikeUnlikeBeanList = replyCommentVideoLikeUnlikeService.getReplyCommentVideoLikeUnlikeByReplyCommentAndAccount(replyCommentVideosSeqNo, account);
		return "OK";
	}

//	@RequestMapping(value = "{replyCommentVideoLikeUnlikeSeqNo}", method = RequestMethod.GET)
	public String getReplyCommentVideosLikeUnlikeBySeqNo(
			@PathVariable("replyCommentVideoLikeUnlikeSeqNo") Integer replyCommentVideoLikeUnlikeSeqNo) {
		ReplyCommentVideoLikeUnlikeBean replyCommentVideoLikeUnlikeBean = replyCommentVideoLikeUnlikeService.getReplyCommentVideosLikeUnlikeBySeqNo(replyCommentVideoLikeUnlikeSeqNo);
		return "OK";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String saveReplyCommentVideoLikeUnlike(@ModelAttribute ReplyCommentVideoLikeUnlikeBean replyCommentVideoLikeUnlikeBean) {
		int key = replyCommentVideoLikeUnlikeService.saveReplyCommentVideoLikeUnlike(replyCommentVideoLikeUnlikeBean);
		return "OK";
	}

	@RequestMapping(method = RequestMethod.PUT)
	public String updateReplyCommentVideoLikeUnlike(@ModelAttribute ReplyCommentVideoLikeUnlikeBean replyCommentVideoLikeUnlikeBean) {
		replyCommentVideoLikeUnlikeService.updateReplyCommentVideoLikeUnlike(replyCommentVideoLikeUnlikeBean);
		return "OK";
	}

	@RequestMapping(value = "{replyCommentVideosSeqNo}",method = RequestMethod.DELETE)
	public String deleteReplyCommentVideoLikeUnlike(@PathVariable("replyCommentVideosSeqNo") Integer replyCommentVideoLikeUnlikeSeqNo) {
		ReplyCommentVideoLikeUnlikeBean replyCommentVideoLikeUnlikeBean = replyCommentVideoLikeUnlikeService.getReplyCommentVideosLikeUnlikeBySeqNo(replyCommentVideoLikeUnlikeSeqNo);
		replyCommentVideoLikeUnlikeService.deleteReplyCommentVideoLikeUnlike(replyCommentVideoLikeUnlikeBean);
		return "OK";
	}
	
	
}

