package com.iii._09_.Service;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.iii._09_.bean.productBean;
import com.iii._09_.dao.productDaoImpl;

@Service
public class productService {
	
	@Autowired
	private productDaoImpl dao;
	
	@Transactional
	public productBean insert(productBean bean) throws SQLException {
		productBean result = null;
		if (bean != null) {
			result = dao.insert(bean);
			return result;
		}
		return null;
	}
	
	

}
