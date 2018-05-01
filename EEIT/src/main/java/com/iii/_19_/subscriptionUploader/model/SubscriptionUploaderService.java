package com.iii._19_.subscriptionUploader.model;

import java.util.List;

public interface SubscriptionUploaderService {
	
	public SubscriptionUploaderBean getSubscriptionUploader(String account, String uploaderAccount);
	
	public List<SubscriptionUploaderBean> getAllSubscriptionUploader(String account);
	
	public Integer saveSubscriptionUploader(SubscriptionUploaderBean subscriptionUploaderBean);
	
	public void updateSubscriptionUploader(SubscriptionUploaderBean subscriptionUploaderBean);
	
	public void deleteSubscriptionUploader(SubscriptionUploaderBean subscriptionUploaderBean);
}
