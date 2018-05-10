package com.iii._16_.BuyCart.ProCartList.model;

import java.sql.SQLException;
import java.util.List;

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
	//用account搜尋商品
		@Transactional
		public List<ProCartListBean> getByAccount(String account) throws SQLException{
			List<ProCartListBean> list = dao.findbyAccount(account);
			return list;
		}

}
