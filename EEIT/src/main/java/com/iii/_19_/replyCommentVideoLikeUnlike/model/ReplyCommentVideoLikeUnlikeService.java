package com.iii._19_.replyCommentVideoLikeUnlike.model;

import java.util.List;

import com.iii._19_.commentVideosLikeUnlike.model.CommentVideosLikeUnlikeBean;

public interface ReplyCommentVideoLikeUnlikeService {
	public List<ReplyCommentVideoLikeUnlikeBean> getReplyCommentVideoLikeUnlikeByReplyComment(Integer replyCommentVideosSeqNo);

	public List<ReplyCommentVideoLikeUnlikeBean> getAllReplyCommentVideoLikeUnlike();

	public List<ReplyCommentVideoLikeUnlikeBean> getReplyCommentVideoLikeUnlikeByReplyCommentAndAccount(Integer replyCommentVideosSeqNo,
			String account);

	public ReplyCommentVideoLikeUnlikeBean getReplyCommentVideosLikeUnlikeBySeqNo(Integer replyCommentVideoLikeUnlikeSeqNo);

	public int saveReplyCommentVideoLikeUnlike(ReplyCommentVideoLikeUnlikeBean replyCommentVideoLikeUnlikeBean);

	public void updateReplyCommentVideoLikeUnlike(ReplyCommentVideoLikeUnlikeBean replyCommentVideoLikeUnlikeBean);

	public void deleteReplyCommentVideoLikeUnlike(ReplyCommentVideoLikeUnlikeBean replyCommentVideoLikeUnlikeBean);
}
