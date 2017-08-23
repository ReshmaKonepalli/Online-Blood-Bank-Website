package com.neu.finalproject.pojo;


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table
public class RequestAdvert {

	@Id
	@GeneratedValue
	@Column(name="advertid", unique=true, nullable=false)
    private long advertid;
	
	@OneToMany(mappedBy="requestAdvert")
	private Set<AcceptedRequests> ar = new HashSet<AcceptedRequests>();
	
	public Set<AcceptedRequests> getAr() {
		return ar;
	}

	public void setAr(Set<AcceptedRequests> ar) {
		this.ar = ar;
	}

	@Column(name="message")
    private String message;
	
	@Column(name="state")
    private String state;
	
	@Column(name="dateposted")
    private Date dateposted;
	
	public Date getDateposted() {
		return dateposted;
	}

	public void setDateposted(Date dateposted) {
		this.dateposted = dateposted;
	}

	@Column(name="city")
    private String city;
	
	@Column(name="bloodGroup")
    private String bloodGroup;
	
	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getBloodGroup() {
		return bloodGroup;
	}

	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}

	@Transient
    private String postedBy;
	
	@ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	@JoinColumn(name="personID")
    private BloodRequester requester;
    

	public long getAdvertid() {
		return advertid;
	}

	public void setAdvertid(long advertid) {
		this.advertid = advertid;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getPostedBy() {
		return postedBy;
	}

	public void setPostedBy(String postedBy) {
		this.postedBy = postedBy;
	}

	public BloodRequester getRequester() {
		return requester;
	}

	public void setRequester(BloodRequester requester) {
		this.requester = requester;
	}

	public RequestAdvert() {
    }

}
