package com.neu.finalproject.pojo;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import org.hibernate.HibernateException;
import org.hibernate.Query;

import com.neu.finalproject.exception.AdException;


@Entity
@Table(name="BloodRequester")
@PrimaryKeyJoinColumn(name="personID")
public class BloodRequester extends Person {
	
	@Column(name="requesterBloodGroup")
	private String requesterBloodGroup;

	
	@Column(name="requesterAddress")
	private String requesterAddress;
	
	
	@Column(name="requesterCity")
	private String requesterCity;
	
	@OneToMany(fetch= FetchType.LAZY, mappedBy = "requester")
	private Set<RequestAdvert> adverts = new HashSet<RequestAdvert>();
	
	public String getRequesterBloodGroup() {
		return requesterBloodGroup;
	}

	public void setRequesterBloodGroup(String requesterBloodGroup) {
		this.requesterBloodGroup = requesterBloodGroup;
	}

	public String getRequesterAddress() {
		return requesterAddress;
	}

	public void setRequesterAddress(String requesterAddress) {
		this.requesterAddress = requesterAddress;
	}

	public String getRequesterCity() {
		return requesterCity;
	}

	public void setRequesterCity(String requesterCity) {
		this.requesterCity = requesterCity;
	}
	

	public Set<RequestAdvert> getAdverts() {
		return adverts;
	}

	public void setAdverts(Set<RequestAdvert> adverts) {
		this.adverts = adverts;
	}


}
