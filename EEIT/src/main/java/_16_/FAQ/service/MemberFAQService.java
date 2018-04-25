package _16_.FAQ.service;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import _16_.FAQ.bean.MemberFAQBean;
import _16_.FAQ.dao.MemberFAQDaoImpl;

@Service
public class MemberFAQService {
	@Autowired
	private MemberFAQDaoImpl dao;
	
	@Transactional
	public MemberFAQBean insert(MemberFAQBean bean) throws SQLException {
		MemberFAQBean result =null;
		if(bean!=null) {
			result = dao.insert(bean);
		return result;
		}
		return null;
	}
	@Transactional
	public List<MemberFAQBean> getALL() throws SQLException {
		List<MemberFAQBean> resultlist = null;
		resultlist = dao.getALL();
	
		return resultlist;
	}
	@Transactional
	public MemberFAQBean select(MemberFAQBean bean) throws SQLException {
		MemberFAQBean result =null;
		result = dao.findbyPrimaryKey(bean);
		if(result!=null) {
		return result;
		}
		return null;
	}
	
}
