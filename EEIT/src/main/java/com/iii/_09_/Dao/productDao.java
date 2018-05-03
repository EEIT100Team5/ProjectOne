package com.iii._09_.Dao;

import java.sql.SQLException;

import com.iii._09_.bean.productBean;

public interface productDao {
	
	productBean insert(productBean prd) throws SQLException;

	productBean update(productBean prd) throws SQLException;
	
	productBean delete(productBean prd) throws SQLException;
		
}
