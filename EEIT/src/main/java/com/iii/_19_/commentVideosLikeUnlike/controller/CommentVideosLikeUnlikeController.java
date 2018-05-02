package com.iii._19_.commentVideosLikeUnlike.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.iii._19_.commentVideosLikeUnlike.model.CommentVideosLikeUnlikeBean;
import com.iii._19_.commentVideosLikeUnlike.model.CommentVideosLikeUnlikeService;

@Controller
@RequestMapping("CommentVideosLikeUnlike")
public class CommentVideosLikeUnlikeController {
	
	@Autowired
	CommentVideosLikeUnlikeService commentVideosLikeUnlikeService;
	
	@RequestMapping(value = "{commentVideosSeqNo}",method = RequestMethod.GET)
	public String getCommentVideosLikeUnlikeByComment(@PathVariable Integer commentVideosSeqNo) {
		 List<CommentVideosLikeUnlikeBean> commentVideosLikeUnlikeBeanList = commentVideosLikeUnlikeService.getCommentVideosLikeUnlikeByComment(commentVideosSeqNo);
		 return "OK";
	}

	@RequestMapping(method = RequestMethod.GET)
	public String getAllCommentVideosLikeUnlike() {
		List<CommentVideosLikeUnlikeBean> commentVideosLikeUnlikeBeanList = commentVideosLikeUnlikeService.getAllCommentVideosLikeUnlike();
		return "OK";
	}

	@RequestMapping(value = "{commentVideosSeqNo}/{account}",method = RequestMethod.GET)
	public String getCommentVideosLikeUnlikeByCommentAndAccount(@PathVariable Integer commentVideosSeqNo,
			@PathVariable String account) {
		List<CommentVideosLikeUnlikeBean> commentVideosLikeUnlikeBeanList = commentVideosLikeUnlikeService.getCommentVideosLikeUnlikeByCommentAndAccount(commentVideosSeqNo, account);
		return "OK";
	}

//	@RequestMapping(value = "{commentLikeUnlikeSeqNo}",method = RequestMethod.GET)
	public String getCommentVideosLikeUnlikeBySeqNo(@PathVariable Integer commentLikeUnlikeSeqNo) {
		CommentVideosLikeUnlikeBean commentVideosLikeUnlikeBeanList = commentVideosLikeUnlikeService.getCommentVideosLikeUnlikeBySeqNo(commentLikeUnlikeSeqNo);
		return "OK";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String saveCommentVideosLikeUnlike(@ModelAttribute CommentVideosLikeUnlikeBean commentVideosLikeUnlikeBean) {
		int key = commentVideosLikeUnlikeService.saveCommentVideosLikeUnlike(commentVideosLikeUnlikeBean);
		return "OK";
	}

	@RequestMapping(method = RequestMethod.PUT)
	public String updateCommentVideosLikeUnlike(@ModelAttribute CommentVideosLikeUnlikeBean commentVideosLikeUnlikeBean) {
		commentVideosLikeUnlikeService.updateCommentVideosLikeUnlike(commentVideosLikeUnlikeBean);
		return "OK";
	}

	@RequestMapping(value = "{commentLikeUnlikeSeqNo}",method = RequestMethod.DELETE)
	public String deleteCommentVideosLikeUnlike(@PathVariable Integer commentLikeUnlikeSeqNo) {
		CommentVideosLikeUnlikeBean commentVideosLikeUnlikeBean = commentVideosLikeUnlikeService.getCommentVideosLikeUnlikeBySeqNo(commentLikeUnlikeSeqNo);
		commentVideosLikeUnlikeService.deleteCommentVideosLikeUnlike(commentVideosLikeUnlikeBean);
		return "OK";
	}
}
