package com.iii._16_.ProductSale.Product.model;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iii._16_.PersonShop.bean.PersonShopBean;
@Repository
public class ProductSaleDaoImpl implements ProductSaleDao {
	@Autowired	
	SessionFactory factory;
	@Override
	public ProductSaleBean insert(ProductSaleBean pdb) throws SQLException {
		Session session = factory.getCurrentSession();
		session.save(pdb);
		return pdb;
	}
	@Override
	public int insertGetId(ProductSaleBean pdb) {
		Session session = factory.getCurrentSession();
		session.save(pdb);
		int id = pdb.getProductSeqNo();
		return id;
	}
	@Override
	public ProductSaleBean update(ProductSaleBean pdb) throws SQLException {
		Session session = factory.getCurrentSession();
		session.saveOrUpdate(pdb);
		return pdb;
	}

	@Override
	public ProductSaleBean delete(ProductSaleBean pdb) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ProductSaleBean findbyPrimaryKey(int productSeqNo) throws SQLException {
		Session session = factory.getCurrentSession();
		ProductSaleBean bean = session.get(ProductSaleBean.class, productSeqNo);
		return bean;
	}

	@Override
	public List<ProductSaleBean> getALL() throws SQLException {
		Session session = factory.getCurrentSession();
		return session.createQuery("FROM ProductSaleBean",ProductSaleBean.class).list();
	}
	@Override
	public List<ProductSaleBean> findbyAccount(String account) throws SQLException {
		Session session = factory.getCurrentSession();
		return session.createQuery("FROM ProductSaleBean WHERE account = :account",ProductSaleBean.class).setParameter("account", account).list();
	}
	
	

}
