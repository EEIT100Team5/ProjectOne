package com.iii._09_.addproduct.model;

import java.sql.SQLException;



public interface ProductDao {
	
	CartBean insert(CartBean prd) throws SQLException;

	CartBean update(CartBean prd) throws SQLException;
	
	CartBean delete(CartBean prd) throws SQLException;
	
	CartBean findbyPrimaryKey(CartBean prd) throws SQLException;
		
}
