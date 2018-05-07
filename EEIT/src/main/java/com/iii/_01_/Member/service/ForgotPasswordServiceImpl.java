package com.iii._01_.Member.service;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.iii._01_.Member.bean.MemberBean;
import com.iii._01_.Member.dao.MemberDAO;

@Service
@Transactional
public class ForgotPasswordServiceImpl implements ForgotPasswordService {

	@Autowired
	MemberDAO dao;
	
	@Autowired
    private MailSender mailSender;
	
	@Override
	public void updateNsendNewPassword(String email) throws SQLException {
		
		MemberBean mb =  dao.getMemberByEmail(email);
		if(mb!=null) {
		
		String newPassword = getRandomString();
		mb.setPassword(newPassword);
		dao.updateMember(mb);
		
		SimpleMailMessage message = new SimpleMailMessage();
        message.setFrom("projectstorageeeit100@gmail.com");//發件人
        message.setTo(email);//收件人
        message.setSubject("密碼重設");//主题
        message.setText("您的帳號:"+ mb.getAccount() + "您的新密碼是" + newPassword + "登入後請盡速修改。");//正文
        mailSender.send(message);
        System.out.println("發送完成");
		
		}
	}

	
	
	
	
	public static String getRandomString()
	{
		char seeds[] = {'a','b','c','d','e','f','g','i','j','k','l','0','1','2','3','4','5','6','7','8','9','0'};
		int strLen = (int)Math.round(Math.random() * 10) + 5;
		char randStr[] = new char[strLen];
		for (int i=0;i<randStr.length;i++)
		{
			randStr[i] = seeds[(int)Math.round(Math.random() * (seeds.length - 1))];
		}
		String returnStr = new String(randStr);
		return returnStr; 
	}
	

}
