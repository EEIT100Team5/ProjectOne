package com.iii._16_.ProductSale.Product.model;

import java.sql.SQLException;
import java.util.List;



public interface ProductSaleDao {
	ProductSaleBean insert(ProductSaleBean pdb) throws SQLException;

	ProductSaleBean update(ProductSaleBean pdb) throws SQLException;

	ProductSaleBean delete(ProductSaleBean pdb) throws SQLException;

	ProductSaleBean findbyPrimaryKey(ProductSaleBean pdb) throws SQLException;

	List<ProductSaleBean> getALL() throws SQLException;

}
