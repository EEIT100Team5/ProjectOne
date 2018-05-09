package com.iii._16_.BuyCart.ProCartList.model;

import java.sql.SQLException;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ProCartListService {
	@Autowired
	private ProCartListDaoImpl dao;
	@Transactional
	public  ProCartListBean insert( ProCartListBean bean) throws SQLException {
		ProCartListBean result = null;
		if (bean != null) {
			result = dao.insert(bean);
			return result;
		}
		return null;
	}

}
