package com.iii._16_.ProductSale.ProductPicture.model;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.iii._16_.ProductSale.Product.model.ProductSaleBean;

@Service
public class ProPicService {
	@Autowired
	private ProPicDaoImpl dao;
	@Transactional
	public ProPicBean insert(ProPicBean bean) throws SQLException {
		ProPicBean result = null;
		if (bean != null) {
			result = dao.insert(bean);
			return result;
		}
		return null;
	}
}
