package com.neu.finalproject.pojo;

import java.sql.Blob;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="AcceptedRequests")
public class AcceptedRequests {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="ARId")
	private long ARId;
	
	@Column(name="Certificate")
	private Blob Certificate;
	
	@Column(name="dateaccepted")
	private Date dateaccepted;
	
	public Date getDateaccepted() {
		return dateaccepted;
	}

	public void setDateaccepted(Date dateaccepted) {
		this.dateaccepted = dateaccepted;
	}

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

	@Column(name="fileName")
	private String fileName;

	@Column(name="fileType")
	private String fileType;
	
	public Blob getCertificate() {
		return Certificate;
	}

	public void setCertificate(Blob certificate) {
		Certificate = certificate;
	}

	@Column(name="Status")
	private String Status;
	
	@Column(name="Verification")
	private String Verification;
	
	public String getVerification() {
		return Verification;
	}

	public void setVerification(String verification) {
		Verification = verification;
	}

	public String getStatus() {
		return Status;
	}

	public void setStatus(String status) {
		Status = status;
	}

	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="personID")
	private BloodDonor bloodDonor;
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="advertid")
	private RequestAdvert requestAdvert;
	


	public BloodDonor getBloodDonor() {
		return this.bloodDonor;
	}

	public void setBloodDonor(BloodDonor bloodDonor) {
		this.bloodDonor = bloodDonor;
	}

	public RequestAdvert getRequestAdvert() {
		return this.requestAdvert;
	}

	public void setRequestAdvert(RequestAdvert requestAdvert) {
		this.requestAdvert = requestAdvert;
	}

	public AcceptedRequests(){
		
	}


	public long getARId() {
		return ARId;
	}

	public void setARId(long aRId) {
		ARId = aRId;
	}




}
