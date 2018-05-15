package com.iii._03_ExpressShipping;

import java.sql.SQLException;
import java.util.List;


public interface ExpressShippingDao {
	ExpressShippingBean insert(ExpressShippingBean expressbean) throws SQLException;

	ExpressShippingBean update(ExpressShippingBean expressbean) throws SQLException;

	ExpressShippingBean delete(ExpressShippingBean expressbean) throws SQLException;

	ExpressShippingBean findbyPrimaryKey(ExpressShippingBean expressbean) throws SQLException;

	List<ExpressShippingBean> getALL() throws SQLException;
}