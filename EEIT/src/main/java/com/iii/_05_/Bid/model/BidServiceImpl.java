package com.iii._05_.Bid.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class BidServiceImpl implements BidService {

	@Autowired
	BidDAO BidDAO;
	
	@Override
	public List<BidBean> getBidByAuctionSeqNo(Integer auctionSeqNo) {
		
		return BidDAO.getBidByAuctionSeqNo(auctionSeqNo);
	}

	@Override
	public List<BidBean> getBidByBidSeqNo(Integer bidSeqNo) {

		return BidDAO.getBidByBidSeqNo(bidSeqNo);
	}

	@Override
	public List<BidBean> getAllBid() {
		return BidDAO.getAllBid();
	}

	@Override
	public int saveBid(BidBean BidBean) {

		return BidDAO.saveBid(BidBean);
	}

	@Override
	public void updateBid(BidBean BidBean) {
		BidDAO.updateBid(BidBean);
		
	}

	@Override
	public void deleteBid(BidBean BidBean) {
	
		BidDAO.deleteBid(BidBean);
	}

}
