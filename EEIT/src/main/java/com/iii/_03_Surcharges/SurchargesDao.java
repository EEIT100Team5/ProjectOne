package com.iii._03_Surcharges;

import java.sql.SQLException;
import java.util.List;


public interface SurchargesDao {
	SurchargesBean insert(SurchargesBean chargesbean) throws SQLException;

	SurchargesBean update(SurchargesBean chargesbean) throws SQLException;

	SurchargesBean delete(SurchargesBean chargesbean) throws SQLException;

	SurchargesBean findbyPrimaryKey(SurchargesBean chargesbean) throws SQLException;

	List<SurchargesBean> getALL() throws SQLException;
}