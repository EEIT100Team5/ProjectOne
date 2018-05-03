package com.iii._05_.Bid.model;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Bid")
public class BidBean {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer auctionSeqNo;
	private Integer bidSeqNo;
	private Timestamp bidTime;
	private String bidPrice;

	
	/**
	 * @param auctionSeqNo
	 * @param bidSeqNo
	 * @param bidTime
	 * @param bidPrice
	 */
	public BidBean(Integer auctionSeqNo, Integer bidSeqNo, Timestamp bidTime, String bidPrice) {
		super();
		this.auctionSeqNo = auctionSeqNo;
		this.bidSeqNo = bidSeqNo;
		this.bidTime = bidTime;
		this.bidPrice = bidPrice;
	}
	public Integer getAuctionSeqNo() {
		return auctionSeqNo;
	}
	public void setAuctionSeqNo(Integer auctionSeqNo) {
		this.auctionSeqNo = auctionSeqNo;
	}
	public Integer getBidSeqNo() {
		return bidSeqNo;
	}
	public void setBidSeqNo(Integer bidSeqNo) {
		this.bidSeqNo = bidSeqNo;
	}
	public Timestamp getBidTime() {
		return bidTime;
	}
	public void setBidTime(Timestamp bidTime) {
		this.bidTime = bidTime;
	}
	public String getBidPrice() {
		return bidPrice;
	}
	public void setBidPrice(String bidPrice) {
		this.bidPrice = bidPrice;
	}
	
	
	
}
