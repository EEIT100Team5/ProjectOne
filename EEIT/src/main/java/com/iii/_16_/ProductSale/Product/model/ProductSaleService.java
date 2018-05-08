package com.iii._16_.ProductSale.Product.model;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;





@Service
public class ProductSaleService {
	@Autowired
	private ProductSaleDaoImpl dao;
	@Transactional
	public ProductSaleBean insert(ProductSaleBean bean) throws SQLException {
		ProductSaleBean result = null;
		if (bean != null) {
			result = dao.insert(bean);
			return result;
		}
		return null;
	}

}
