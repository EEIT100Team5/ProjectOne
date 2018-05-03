package com.iii._05_.AuctionItemSelect.model;

import java.util.List;

public interface AuctionItemSelectService {
public List<AuctionItemSelectBean> getAuctionByAuctionSeqNo(Integer auctionSeqNo);
	
	public List<AuctionItemSelectBean> getAuctionByProductSeqNo(Integer productSeqNo);
	
	public List<AuctionItemSelectBean> getAllLiveAuction();
	
	public List<AuctionItemSelectBean> getAuctionByAccount(String account);
	
	public int saveAuction(AuctionItemSelectBean AuctionItemSelectBean);

	public void updateAuction(AuctionItemSelectBean AuctionItemSelectBean);

	public void deleteAuction(AuctionItemSelectBean AuctionItemSelectBean);
}
