package com.iii._19_.likeUnlikeVideos.model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class LikeUnlikeVideosDAOImpl implements LikeUnlikeVideosDAO {
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public LikeUnlikeVideosBean getLikeUnlikeVideos(String account, Integer videoSeqNo) {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("FROM LikeUnlikeVideosBean WHERE account = :account and videoSeqNo = :videoSeqNo",LikeUnlikeVideosBean.class).setParameter("account", account).setParameter("videoSeqNo", videoSeqNo).uniqueResult();
	}

	@Override
	public List<LikeUnlikeVideosBean> getUserAllLikeVideos(String account) {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("FROM LikeUnlikeVideosBean WHERE account = :account and LikeUnlikeVideosStatus = 'like'", LikeUnlikeVideosBean.class).setParameter("account", account).list();
		
	}

	@Override
	public int saveLikeUnlikeVideos(LikeUnlikeVideosBean likeUnlikeVideosBean) {
		Session session = sessionFactory.getCurrentSession();
		return (int)session.save(likeUnlikeVideosBean);
	}

	@Override
	public void updateLikeUnlikeVideos(LikeUnlikeVideosBean likeUnlikeVideosBean) {
		Session session = sessionFactory.getCurrentSession();
		session.update(likeUnlikeVideosBean);
	}

	@Override
	public void deleteLikeUnlikeVideos(LikeUnlikeVideosBean likeUnlikeVideosBean) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(likeUnlikeVideosBean);
	}
	
	
}
