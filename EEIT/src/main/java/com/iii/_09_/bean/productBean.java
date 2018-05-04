package com.iii._09_.bean;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.xml.bind.annotation.XmlTransient;

import org.springframework.web.multipart.MultipartFile;

//商成/商品
@Entity
@Table(name = "Product")
public class productBean {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer productSeqNo; // 產品編號
	private String proName;// 產品名稱
	private double price; // 產品價格
	private Integer brandSeqNo;// 品牌
	private String proSpeicNo1; // 產品敘述 1
	private String proSpeicNo2; // 產品敘述 2
	private Integer picSeqNo;// 產品圖片編號
	private double prostock; // 庫存
	private double prodiscount;// 折扣
	private String className;// 商品名稱
	private String account;// 賣家帳號
	private java.util.Date proDate;// 上架時間
	private String prostatus;// 商品狀態
	private String volume;// 商品材積
	private double weight;// 商品重量(單位:公斤)
	private String transport;// 運送方式
	private String proPicPath;// 商品圖片
	private Integer categorySeqNo;//廠牌編號

	@Transient
	@XmlTransient
	private MultipartFile proPic;//商品圖片

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

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public Integer getBrandSeqNo() {
		return brandSeqNo;
	}

	public void setBrandSeqNo(Integer brandSeqNo) {
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

	public Integer getPicSeqNo() {
		return picSeqNo;
	}

	public void setPicSeqNo(Integer picSeqNo) {
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
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
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

	public String getProPicPath() {
		return proPicPath;
	}

	public void setProPicPath(String proPicPath) {
		this.proPicPath = proPicPath;
	}

	public Integer getCategorySeqNo() {
		return categorySeqNo;
	}

	public void setCategorySeqNo(Integer categorySeqNo) {
		this.categorySeqNo = categorySeqNo;
	}

	public MultipartFile getProPic() {
		return proPic;
	}

	public void setProPic(MultipartFile proPic) {
		this.proPic = proPic;
	}

	@Override
	public String toString() {
		return "productBean [productSeqNo=" + productSeqNo + ", proName=" + proName + ", price=" + price
				+ ", brandSeqNo=" + brandSeqNo + ", proSpeicNo1=" + proSpeicNo1 + ", proSpeicNo2=" + proSpeicNo2
				+ ", picSeqNo=" + picSeqNo + ", prostock=" + prostock + ", prodiscount=" + prodiscount + ", className="
				+ className + ", account=" + account + ", proDate=" + proDate + ", prostatus=" + prostatus + ", volume="
				+ volume + ", weight=" + weight + ", transport=" + transport + ", proPicPath=" + proPicPath
				+ ", categorySeqNo=" + categorySeqNo + ", proPic=" + proPic + "]";
	}

	public productBean(Integer productSeqNo, String proName, double price, Integer brandSeqNo, String proSpeicNo1,
			String proSpeicNo2, Integer picSeqNo, double prostock, double prodiscount, String className, String account,
			Date proDate, String prostatus, String volume, double weight, String transport, String proPicPath,
			Integer categorySeqNo, MultipartFile proPic) {
		super();
		this.productSeqNo = productSeqNo;
		this.proName = proName;
		this.price = price;
		this.brandSeqNo = brandSeqNo;
		this.proSpeicNo1 = proSpeicNo1;
		this.proSpeicNo2 = proSpeicNo2;
		this.picSeqNo = picSeqNo;
		this.prostock = prostock;
		this.prodiscount = prodiscount;
		this.className = className;
		this.account = account;
		this.proDate = proDate;
		this.prostatus = prostatus;
		this.volume = volume;
		this.weight = weight;
		this.transport = transport;
		this.proPicPath = proPicPath;
		this.categorySeqNo = categorySeqNo;
		this.proPic = proPic;
	}

	public productBean() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	
}
