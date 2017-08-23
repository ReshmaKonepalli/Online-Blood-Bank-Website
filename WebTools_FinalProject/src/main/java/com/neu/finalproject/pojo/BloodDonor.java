package com.neu.finalproject.pojo;

import java.sql.Blob;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;



@Entity
@Table
@PrimaryKeyJoinColumn(name="personID")
public class BloodDonor extends Person {


	@OneToMany(mappedBy="bloodDonor")
    private Set<AcceptedRequests> ar = new HashSet<AcceptedRequests>();
	
	public Set<AcceptedRequests> getAr() {
		return ar;
	}

	public void setAr(Set<AcceptedRequests> ar) {
		this.ar = ar;
	}

	@Column(name="bloodgroup")
	private String bloodgroup;

	
	@Column(name="address")
	private String address;
	
	@Column(name="city")
	private String city;
	
	
	@Column(name="content")
	private Blob content;

	
	public Blob getContent() {
		return content;
	}

	public void setContent(Blob content) {
		this.content = content;
	}

	@Column(name="fileName")
	private String fileName;
	
	@Column(name="fileType")
	private String fileType;
	

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getFileType() {
		return fileType;
	}

	public void setFileType(String fileType) {
		this.fileType = fileType;
	}

	public String getBloodgroup() {
		return bloodgroup;
	}

	public void setBloodgroup(String bloodgroup) {
		this.bloodgroup = bloodgroup;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}


	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}
	
	public BloodDonor(){
		
	}
	
}
