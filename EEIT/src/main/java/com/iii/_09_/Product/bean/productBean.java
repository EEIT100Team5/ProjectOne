package com.iii._09_.Product.bean;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.xml.bind.annotation.XmlTransient;

import org.springframework.web.multipart.MultipartFile;


@Entity
@Table(name = "dbo.product")
public class productBean {
	
    //右鍵>source>Generate Constructor from superclass
	public productBean() {
		super();
	}
	
	//右鍵>source>Generate Constructor using Fields
	public productBean(MultipartFile proPicPath, int productSeqNo, String proName, double price, int brandSeqNo,
			String proSpeicNo1, String proSpeicNo2, int picSeqNo, double prostock, double prodiscount, String className,
			int categorySeqNo, String account, Date proDate, String prostatus, String volume, double weight,
			String transport) {
		super();
		this.proPicPath = proPicPath;
		this.productSeqNo = productSeqNo;
		this.proName = proName;
		this.price = price;
		this.brandSeqNo = brandSeqNo;
		this.proSpeicNo1 = proSpeicNo1;
		this.proSpeicNo2 = proSpeicNo2;
		this.picSeqNo = picSeqNo;
		this.prostock = prostock;
		this.prodiscount = prodiscount;
		this.ClassName = className;
		this.categorySeqNo = categorySeqNo;
		this.account = account;
		this.proDate = proDate;
		this.prostatus = prostatus;
		this.volume = volume;
		this.weight = weight;
		this.transport = transport;
	}
	

	@Transient
	@XmlTransient
	private MultipartFile proPicPath;
	

	public MultipartFile getProPicPath() {
		return proPicPath;
	}
	
	public void setProPicPath(MultipartFile proPicPath) {
		this.proPicPath = proPicPath;
	}
	

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int productSeqNo; //產品編號
	private String proName;//產品名稱
//	private String proPicPath;//產品大頭照路徑  圖片獨立寫一個方法
	private double price; //產品價格
	private int brandSeqNo;//品牌
	private String proSpeicNo1; //產品敘述	1
	private String proSpeicNo2; //產品敘述	2
	private int picSeqNo;//產品圖片路徑(資料夾) 圖片獨立寫一個方法
	private double prostock; //庫存										
	private double prodiscount;//折扣
	private String ClassName;//商品名稱
	private int categorySeqNo; //商品類別
	private String account;//賣家帳號
	private java.util.Date proDate;//上架時間
	private String prostatus;//商品狀態
	private String volume;//商品材積
	private double weight;//商品重量(單位:公斤)
	private String transport;//運送方式

	//右鍵>source>getter&setter
	public int getProductSeqNo() {
		return productSeqNo;
	}

	public void setProductSeqNo(int productSeqNo) {
		this.productSeqNo = productSeqNo;
	}

	public String getProName() {
		return proName;
	}

	public void setProName(String proName) {
		this.proName = proName;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getBrandSeqNo() {
		return brandSeqNo;
	}

	public void setBrandSeqNo(int brandSeqNo) {
		this.brandSeqNo = brandSeqNo;
	}

	public String getProSpeicNo1() {
		return proSpeicNo1;
	}

	public void setProSpeicNo1(String proSpeicNo1) {
		this.proSpeicNo1 = proSpeicNo1;
	}

	public String getProSpeicNo2() {
		return proSpeicNo2;
	}

	public void setProSpeicNo2(String proSpeicNo2) {
		this.proSpeicNo2 = proSpeicNo2;
	}

	public int getPicSeqNo() {
		return picSeqNo;
	}

	public void setPicSeqNo(int picSeqNo) {
		this.picSeqNo = picSeqNo;
	}

	public double getProstock() {
		return prostock;
	}

	public void setProstock(double prostock) {
		this.prostock = prostock;
	}

	public double getProdiscount() {
		return prodiscount;
	}

	public void setProdiscount(double prodiscount) {
		this.prodiscount = prodiscount;
	}

	public String getClassName() {
		return ClassName;
	}

	public void setClassName(String className) {
		ClassName = className;
	}

	public int getCategorySeqNo() {
		return categorySeqNo;
	}

	public void setCategorySeqNo(int categorySeqNo) {
		this.categorySeqNo = categorySeqNo;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public java.util.Date getProDate() {
		return proDate;
	}

	public void setProDate(java.util.Date proDate) {
		this.proDate = proDate;
	}

	public String getProstatus() {
		return prostatus;
	}

	public void setProstatus(String prostatus) {
		this.prostatus = prostatus;
	}

	public String getVolume() {
		return volume;
	}

	public void setVolume(String volume) {
		this.volume = volume;
	}

	public double getWeight() {
		return weight;
	}

	public void setWeight(double weight) {
		this.weight = weight;
	}

	public String getTransport() {
		return transport;
	}

	public void setTransport(String transport) {
		this.transport = transport;
	}

	@Override
	public String toString() {
		return "productBean [proPicPath=" + proPicPath + ", productSeqNo=" + productSeqNo + ", proName=" + proName
				+ ", price=" + price + ", brandSeqNo=" + brandSeqNo + ", proSpeicNo1=" + proSpeicNo1 + ", proSpeicNo2="
				+ proSpeicNo2 + ", picSeqNo=" + picSeqNo + ", prostock=" + prostock + ", prodiscount=" + prodiscount
				+ ", ClassName=" + ClassName + ", categorySeqNo=" + categorySeqNo + ", account=" + account
				+ ", proDate=" + proDate + ", prostatus=" + prostatus + ", volume=" + volume + ", weight=" + weight
				+ ", transport=" + transport + "]";
	}
	
	
	
}
