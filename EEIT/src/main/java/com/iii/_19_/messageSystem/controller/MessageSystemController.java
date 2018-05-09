package com.iii._19_.messageSystem.controller;

import java.sql.Timestamp;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.DestinationVariable;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.iii._01_.Member.bean.MemberBean;
import com.iii._19_.messageSystem.model.MessageBean;
import com.iii._19_.messageSystem.model.MessageSystemService;

@Controller
public class MessageSystemController {
	@Autowired
	MessageSystemService messageSystemService;

	private SimpMessagingTemplate template;

	@Autowired
	public MessageSystemController(SimpMessagingTemplate template) {
		this.template = template;
	}

	@RequestMapping("message")
	public String getMessageSystem() {
		return "messageSystem/messageSystem";
	}

	@MessageMapping("messageSystem/{firstAccount}/{secondAccount}")
	@SendTo("/message/subscription/{firstAccount}/{secondAccount}")
	public MessageBean broadcastMessage(MessageBean messageBean,
			@DestinationVariable("firstAccount") String firstAccount,
			@DestinationVariable("secondAccount") String secondAccount
			) {
		System.out.println("----------------------------------------------------------------");
		System.out.println(firstAccount);
		System.out.println(secondAccount);
		System.out.println("----------------------------------------------------------------");
		System.out.println("broadcastMessage");
		Timestamp now = new java.sql.Timestamp(System.currentTimeMillis());
		messageBean.setMessageDate(now);
		messageBean.setMessageStatus("1");
		System.out.println("before = " + messageBean);
		int messageSeqNo = messageSystemService.saveMessage(messageBean);
		messageBean.setMessageSeqNo(messageSeqNo);
		System.out.println("after = " + messageBean);
		return messageBean;
	}
}
