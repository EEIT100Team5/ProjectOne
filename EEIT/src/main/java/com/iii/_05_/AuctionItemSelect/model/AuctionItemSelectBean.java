package com.iii._05_.AuctionItemSelect.model;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Auction")
public class AuctionItemSelectBean {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer auctionSeqNo;
	private String account;
	private Timestamp aucBegin;
	private Timestamp aucEnd;
	private Integer LiveStreamSeqNo;
	private Integer productSeqNo;
	

	
	/**
	 * @param account
	 * @param auctionSeqNo
	 * @param aucBegin
	 * @param aucEnd
	 * @param liveStreamSeqNo
	 * @param productSeqNo
	 */
	public AuctionItemSelectBean(String account, Timestamp aucBegin, Timestamp aucEnd,
			Integer liveStreamSeqNo, Integer productSeqNo) {
		super();
		this.account = account;
//		this.auctionSeqNo = auctionSeqNo;
		this.aucBegin = aucBegin;
		this.aucEnd = aucEnd;
		LiveStreamSeqNo = liveStreamSeqNo;
		this.productSeqNo = productSeqNo;
	}
	
	
	
	/**
	 * 
	 */
	public AuctionItemSelectBean() {
		super();

	}



	@Override
	public String toString() {
		return "AuctionItemSelectBean [auctionSeqNo=" + auctionSeqNo + ", account=" + account + ", aucBegin=" + aucBegin
				+ ", aucEnd=" + aucEnd + ", LiveStreamSeqNo=" + LiveStreamSeqNo + ", productSeqNo=" + productSeqNo
				+ "]";
	}



	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public Integer getAuctionSeqNo() {
		return auctionSeqNo;
	}
	public void setAuctionSeqNo(Integer auctionSeqNo) {
		this.auctionSeqNo = auctionSeqNo;
	}
	public Timestamp getAucBegin() {
		return aucBegin;
	}
	public void setAucBegin(Timestamp aucBegin) {
		this.aucBegin = aucBegin;
	}
	public Timestamp getAucEnd() {
		return aucEnd;
	}
	public void setAucEnd(Timestamp aucEnd) {
		this.aucEnd = aucEnd;
	}
	public Integer getLiveStreamSeqNo() {
		return LiveStreamSeqNo;
	}
	public void setLiveStreamSeqNo(Integer liveStreamSeqNo) {
		LiveStreamSeqNo = liveStreamSeqNo;
	}
	public Integer getProductSeqNo() {
		return productSeqNo;
	}
	public void setProductSeqNo(Integer productSeqNo) {
		this.productSeqNo = productSeqNo;
	}
	
	
	
}
