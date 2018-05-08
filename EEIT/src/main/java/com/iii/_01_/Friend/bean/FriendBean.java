package com.iii._01_.Friend.bean;

import java.sql.Timestamp;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public class FriendBean {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer friendseqNo;
	private String friendSend;
	private String friendTo;
	private Timestamp time;
	private Integer friendStatus;

	public FriendBean() {
		super();
	}

	public FriendBean(String friendSend, String friendTo, Timestamp time, Integer friendStatus) {
		super();
		this.friendSend = friendSend;
		this.friendTo = friendTo;
		this.time = time;
		this.friendStatus = friendStatus;
	}

	@Override
	public String toString() {
		return "FriendBean [friendseqNo=" + friendseqNo + ", friendSend=" + friendSend + ", friendTo=" + friendTo
				+ ", time=" + time + ", friendStatus=" + friendStatus + "]";
	}

	public String getFriendSend() {
		return friendSend;
	}

	public void setFriendSend(String friendSend) {
		this.friendSend = friendSend;
	}

	public String getFriendTo() {
		return friendTo;
	}

	public void setFriendTo(String friendTo) {
		this.friendTo = friendTo;
	}

	public Timestamp getTime() {
		return time;
	}

	public void setTime(Timestamp time) {
		this.time = time;
	}

	public Integer getFriendStatus() {
		return friendStatus;
	}

	public void setFriendStatus(Integer friendStatus) {
		this.friendStatus = friendStatus;
	}

	public Integer getFriendseqNo() {
		return friendseqNo;
	}

	
	
	
}
