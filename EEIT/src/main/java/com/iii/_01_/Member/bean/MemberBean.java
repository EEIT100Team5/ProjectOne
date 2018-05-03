package com.iii._01_.Member.bean;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "Member")
public class MemberBean implements Serializable {

	// @GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	private String account; // 帳號
	private String password; // 密碼
	private String nickname; // 暱稱
	private String firstname; // 姓氏
	private String lastname; // 名字
	private String gender; // 性別
	private String email; // 電子信箱
	private String phone; // 電話號碼
	private String address; // 地址
	private String fileNamePath; // 照片路徑
	private java.sql.Date birthday; // 生日
	private Integer subscription; // 總訂閱數
	private Timestamp registerdate; // 會員註冊日期
	private Timestamp lastlogin; // 最近登入日期
	private Boolean ban; // 封鎖
	@Transient
	private Integer memberSeqNo; // 流水編號

	@Transient
	private MultipartFile photo; // 照片

	public MemberBean(String account, String password, String nickname, String firstname, String lastname,
			String gender, String email, String phone, String address, String fileNamePath, Date birthday,
			Integer subscription, Timestamp registerdate, Timestamp lastlogin, Boolean ban) {
		super();
		this.account = account;
		this.password = password;
		this.nickname = nickname;
		this.firstname = firstname;
		this.lastname = lastname;
		this.gender = gender;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.fileNamePath = fileNamePath;
		this.birthday = birthday;
		this.subscription = subscription;
		this.setRegisterdate(registerdate);
		this.setLastlogin(lastlogin);
		this.ban = ban;
	}

	public MemberBean() {
		super();
	}

	public String getAccount() {
		return account;
	}

	public MultipartFile getPhoto() {
		return photo;
	}

	public void setPhoto(MultipartFile photo) {
		this.photo = photo;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getFileNamePath() {
		return fileNamePath;
	}

	public void setFileNamePath(String fileNamePath) {
		this.fileNamePath = fileNamePath;
	}

	public java.sql.Date getBirthday() {
		return birthday;
	}

	public void setBirthday(java.sql.Date birthday) {
		this.birthday = birthday;
	}

	public Integer getSubscription() {
		return subscription;
	}

	public void setSubscription(Integer subscription) {
		this.subscription = subscription;
	}

	public Boolean getBan() {
		return ban;
	}

	public void setBan(Boolean ban) {
		this.ban = ban;
	}

	public Integer getMemberSeqNo() {
		return memberSeqNo;
	}

	public Timestamp getRegisterdate() {
		return registerdate;
	}

	public void setRegisterdate(Timestamp registerdate) {
		this.registerdate = registerdate;
	}

	public Timestamp getLastlogin() {
		return lastlogin;
	}

	public void setLastlogin(Timestamp lastlogin) {
		this.lastlogin = lastlogin;
	}

}