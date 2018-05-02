package com.iii._19_.notificationSystem.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NotificationSystemServiceImpl implements NotificationSystemService {

	@Autowired
	NotificationSystemDAO notificationSystemDAO;
	
	@Override
	public List<NotificationSystemBean> getReplyCommentVideoByAccount(String account) {
		return notificationSystemDAO.getReplyCommentVideoByAccount(account);
	}

	@Override
	public List<NotificationSystemBean> getAllReplyCommentVideo() {
		return notificationSystemDAO.getAllReplyCommentVideo();
	}

	@Override
	public NotificationSystemBean getNotificationSystemBySeqNo(Integer notificationSeqNo) {
		return notificationSystemDAO.getNotificationSystemBySeqNo(notificationSeqNo);
	}

	@Override
	public int saveNotificationSystem(NotificationSystemBean notificationSystemBean) {
		return notificationSystemDAO.saveNotificationSystem(notificationSystemBean);
	}

	@Override
	public void updateNotificationSystem(NotificationSystemBean notificationSystemBean) {
		notificationSystemDAO.updateNotificationSystem(notificationSystemBean);
	}

	@Override
	public void deleteNotificationSystem(NotificationSystemBean notificationSystemBean) {
		notificationSystemDAO.deleteNotificationSystem(notificationSystemBean);
	}
	

}
