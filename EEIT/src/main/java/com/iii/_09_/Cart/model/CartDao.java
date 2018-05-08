package com.iii._09_.Cart.model;

import java.sql.SQLException;



public interface CartDao {
	
	CartBean insert(CartBean cb) throws SQLException;

	CartBean update(CartBean cb) throws SQLException;
	
	CartBean delete(CartBean cb) throws SQLException;
	
	CartBean findbyPrimaryKey(CartBean cb) throws SQLException;
		
}
