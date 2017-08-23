package com.neu.finalproject.dao;

import java.util.Date;

import org.hibernate.HibernateException;
import org.hibernate.Query;

import com.neu.finalproject.exception.AdException;
import com.neu.finalproject.pojo.AcceptedRequests;
import com.neu.finalproject.pojo.BloodDonor;
import com.neu.finalproject.pojo.RequestAdvert;

public class AcceptedRequestDAO extends DAO {

	public void AcceptJobs(long userId, long advertId){
	AcceptedRequests ar=new AcceptedRequests();
	try{
		begin();
		Query q=getSession().createQuery("from BloodDonor where personID=:personID");
		q.setLong("personID",userId);
		BloodDonor bd=(BloodDonor) q.uniqueResult();
		Query query=getSession().createQuery("from RequestAdvert where advertid=:advertid");
		query.setLong("advertid",advertId);
		RequestAdvert ra=(RequestAdvert) query.uniqueResult();
		ar.setStatus("Request Accepted");
		ar.setRequestAdvert(ra);
		ar.setBloodDonor(bd);
		ar.setFileName(bd.getFileName());
		ar.setFileType(bd.getFileType());
		ar.setCertificate(bd.getContent());
	    ar.setDateaccepted(new Date());
		if(bd.getContent() != null){
			ar.setVerification("Verified");
		}
		else{
			ar.setVerification("Not Verified");
		}
		getSession().save(ar);
		
		
		commit();	
	}
	catch(Exception e){
		e.printStackTrace();
		rollback();
	}
  }
	
  public AcceptedRequests getRequestByARId(long ARId){
		AcceptedRequests ar = new AcceptedRequests();	
	try{
		begin();
		Query q=getSession().createQuery("from AcceptedRequests where ARId=:ARId");
		q.setLong("ARId",ARId);
		ar=(AcceptedRequests) q.uniqueResult();
		/*System.out.println("Accepted Request size is "+q.list().size());*/
		commit();		
	}
	catch(Exception e){
		e.printStackTrace();
		rollback();
	}
	return ar;

  }
  
  public AcceptedRequests updatestatus(long ARId, String Status){
		AcceptedRequests ar = new AcceptedRequests();	
	try{
		begin();
		Query q=getSession().createQuery("from AcceptedRequests where ARId=:ARId");
		q.setLong("ARId",ARId);
		ar=(AcceptedRequests) q.uniqueResult();
		ar.setStatus(Status);
		getSession().update(ar);
		commit();	
		
	}
	catch(Exception e){
		e.printStackTrace();
		rollback();
	}
	return ar;

  }
}
