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
	public productBean(int productSeqNo, String proName, String proPicPath, double price, int probrand, String proSpeicNo1,
			String proSpeicNo2, String proPicFile, double prostock, double prodiscount, int categorySeqNo,
			String proaccount, Date proDate, String prostatus) {
		super();
		this.productSeqNo = productSeqNo;
		this.proName = proName;
		this.price = price;
		this.probrand = probrand;
		this.proSpeicNo1 = proSpeicNo1;
		this.proSpeicNo2 = proSpeicNo2;
		this.prostock = prostock;
		this.prodiscount = prodiscount;
		this.categorySeqNo = categorySeqNo;
		this.proaccount = proaccount;
		this.proDate = proDate;
		this.prostatus = prostatus;
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
	
	
	@Transient
	@XmlTransient
	private MultipartFile proPicFile;
	
	public MultipartFile getProPicFile() {
		return proPicFile;
	}
	
	public void setProPicFile(MultipartFile proPicFile) {
		this.proPicFile = proPicFile;
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int productSeqNo; //產品編號
	private String proName;//產品名稱
//	private String proPicPath;//產品大頭照路徑  圖片獨立寫一個方法
	private double price; //產品價格
	private int probrand;//品牌
	private String proSpeicNo1; //產品敘述	1
	private String proSpeicNo2; //產品敘述	2
//	private String proPicFile;//產品圖片路徑(資料夾) 圖片獨立寫一個方法
	private double prostock; //庫存										
	private double prodiscount;//折扣
	private int categorySeqNo; //商品類別
	private String proaccount;//賣家帳號
	private java.util.Date proDate;//上架時間
	private String prostatus;//商品狀態
	
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

	public int getProbrand() {
		return probrand;
	}

	public void setProbrand(int probrand) {
		this.probrand = probrand;
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

	public int getCategorySeqNo() {
		return categorySeqNo;
	}

	public void setCategorySeqNo(int categorySeqNo) {
		this.categorySeqNo = categorySeqNo;
	}

	public String getProaccount() {
		return proaccount;
	}

	public void setProaccount(String proaccount) {
		this.proaccount = proaccount;
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
	
	@Override
	public String toString() {
		return "CartBean [productSeqNo=" + productSeqNo + ", proName=" + proName + ", proPicPath=" + proPicPath
				+ ", price=" + price + ", probrand=" + probrand + ", proSpeicNo1=" + proSpeicNo1 + ", proSpeicNo2="
				+ proSpeicNo2 + ", proPicFile=" + proPicFile + ", prostock=" + prostock + ", prodiscount=" + prodiscount
				+ ", categorySeqNo=" + categorySeqNo + ", proaccount=" + proaccount + ", proDate=" + proDate
				+ ", prostatus=" + prostatus + "]";
	}
	
}
