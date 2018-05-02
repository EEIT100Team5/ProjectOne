package com.iii._16_.Product.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="product")
public class ProductBean {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer productSeqNo ;  //產品編號
	private String proName;         //產品名稱
	private String proPicPath;		//產品大頭照路徑
	private Double price;           //產品價格
	private Integer brandSeqNo;     //品牌編號
	private String proSpeicNo1;		//產品敘述	1
	private String proSpeicNo2;		//產品敘述	2
	private String proPicFile;		//產品圖片路徑(資料夾)
	private Double prostock;		//庫存										
	private Double prodiscount;		//折扣
	private Integer ProductClassSeqNo;//商品類別
	private String account;			//賣家帳號
	private java.util.Date datetime;//上架時間
	private Integer prostatus; 		//商品狀態
	
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
	public String getProPicPath() {
		return proPicPath;
	}
	public void setProPicPath(String proPicPath) {
		this.proPicPath = proPicPath;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
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
	public String getProPicFile() {
		return proPicFile;
	}
	public void setProPicFile(String proPicFile) {
		this.proPicFile = proPicFile;
	}
	public Double getProstock() {
		return prostock;
	}
	public void setProstock(Double prostock) {
		this.prostock = prostock;
	}
	public Double getProdiscount() {
		return prodiscount;
	}
	public void setProdiscount(Double prodiscount) {
		this.prodiscount = prodiscount;
	}
	public Integer getProductClassSeqNo() {
		return ProductClassSeqNo;
	}
	public void setProductClassSeqNo(Integer productClassSeqNo) {
		ProductClassSeqNo = productClassSeqNo;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public java.util.Date getDatetime() {
		return datetime;
	}
	public void setDatetime(java.util.Date datetime) {
		this.datetime = datetime;
	}
	public Integer getProstatus() {
		return prostatus;
	}
	public void setProstatus(Integer prostatus) {
		this.prostatus = prostatus;
	}
	@Override
	public String toString() {
		return "Bean [productSeqNo=" + productSeqNo + ", proName=" + proName + ", proPicPath=" + proPicPath + ", price="
				+ price + ", brandSeqNo=" + brandSeqNo + ", proSpeicNo1=" + proSpeicNo1 + ", proSpeicNo2=" + proSpeicNo2
				+ ", proPicFile=" + proPicFile + ", prostock=" + prostock + ", prodiscount=" + prodiscount
				+ ", ProductClassSeqNo=" + ProductClassSeqNo + ", account=" + account + ", datetime=" + datetime
				+ ", prostatus=" + prostatus + "]";
	}
	public ProductBean() {
		super();
	}
	
}
