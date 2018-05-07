package com.iii._01_.Member.service;

import java.sql.SQLException;

public interface ForgotPasswordService {

	public void updateNsendNewPassword(String email) throws SQLException;
	
	
}
