package com.iii._19_.watchLaterVideo.model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class WatchLaterVideoDAOImpl implements WatchLaterVideoDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public int saveWatchLaterVideo(WatchLaterVideoBean watchLaterVideoBean) {
		Session session = sessionFactory.getCurrentSession();
		return (int) session.save(watchLaterVideoBean);
	}

	@Override
	public void updateWatchLaterVideo(WatchLaterVideoBean watchLaterVideoBean) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(watchLaterVideoBean);
	}

	@Override
	public void deleteWatchLaterVideo(WatchLaterVideoBean watchLaterVideoBean) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(watchLaterVideoBean);
	}

	@Override
	public WatchLaterVideoBean getWatchLaterVideo(String account, Integer videoSeqNo) {
		Session session = sessionFactory.getCurrentSession();
		
		return session.createQuery("FROM WatchLaterVideoBean WHERE account = :account and videoSeqNo = :videoSeqNo",WatchLaterVideoBean.class).setParameter("account", account).setParameter("videoSeqNo", videoSeqNo).uniqueResult();
		
	}

	@Override
	public List<WatchLaterVideoBean> getWatchLaterVideoByAccount(String account) {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("FROM WatchLaterVideoBean WHERE account = :account",WatchLaterVideoBean.class).setParameter("account", account).list();
		
	}

	@Override
	public List<WatchLaterVideoBean> getAllWatchLaterVideo() {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("FROM WatchLaterVideoBean",WatchLaterVideoBean.class).list();
	}

	@Override
	public WatchLaterVideoBean getWatchLaterVideoBySeqNo(Integer watchLaterVideoSeqNo) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(WatchLaterVideoBean.class, watchLaterVideoSeqNo);
				
	}

}
