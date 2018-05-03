package com.iii._05_.AuctionItemSelect.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class AuctionItemSelectServiceImpl implements AuctionItemSelectService {

	@Autowired
	AuctionItemSelectDAO AuctionItemSelectDAO;
	
	@Override
	public List<AuctionItemSelectBean> getAuctionByAuctionSeqNo(Integer auctionSeqNo) {
		
		return AuctionItemSelectDAO.getAuctionByAuctionSeqNo(auctionSeqNo);
	}

	@Override
	public List<AuctionItemSelectBean> getAuctionByProductSeqNo(Integer productSeqNo) {
		
		return AuctionItemSelectDAO.getAuctionByProductSeqNo(productSeqNo);
	}

	@Override
	public List<AuctionItemSelectBean> getAllLiveAuction() {
		return AuctionItemSelectDAO.getAllLiveAuction();
	}

	@Override
	public List<AuctionItemSelectBean> getAuctionByAccount(String account) {

		return AuctionItemSelectDAO.getAuctionByAccount(account);
	}

	@Override
	public int saveAuction(AuctionItemSelectBean AuctionItemSelectBean) {
		
		return AuctionItemSelectDAO.saveAuction(AuctionItemSelectBean);
	}

	@Override
	public void updateAuction(AuctionItemSelectBean AuctionItemSelectBean) {
		AuctionItemSelectDAO.updateAuction(AuctionItemSelectBean);
		
	}

	@Override
	public void deleteAuction(AuctionItemSelectBean AuctionItemSelectBean) {
		AuctionItemSelectDAO.deleteAuction(AuctionItemSelectBean);
		
	}

}
