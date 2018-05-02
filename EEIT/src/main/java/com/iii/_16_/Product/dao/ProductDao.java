package com.iii._16_.Product.dao;

import java.sql.SQLException;
import java.util.List;

import com.iii._16_.Product.bean.ProductBean;



public interface ProductDao {
	ProductBean insert(ProductBean pb) throws SQLException;

	ProductBean update(ProductBean 	pb) throws SQLException;

	ProductBean delete(ProductBean pb) throws SQLException;

	ProductBean findbyPrimaryKey(ProductBean pb) throws SQLException;

	List<ProductBean> getALL() throws SQLException;
}
