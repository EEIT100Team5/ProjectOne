package com.iii._19_.replyCommentVideoLikeUnlike.model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iii._19_.commentVideosLikeUnlike.model.CommentVideosLikeUnlikeBean;

@Repository
public class ReplyCommentVideoLikeUnlikeDAOImpl implements ReplyCommentVideoLikeUnlikeDAO {
	
	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public List<ReplyCommentVideoLikeUnlikeBean> getReplyCommentVideoLikeUnlikeByReplyComment(
			Integer replyCommentVideosSeqNo) {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("FROM ReplyCommentVideoLikeUnlikeBean WHERE replyCommentVideosSeqNo = :replyCommentVideosSeqNo",ReplyCommentVideoLikeUnlikeBean.class).list();
	}

	@Override
	public List<ReplyCommentVideoLikeUnlikeBean> getAllReplyCommentVideoLikeUnlike() {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("FROM ReplyCommentVideoLikeUnlikeBean",ReplyCommentVideoLikeUnlikeBean.class).list();
	}

	@Override
	public List<ReplyCommentVideoLikeUnlikeBean> getReplyCommentVideoLikeUnlikeByReplyCommentAndAccount(
			Integer replyCommentVideosSeqNo, String account) {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("FROM ReplyCommentVideoLikeUnlikeBean WHERE replyCommentVideosSeqNo = :replyCommentVideosSeqNo and account = :account",ReplyCommentVideoLikeUnlikeBean.class).list();
	}

	@Override
	public ReplyCommentVideoLikeUnlikeBean getReplyCommentVideosLikeUnlikeBySeqNo(
			Integer replyCommentVideoLikeUnlikeSeqNo) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(ReplyCommentVideoLikeUnlikeBean.class, replyCommentVideoLikeUnlikeSeqNo);
	}

	@Override
	public int saveReplyCommentVideoLikeUnlike(ReplyCommentVideoLikeUnlikeBean replyCommentVideoLikeUnlikeBean) {
		Session session = sessionFactory.getCurrentSession();
		return (int) session.save(replyCommentVideoLikeUnlikeBean);
	}

	@Override
	public void updateReplyCommentVideoLikeUnlike(ReplyCommentVideoLikeUnlikeBean replyCommentVideoLikeUnlikeBean) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(replyCommentVideoLikeUnlikeBean);
	}

	@Override
	public void deleteReplyCommentVideoLikeUnlike(ReplyCommentVideoLikeUnlikeBean replyCommentVideoLikeUnlikeBean) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(replyCommentVideoLikeUnlikeBean);
	}

}
