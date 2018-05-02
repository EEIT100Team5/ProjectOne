package com.iii._16_.Product.dao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iii._16_.FAQ.bean.MemberFAQBean;
import com.iii._16_.Product.bean.ProductBean;
@Repository
public class ProductDaoImpl implements ProductDao{
	@Autowired	
	SessionFactory factory;
	@Override
	public ProductBean insert(ProductBean pb) throws SQLException {
		Session session = factory.getCurrentSession();
		MemberFAQBean temp = session.get(MemberFAQBean.class, pb.getProductSeqNo());		
		if(temp==null) {
		session.save(pb);
		return pb;
		}
		return null;
	}

	@Override
	public ProductBean update(ProductBean pb) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ProductBean delete(ProductBean pb) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ProductBean findbyPrimaryKey(ProductBean pb) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductBean> getALL() throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

}
