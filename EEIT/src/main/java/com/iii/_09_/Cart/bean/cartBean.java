package com.iii._09_.Cart.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "dbo.Cart")
public class cartBean {
	
	
	public cartBean(int cartSeqNo, int orderNo, int productSeqNo, String orderDate, String shoppingDate) {
		super();
		this.cartSeqNo = cartSeqNo;
		this.orderNo = orderNo;
		this.productSeqNo = productSeqNo;
		this.orderDate = orderDate;
		this.shoppingDate = shoppingDate;
	}
	
	

	public cartBean() {
		super();
		// TODO Auto-generated constructor stub
	}


	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int cartSeqNo;//購物車編號，流水號
	private int orderNo; //訂單編號
	private int productSeqNo; //商品流水號
	private String orderDate; //購買日期
	private String shoppingDate;//點選購物時間
	
	
	public int getCartSeqNo() {
		return cartSeqNo;
	}
	public void setCartSeqNo(int cartSeqNo) {
		this.cartSeqNo = cartSeqNo;
	}
	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	public int getProductSeqNo() {
		return productSeqNo;
	}
	public void setProductSeqNo(int productSeqNo) {
		this.productSeqNo = productSeqNo;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public String getShoppingDate() {
		return shoppingDate;
	}
	public void setShoppingDate(String shoppingDate) {
		this.shoppingDate = shoppingDate;
	}
	
	@Override
	public String toString() {
		return "cartBean [cartSeqNo=" + cartSeqNo + ", orderNo=" + orderNo + ", productSeqNo=" + productSeqNo
				+ ", orderDate=" + orderDate + ", shoppingDate=" + shoppingDate + "]";
	}
	
}
