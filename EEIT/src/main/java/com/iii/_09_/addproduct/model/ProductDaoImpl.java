package com.iii._09_.addproduct.model;

import java.sql.SQLException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iii._16_.FAQ.bean.MemberFAQBean;

@Repository
public class ProductDaoImpl implements ProductDao{
	
	@Autowired
	SessionFactory factory;
	
	@Override
	public CartBean insert(CartBean prd) throws SQLException{
		Session session = factory.getCurrentSession();
		session.save(prd);
		return prd;

	}

	@Override
	public CartBean update(CartBean prd) throws SQLException {
		Session session = factory.getCurrentSession();
		session.saveOrUpdate(prd);
		return prd;
	}

	@Override
	public CartBean delete(CartBean prd) throws SQLException {
		Session session = factory.getCurrentSession();
		CartBean temp = session.get(CartBean.class,prd.getProductSeqNo());
		if(temp!=null) {
			session.delete(temp);
			return temp;
		}
		return null;
	}
	
	@Override
	public CartBean findbyPrimaryKey(CartBean prd) throws SQLException {
		Session session = factory.getCurrentSession();
		return session.get(CartBean.class,  prd.getProductSeqNo());
	}

}
