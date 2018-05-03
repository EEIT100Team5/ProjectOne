package com.iii._01_.Member.dao;

import java.sql.SQLException;
import java.util.List;

import com.iii._01_.Member.bean.MemberBean;




public interface MemberDAO {

	MemberBean selectMember(String account);

	List<MemberBean> selectAllMember();

	MemberBean insertMember(MemberBean bean) throws SQLException;

	void deleteMember(String account);

	void updateMember(MemberBean bean) throws SQLException;

}