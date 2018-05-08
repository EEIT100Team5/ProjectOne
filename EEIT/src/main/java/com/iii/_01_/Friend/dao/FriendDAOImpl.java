package com.iii._01_.Friend.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iii._01_.Friend.bean.FriendBean;

@Repository
public class FriendDAOImpl implements FriendDAO {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public void saveFriendRequest(FriendBean fb) {
		Session session = sessionFactory.getCurrentSession();
		session.save(fb);
	}

	@Override
	public void updateFriendRequest(FriendBean fb) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(fb);
	}

	@Override
	public Integer getFriendStatus(String accountSend, String accountTo) {
		Session session = sessionFactory.getCurrentSession();
		FriendBean fb = session
				.createQuery("from FriendBean where  accountSend =:accountSend and accountTo = :accountTo",
						FriendBean.class)
				.setParameter("accountSend", accountSend).setParameter("accountTo", accountTo).uniqueResult();
		return fb.getFriendStatus();
	}

	@Override
	public void deleteFriendRequest(FriendBean fb) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(fb);
	}

}
