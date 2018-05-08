package com.iii._05_.InputLiveStreamTime.model;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "LiveStream")
public class InputLiveStreamTimeBean {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer LiveStreamSeqNo;
	private String account;
	private Timestamp LiveStart;
	private Timestamp LiveEnd;
	private Integer videoSeqNo;
	private String streamName;
	private String LiveStatus;
	
	/**
	 * @param liveStreamSeqNo
	 * @param account
	 * @param liveStart
	 * @param liveEnd
	 * @param videoSeqNo
	 * @param streamName
	 * @param liveNo
	 */
	
	

	
	@Override
	public String toString() {
		return "InputLiveStreamTimeBean [LiveStreamSeqNo=" + LiveStreamSeqNo + ", account=" + account + ", LiveStart="
				+ LiveStart + ", LiveEnd=" + LiveEnd + ", videoSeqNo=" + videoSeqNo + ", streamName=" + streamName
				+ ", LiveStatus=" + LiveStatus + "]";
	}

	/**
	 * @param liveStreamSeqNo
	 * @param account
	 * @param liveStart
	 * @param liveEnd
	 * @param videoSeqNo
	 * @param streamName
	 * @param liveStatus
	 */
	public InputLiveStreamTimeBean(Integer liveStreamSeqNo, String account, Timestamp liveStart, Timestamp liveEnd,
			Integer videoSeqNo, String streamName, String liveStatus) {
		super();
		LiveStreamSeqNo = liveStreamSeqNo;
		this.account = account;
		LiveStart = liveStart;
		LiveEnd = liveEnd;
		this.videoSeqNo = videoSeqNo;
		this.streamName = streamName;
		LiveStatus = liveStatus;
	}

	/**
	 * 
	 */
	public InputLiveStreamTimeBean() {
		super();
		
	}

	public Integer getLiveStreamSeqNo() {
		return LiveStreamSeqNo;
	}
	public void setLiveStreamSeqNo(Integer liveStreamSeqNo) {
		LiveStreamSeqNo = liveStreamSeqNo;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public Timestamp getLiveStart() {
		return LiveStart;
	}
	public void setLiveStart(Timestamp liveStart) {
		LiveStart = liveStart;
	}
	public Timestamp getLiveEnd() {
		return LiveEnd;
	}
	public void setLiveEnd(Timestamp liveEnd) {
		LiveEnd = liveEnd;
	}
	public Integer getVideoSeqNo() {
		return videoSeqNo;
	}
	public void setVideoSeqNo(Integer videoSeqNo) {
		this.videoSeqNo = videoSeqNo;
	}
	public String getStreamName() {
		return streamName;
	}
	public void setStreamName(String streamName) {
		this.streamName = streamName;
	}

	public String getLiveStatus() {
		return LiveStatus;
	}

	public void setLiveStatus(String liveStatus) {
		LiveStatus = liveStatus;
	}

	
	
	
}
