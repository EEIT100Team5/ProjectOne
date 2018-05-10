package com.iii._19_.notificationRecording.model;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "NotificationRecording")
public class NotificationRecordingBean {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer notificationRecordingSeqNo;
	private String account;
	private Integer notificationSeqNo;
	private String notificationRecordingStatus;
	private Timestamp notificationDate;
	private Timestamp notificationReadDate;

	public NotificationRecordingBean(Integer notificationRecordingSeqNo, String account, Integer notificationSeqNo,
			String notificationRecordingStatus, Timestamp notificationDate, Timestamp notificationReadDate) {
		super();
		this.notificationRecordingSeqNo = notificationRecordingSeqNo;
		this.account = account;
		this.notificationSeqNo = notificationSeqNo;
		this.notificationRecordingStatus = notificationRecordingStatus;
		this.notificationDate = notificationDate;
		this.notificationReadDate = notificationReadDate;
	}

	public NotificationRecordingBean() {

	}

	public Integer getNotificationRecordingSeqNo() {
		return notificationRecordingSeqNo;
	}

	public void setNotificationRecordingSeqNo(Integer notificationRecordingSeqNo) {
		this.notificationRecordingSeqNo = notificationRecordingSeqNo;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public Integer getNotificationSeqNo() {
		return notificationSeqNo;
	}

	public void setNotificationSeqNo(Integer notificationSeqNo) {
		this.notificationSeqNo = notificationSeqNo;
	}

	public String getNotificationRecordingStatus() {
		return notificationRecordingStatus;
	}

	public void setNotificationRecordingStatus(String notificationRecordingStatus) {
		this.notificationRecordingStatus = notificationRecordingStatus;
	}

	public Timestamp getNotificationDate() {
		return notificationDate;
	}

	public void setNotificationDate(Timestamp notificationDate) {
		this.notificationDate = notificationDate;
	}

	public Timestamp getNotificationReadDate() {
		return notificationReadDate;
	}

	public void setNotificationReadDate(Timestamp notificationReadDate) {
		this.notificationReadDate = notificationReadDate;
	}

	@Override
	public String toString() {
		return "NotificationRecordingBean [notificationRecordingSeqNo=" + notificationRecordingSeqNo + ", account="
				+ account + ", notificationSeqNo=" + notificationSeqNo + ", notificationRecordingStatus="
				+ notificationRecordingStatus + ", notificationDate=" + notificationDate + ", notificationReadDate="
				+ notificationReadDate + "]";
	}

}
