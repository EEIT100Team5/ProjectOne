package com.iii._09_.Dao;

import java.sql.SQLException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.iii._09_.Product.bean.productBean;

@Repository
public class productDaoImpl implements productDao{
	
	@Autowired
	SessionFactory factory;
	
	@Override
	public productBean insert(productBean prd) throws SQLException{
		Session session = factory.getCurrentSession();
		productBean temp = session.get(productBean.class,prd.getProductSeqNo());
		if(temp==null) {
		session.save(prd);
		return prd;
		}
		return null;
	}

	@Override
	public productBean update(productBean prd) throws SQLException {
		Session session = factory.getCurrentSession();
		session.saveOrUpdate(prd);
		return prd;
	}

	@Override
	public productBean delete(productBean prd) throws SQLException {
		Session session = factory.getCurrentSession();
		productBean temp = session.get(productBean.class,prd.getProductSeqNo());
		if(temp!=null) {
			session.delete(temp);
			return temp;
		}
		return null;
	}
	

}
