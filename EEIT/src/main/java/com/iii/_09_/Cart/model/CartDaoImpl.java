package com.iii._09_.Cart.model;

import java.sql.SQLException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iii._16_.FAQ.bean.MemberFAQBean;

@Repository
public class CartDaoImpl implements CartDao{
	
	@Autowired
	SessionFactory factory;
	
	@Override
	public CartBean insert(CartBean cb) throws SQLException{
		Session session = factory.getCurrentSession();
		session.save(cb);
		return cb;

	}

	@Override
	public CartBean update(CartBean cb) throws SQLException {
		Session session = factory.getCurrentSession();
		session.saveOrUpdate(cb);
		return cb;
	}

	@Override
	public CartBean delete(CartBean cb) throws SQLException {
		Session session = factory.getCurrentSession();
		CartBean temp = session.get(CartBean.class,cb.getCartSeqNo());
		if(temp!=null) {
			session.delete(temp);
			return temp;
		}
		return null;
	}
	
	@Override
	public CartBean findbyPrimaryKey(CartBean cb) throws SQLException {
		Session session = factory.getCurrentSession();
		return session.get(CartBean.class,  cb.getCartSeqNo());
	}

}
