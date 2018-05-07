package com.iii._09_.Cart.model;

import java.io.File;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;



@Service
public class CartService {
	
	@Autowired
	private CartDaoImpl dao;
	
	@Transactional
	public CartBean insert(CartBean cb) throws SQLException {
		CartBean result = null;
		if (cb != null) {
			result = dao.insert(cb);
			return result;
		}
		return null;
	}

	
	@Transactional
	public CartBean select(CartBean pro) throws SQLException {
		CartBean result = null;
		result = dao.findbyPrimaryKey(pro);
		if (result != null) {
			return result;
		}
		return null;
	}
	

	
		
}
	


