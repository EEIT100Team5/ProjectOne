package com.iii._16_.PersonShop.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="PersonShop")
public class PersonShopBean {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer PersonShopSeqNo;
	private String PersonShopName;
	private String PersonShopCoverFileName;
	private String PersonShopCoverFilePath;
	private String PersonShopDescription;
	

	@Transient
	private MultipartFile PersonShopFile;

	public MultipartFile getPersonShopFile() {
		return PersonShopFile;
	}
	
	public void setPersonShopFile(MultipartFile personShopFile) {
		PersonShopFile = personShopFile;
	}
	public Integer getPersonShopSeqNo() {
		return PersonShopSeqNo;
	}

	public void setPersonShopSeqNo(Integer personShopSeqNo) {
		PersonShopSeqNo = personShopSeqNo;
	}

	public String getPersonShopName() {
		return PersonShopName;
	}

	public void setPersonShopName(String personShopName) {
		PersonShopName = personShopName;
	}

	public String getPersonShopCoverFileName() {
		return PersonShopCoverFileName;
	}

	public void setPersonShopCoverFileName(String personShopCoverFileName) {
		PersonShopCoverFileName = personShopCoverFileName;
	}

	public String getPersonShopCoverFilePath() {
		return PersonShopCoverFilePath;
	}

	public void setPersonShopCoverFilePath(String personShopCoverFilePath) {
		PersonShopCoverFilePath = personShopCoverFilePath;
	}

	public String getPersonShopDescription() {
		return PersonShopDescription;
	}

	public void setPersonShopDescription(String personShopDescription) {
		PersonShopDescription = personShopDescription;
	}


	public PersonShopBean(Integer personShopSeqNo, String personShopName, String personShopCoverFileName,
			String personShopCoverFilePath, String personShopDescription) {
		super();
		PersonShopSeqNo = personShopSeqNo;
		PersonShopName = personShopName;
		PersonShopCoverFileName = personShopCoverFileName;
		PersonShopCoverFilePath = personShopCoverFilePath;
		PersonShopDescription = personShopDescription;
	}

	public PersonShopBean() {
		super();
	}

	@Override
	public String toString() {
		return "PersonShopBean [PersonShopSeqNo=" + PersonShopSeqNo + ", PersonShopName=" + PersonShopName
				+ ", PersonShopCoverFileName=" + PersonShopCoverFileName + ", PersonShopCoverFilePath="
				+ PersonShopCoverFilePath + ", PersonShopDescription=" + PersonShopDescription + "]";
	}
	
}
