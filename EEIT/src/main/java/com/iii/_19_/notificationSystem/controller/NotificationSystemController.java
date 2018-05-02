package com.iii._19_.notificationSystem.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.iii._19_.notificationSystem.model.NotificationSystemBean;
import com.iii._19_.notificationSystem.model.NotificationSystemService;

@Controller
@RequestMapping("NotificationSystem")
public class NotificationSystemController {
	
	@Autowired
	NotificationSystemService notificationSystemService;

	@RequestMapping(value = "{account}",method=RequestMethod.GET)
	public String getReplyCommentVideoByAccount(@PathVariable("account") String account) {
		List<NotificationSystemBean> notificationSystemBeanList = notificationSystemService.getReplyCommentVideoByAccount(account);
		return "OK";
	}

	@RequestMapping(method=RequestMethod.GET)
	public String getAllReplyCommentVideo() {
		List<NotificationSystemBean> notificationSystemBeanList = notificationSystemService.getAllReplyCommentVideo();
		return "OK";
	}

//	@RequestMapping(value = "{notificationSeqNo}",method=RequestMethod.GET)
	public String getNotificationSystemBySeqNo(@PathVariable("notificationSeqNo") Integer notificationSeqNo) {
		NotificationSystemBean notificationSystemBean = notificationSystemService.getNotificationSystemBySeqNo(notificationSeqNo);
		return "OK";
	}

	@RequestMapping(method=RequestMethod.POST)
	public String saveNotificationSystem(@ModelAttribute NotificationSystemBean notificationSystemBean) {
		Integer key = notificationSystemService.saveNotificationSystem(notificationSystemBean);
		return "OK";
	}

	@RequestMapping(method=RequestMethod.PUT)
	public String updateNotificationSystem(@ModelAttribute NotificationSystemBean notificationSystemBean) {
		notificationSystemService.updateNotificationSystem(notificationSystemBean);
		return "OK";
	}

	@RequestMapping(value = "{notificationSeqNo}", method=RequestMethod.DELETE)
	public String deleteNotificationSystem(@PathVariable("notificationSeqNo") Integer notificationSeqNo) {
		NotificationSystemBean notificationSystemBean = notificationSystemService.getNotificationSystemBySeqNo(notificationSeqNo);
		notificationSystemService.deleteNotificationSystem(notificationSystemBean);
		return "OK";
	}

}

