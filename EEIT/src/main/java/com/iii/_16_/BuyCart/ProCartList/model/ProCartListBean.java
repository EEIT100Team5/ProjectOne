package com.iii._16_.BuyCart.ProCartList.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.iii._16_.ProductSale.Product.model.ProductSaleBean;
import com.iii._16_.ProductSale.ProductPicture.model.ProPicBean;
@Entity
@Table(name="ProCartList")
public class ProCartListBean {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int proCartListSeqNo;
	private int productSeqNo;
	private int productCount;
	private int picSeqNo;
	
	@Transient
	private ProductSaleBean productbean;
	
	@Transient
	private ProPicBean picbean;

	public int getProCartListSeqNo() {
		return proCartListSeqNo;
	}

	public void setProCartListSeqNo(int proCartListSeqNo) {
		this.proCartListSeqNo = proCartListSeqNo;
	}

	public int getProductSeqNo() {
		return productSeqNo;
	}

	public void setProductSeqNo(int productSeqNo) {
		this.productSeqNo = productSeqNo;
	}

	public int getProductCount() {
		return productCount;
	}

	public void setProductCount(int productCount) {
		this.productCount = productCount;
	}

	public int getPicSeqNo() {
		return picSeqNo;
	}

	public void setPicSeqNo(int picSeqNo) {
		this.picSeqNo = picSeqNo;
	}

	public ProductSaleBean getProductbean() {
		return productbean;
	}

	public void setProductbean(ProductSaleBean productbean) {
		this.productbean = productbean;
	}

	public ProPicBean getPicbean() {
		return picbean;
	}

	public void setPicbean(ProPicBean picbean) {
		this.picbean = picbean;
	}

	@Override
	public String toString() {
		return "ProCartListBean [proCartListSeqNo=" + proCartListSeqNo + ", productSeqNo=" + productSeqNo
				+ ", productCount=" + productCount + ", picSeqNo=" + picSeqNo + ", productbean=" + productbean
				+ ", picbean=" + picbean + "]";
	}

	public ProCartListBean(int proCartListSeqNo, int productSeqNo, int productCount, int picSeqNo,
			ProductSaleBean productbean, ProPicBean picbean) {
		super();
		this.proCartListSeqNo = proCartListSeqNo;
		this.productSeqNo = productSeqNo;
		this.productCount = productCount;
		this.picSeqNo = picSeqNo;
		this.productbean = productbean;
		this.picbean = picbean;
	}

	public ProCartListBean() {
		super();
	}
	
	
}
