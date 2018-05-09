package com.iii._16_.BuyCart.ProCartList.model;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iii._16_.BuyCart.ProCart.model.ProCartBean;
@Repository
public class ProCartListDaoImpl implements ProCartListDao{
	@Autowired	
	SessionFactory factory;

	@Override
	public ProCartListBean insert(ProCartListBean cartlist) throws SQLException {
		Session session = factory.getCurrentSession();
		session.save(cartlist);
		return cartlist;
	}

	@Override
	public ProCartListBean update(ProCartListBean cartlist) throws SQLException {
		Session session = factory.getCurrentSession();
		session.saveOrUpdate(cartlist);
		return cartlist;
	}

	@Override
	public ProCartListBean delete(ProCartListBean cartlist) throws SQLException {
		Session session = factory.getCurrentSession();
		ProCartListBean temp = session.get(ProCartListBean.class, cartlist.getProCartListSeqNo());
		if(temp!=null) {
			session.delete(temp);
			return temp;
		}
		return null;
	}

	@Override
	public ProCartListBean findbyPrimaryKey(int id) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProCartListBean> findbyAccount(String account) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProCartListBean> getALL() throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertGetId(ProCartListBean cartlist) {
		// TODO Auto-generated method stub
		return 0;
	}
}
