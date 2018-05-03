package com.iii._01_.Member.dao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iii._01_.Member.bean.MemberBean;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public MemberBean selectMember(String account) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(MemberBean.class, account);

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<MemberBean> selectAllMember() {
		Session session = sessionFactory.getCurrentSession();
		return (List<MemberBean>) session.createQuery("from MEMBER").list();

	}

	@Override
	public MemberBean insertMember(MemberBean bean) throws SQLException {
		Session session = sessionFactory.getCurrentSession();
		session.save(bean);
		return bean;
	}

	@Override
	public void deleteMember(String account) {

		Session session = sessionFactory.getCurrentSession();
		MemberBean bean = session.get(MemberBean.class, account);
		if (bean != null) {
			session.delete(bean);
		}
		return;
	}

	@Override
	public void updateMember(MemberBean bean) throws SQLException {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(bean);
	}

}
