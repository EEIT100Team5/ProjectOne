package com.iii._09_.addproduct.model;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ProductService {
	
	@Autowired
	private ProductDaoImpl dao;
	
	@Transactional
	public ProductBean insert(ProductBean bean) throws SQLException {
		ProductBean result = null;
		if (bean != null) {
			result = dao.insert(bean);
			return result;
		}
		return null;
	}
	
	

}
