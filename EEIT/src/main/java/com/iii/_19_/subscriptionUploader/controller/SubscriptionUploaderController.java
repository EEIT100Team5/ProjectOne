package com.iii._19_.subscriptionUploader.controller;

import java.sql.Timestamp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iii._19_.subscriptionUploader.model.SubscriptionUploaderBean;
import com.iii._19_.subscriptionUploader.model.SubscriptionUploaderService;

@Controller
@RequestMapping("subscriptionUploader")
public class SubscriptionUploaderController {

	@Autowired
	SubscriptionUploaderService subscriptionUploaderService;

	@RequestMapping(method = RequestMethod.PUT)
	public @ResponseBody String updateSubscriptionUploader(@RequestParam("account") String account,
			@RequestParam("uploaderAccount") String uploaderAccount,
			@RequestParam("subscriptionUploaderStatus") String subscriptionUploaderStatus) {
		SubscriptionUploaderBean subscriptionUploaderBean = subscriptionUploaderService.getSubscriptionUploader(account, uploaderAccount);
		subscriptionUploaderBean.setSubscriptionUploaderStatus("nonSubscription");
		subscriptionUploaderService.updateSubscriptionUploader(subscriptionUploaderBean);
		return "OK";
	}

	@RequestMapping(method = RequestMethod.POST)
	public @ResponseBody String saveSubscriptionUploader(
			@RequestParam("account") String account,
			@RequestParam("uploaderAccount") String uploaderAccount,
			@RequestParam("subscriptionUploaderStatus") String subscriptionUploaderStatus
			) {
		SubscriptionUploaderBean subscriptionUploaderBean = subscriptionUploaderService.getSubscriptionUploader(account, uploaderAccount);
		Timestamp now = new java.sql.Timestamp(System.currentTimeMillis());
		if(subscriptionUploaderBean == null) {
			subscriptionUploaderBean = new SubscriptionUploaderBean(0, account, uploaderAccount, "subscription", now, 0);
			subscriptionUploaderService.saveSubscriptionUploader(subscriptionUploaderBean);
		}else if(subscriptionUploaderBean != null) {
			subscriptionUploaderBean.setSubscriptionUploaderStatus("subscription");
			subscriptionUploaderService.updateSubscriptionUploader(subscriptionUploaderBean);
		}
		return "OK";
	}

	@RequestMapping(value = "{subscriptionUploaderSeqNo}", method = RequestMethod.DELETE)
	public String deleteSubscriptionUploader(
			@PathVariable("subscriptionUploaderSeqNo") Integer subscriptionUplaoderSeqNo) {

		return "OK";
	}

	@RequestMapping(value = "{subscriptionUploaderSeqNo}", method = RequestMethod.GET)
	public String getSubscriptionUploader(
			@PathVariable("subscriptionUploaderSeqNo") Integer subscripitonUploaderSeqNo) {

		return "OK";
	}

	@RequestMapping(method = RequestMethod.GET)
	public String getAllSubscriptionUploader() {

		return "OK";
	}

}
