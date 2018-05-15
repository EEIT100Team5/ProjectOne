package com.iii._03_ExpressShipmentsTracking;

import java.sql.SQLException;
import java.util.List;


public interface ExpressShipmentsTrackingDao {
	ExpressShipmentsTrackingBean insert(ExpressShipmentsTrackingBean trackbean) throws SQLException;

	ExpressShipmentsTrackingBean update(ExpressShipmentsTrackingBean trackbean) throws SQLException;

	ExpressShipmentsTrackingBean delete(ExpressShipmentsTrackingBean trackbean) throws SQLException;

	ExpressShipmentsTrackingBean findbyPrimaryKey(ExpressShipmentsTrackingBean trackbean) throws SQLException;

	List<ExpressShipmentsTrackingBean> getALL() throws SQLException;
}