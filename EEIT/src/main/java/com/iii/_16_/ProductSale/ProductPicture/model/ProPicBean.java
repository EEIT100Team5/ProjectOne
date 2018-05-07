package com.iii._16_.ProductSale.ProductPicture.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;
@Entity
@Table(name="ProductPicture")
public class ProPicBean {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer picSeqNo;
	private Integer ProPicSerial;
	private String ProPicName;
	private String ProPicPath;
	private String ProPicMain;
	
	private Integer productSeqNo;
	
	@Transient
	private MultipartFile ProPicFile;

	public Integer getPicSeqNo() {
		return picSeqNo;
	}

	public void setPicSeqNo(Integer picSeqNo) {
		this.picSeqNo = picSeqNo;
	}

	public Integer getProPicSerial() {
		return ProPicSerial;
	}

	public void setProPicSerial(Integer proPicSerial) {
		ProPicSerial = proPicSerial;
	}

	public String getProPicName() {
		return ProPicName;
	}

	public void setProPicName(String proPicName) {
		ProPicName = proPicName;
	}

	public String getProPicPath() {
		return ProPicPath;
	}

	public void setProPicPath(String proPicPath) {
		ProPicPath = proPicPath;
	}

	public Integer getProductSeqNo() {
		return productSeqNo;
	}

	public void setProductSeqNo(Integer productSeqNo) {
		this.productSeqNo = productSeqNo;
	}

	public String getProPicMain() {
		return ProPicMain;
	}

	public void setProPicMain(String proPicMain) {
		ProPicMain = proPicMain;
	}

	public MultipartFile getProPicFile() {
		return ProPicFile;
	}

	public void setProPicFile(MultipartFile proPicFile) {
		ProPicFile = proPicFile;
	}

	public ProPicBean(Integer picSeqNo, Integer proPicSerial, String proPicName, String proPicPath,
			Integer productSeqNo, String proPicMain) {
		super();
		this.picSeqNo = picSeqNo;
		ProPicSerial = proPicSerial;
		ProPicName = proPicName;
		ProPicPath = proPicPath;
		this.productSeqNo = productSeqNo;
		ProPicMain = proPicMain;
	}

	public ProPicBean() {
		super();
	}

	@Override
	public String toString() {
		return "ProPicBean [picSeqNo=" + picSeqNo + ", ProPicSerial=" + ProPicSerial + ", ProPicName=" + ProPicName
				+ ", ProPicPath=" + ProPicPath + ", productSeqNo=" + productSeqNo + ", ProPicMain=" + ProPicMain + "]";
	}
	
	
}
