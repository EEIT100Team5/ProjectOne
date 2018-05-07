package com.iii._16_.ProductSale.Product.model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "Product_1")
public class ProductSaleBean {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer productSeqNo;
	private String proName;
	private Integer proCategorySeqNo;
	private Integer proBrandSeqNo;
	private long proPrice;
	private Integer proStatus;
	private Integer proPayTypeSeqNo;
	private Integer proPcs;
	private String proDescription;
	private Integer proPicSeqNo;
	private Integer proTransSeqNo;
	private Integer proAdverSeqNo;
	private String proVolume;
	private Double proWeight;
	private java.util.Date proDate;
	
	@Transient
	private MultipartFile picFile;
	
	public MultipartFile getPicFile() {
		return picFile;
	}
	public void setPicFile(MultipartFile picFile) {
		this.picFile = picFile;
	}
	public Integer getProductSeqNo() {
		return productSeqNo;
	}
	public void setProductSeqNo(Integer productSeqNo) {
		this.productSeqNo = productSeqNo;
	}
	public String getProName() {
		return proName;
	}
	public void setProName(String proName) {
		this.proName = proName;
	}
	public Integer getProCategorySeqNo() {
		return proCategorySeqNo;
	}
	public void setProCategorySeqNo(Integer proCategorySeqNo) {
		this.proCategorySeqNo = proCategorySeqNo;
	}
	public Integer getProBrandSeqNo() {
		return proBrandSeqNo;
	}
	public void setProBrandSeqNo(Integer proBrandSeqNo) {
		this.proBrandSeqNo = proBrandSeqNo;
	}
	public long getProPrice() {
		return proPrice;
	}
	public void setProPrice(long proPrice) {
		this.proPrice = proPrice;
	}
	public Integer getProStatus() {
		return proStatus;
	}
	public void setProStatus(Integer proStatus) {
		this.proStatus = proStatus;
	}
	public Integer getProPayTypeSeqNo() {
		return proPayTypeSeqNo;
	}
	public void setProPayTypeSeqNo(Integer proPayTypeSeqNo) {
		this.proPayTypeSeqNo = proPayTypeSeqNo;
	}
	public Integer getProPcs() {
		return proPcs;
	}
	public void setProPcs(Integer proPcs) {
		this.proPcs = proPcs;
	}
	public String getProDescription() {
		return proDescription;
	}
	public void setProDescription(String proDescription) {
		this.proDescription = proDescription;
	}
	public Integer getProPicSeqNo() {
		return proPicSeqNo;
	}
	public void setProPicSeqNo(Integer proPicSeqNo) {
		this.proPicSeqNo = proPicSeqNo;
	}
	public Integer getProTransSeqNo() {
		return proTransSeqNo;
	}
	public void setProTransSeqNo(Integer proTransSeqNo) {
		this.proTransSeqNo = proTransSeqNo;
	}
	public Integer getProAdverSeqNo() {
		return proAdverSeqNo;
	}
	public void setProAdverSeqNo(Integer proAdverSeqNo) {
		this.proAdverSeqNo = proAdverSeqNo;
	}
	public String getProVolume() {
		return proVolume;
	}
	public void setProVolume(String proVolume) {
		this.proVolume = proVolume;
	}
	public Double getProWeight() {
		return proWeight;
	}
	public void setProWeight(Double proWeight) {
		this.proWeight = proWeight;
	}
	
	public java.util.Date getProDate() {
		return proDate;
	}
	public void setProDate(java.util.Date proDate) {
		this.proDate = proDate;
	}
	public ProductSaleBean(Integer productSeqNo, String proName, Integer proCategorySeqNo, Integer proBrandSeqNo,
			long proPrice, Integer proStatus, Integer proPayTypeSeqNo, Integer proPcs, String proDescription,
			Integer proPicSeqNo, Integer proTransSeqNo, Integer proAdverSeqNo, String proVolume, Double proWeight,
			Date proDate) {
		super();
		this.productSeqNo = productSeqNo;
		this.proName = proName;
		this.proCategorySeqNo = proCategorySeqNo;
		this.proBrandSeqNo = proBrandSeqNo;
		this.proPrice = proPrice;
		this.proStatus = proStatus;
		this.proPayTypeSeqNo = proPayTypeSeqNo;
		this.proPcs = proPcs;
		this.proDescription = proDescription;
		this.proPicSeqNo = proPicSeqNo;
		this.proTransSeqNo = proTransSeqNo;
		this.proAdverSeqNo = proAdverSeqNo;
		this.proVolume = proVolume;
		this.proWeight = proWeight;
		this.proDate = proDate;
	}
	public ProductSaleBean() {
		super();
	}
	@Override
	public String toString() {
		return "ProductSaleBean [productSeqNo=" + productSeqNo + ", proName=" + proName + ", proCategorySeqNo="
				+ proCategorySeqNo + ", proBrandSeqNo=" + proBrandSeqNo + ", proPrice=" + proPrice + ", proStatus="
				+ proStatus + ", proPayTypeSeqNo=" + proPayTypeSeqNo + ", proPcs=" + proPcs + ", proDescription="
				+ proDescription + ", proPicSeqNo=" + proPicSeqNo + ", proTransSeqNo=" + proTransSeqNo
				+ ", proAdverSeqNo=" + proAdverSeqNo + ", proVolume=" + proVolume + ", proWeight=" + proWeight
				+ ", proDate=" + proDate + "]";
	}

}
