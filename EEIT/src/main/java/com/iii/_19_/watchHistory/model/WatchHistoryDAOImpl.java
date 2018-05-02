package com.iii._19_.watchHistory.model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class WatchHistoryDAOImpl implements WatchHistoryDAO {
	
	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public int saveWatchHistory(WatchHistoryBean watchHistoryBean) {
		Session session = sessionFactory.getCurrentSession();
		return (int) session.save(watchHistoryBean);
	}

	@Override
	public List<Integer> getAccountWatchHistory(String account) {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("select DISTINCT videoSeqNo FROM WatchHistoryBean where account = :account and watchHistoryStatus = '1'",Integer.class).setParameter("account", account).list();
	}

}
