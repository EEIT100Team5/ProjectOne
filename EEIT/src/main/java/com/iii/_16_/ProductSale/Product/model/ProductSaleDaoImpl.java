package com.iii._16_.ProductSale.Product.model;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
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
	public ProductSaleBean update(ProductSaleBean pdb) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ProductSaleBean delete(ProductSaleBean pdb) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ProductSaleBean findbyPrimaryKey(ProductSaleBean pdb) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductSaleBean> getALL() throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

}
