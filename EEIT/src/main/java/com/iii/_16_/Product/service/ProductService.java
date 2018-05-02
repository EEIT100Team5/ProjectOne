package com.iii._16_.Product.service;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.iii._16_.Product.bean.ProductBean;
import com.iii._16_.Product.dao.ProductDaoImpl;



@Service
public class ProductService {
	@Autowired
	private ProductDaoImpl dao;
	@Transactional
	public ProductBean insert(ProductBean bean) throws SQLException {
		ProductBean result =null;
		if(bean!=null) {
			result = dao.insert(bean);
		return result;
		}
		return null;
	}
}
