package com.iii._19_.subscriptionUploader.model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class SubscriptionUploaderDAOImpl implements SubscriptionUploaderDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public SubscriptionUploaderBean getSubscriptionUploader(String account, String uploaderAccount) {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery(
				"FROM SubscriptionUploaderBean WHERE account = :account and uploaderAccount = :uploaderAccount",
				SubscriptionUploaderBean.class).setParameter("account", account)
				.setParameter("uploaderAccount", uploaderAccount).uniqueResult();
	}

	@Override
	public List<SubscriptionUploaderBean> getAllSubscriptionUploader(String account) {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("FROM SubcriptionUploaderBean WHERE account = :account and subscriptionUploaderStatus = 'a'",SubscriptionUploaderBean.class).setParameter("account", account).list();
		
	}

	@Override
	public Integer saveSubscriptionUploader(SubscriptionUploaderBean subscriptionUploaderBean) {
		Session session = sessionFactory.getCurrentSession();
		return (Integer) session.save(subscriptionUploaderBean);
	}

	@Override
	public void updateSubscriptionUploader(SubscriptionUploaderBean subscriptionUploaderBean) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(subscriptionUploaderBean);
	}

	@Override
	public void deleteSubscriptionUploader(SubscriptionUploaderBean subscriptionUploaderBean) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(subscriptionUploaderBean);
	}

}
