package com.neu.finalproject.dao;



import java.sql.Blob;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;


import com.neu.finalproject.exception.AdException;
import com.neu.finalproject.pojo.AcceptedRequests;
import com.neu.finalproject.pojo.BloodDonor;
import com.neu.finalproject.pojo.BloodRequester;
import com.neu.finalproject.pojo.RequestAdvert;



public class RequestDAO extends DAO {
	public RequestAdvert create(String state, String city, String bloodGroup, String message, String userName)
            throws AdException {
        try {
            begin();
            RequestAdvert advert = new RequestAdvert();
                       
            advert.setState(state);
            advert.setCity(city);
            advert.setBloodGroup(bloodGroup);
            advert.setMessage(message);
            advert.setDateposted(new Date());
            
            System.out.println(state);
            
            Query q = getSession().createQuery("from Person where firstName = :firstName");

	        q.setString("firstName", userName);
	      
	        BloodRequester e1 = (BloodRequester) q.uniqueResult();        
	    	
	    	
	        advert.setRequester(e1);
	    	
            getSession().save(advert);
            commit();
            return advert;
        } catch (HibernateException e) {
            rollback();
            //throw new AdException("Could not create advert", e);
            throw new AdException("Exception while creating advert: " + e.getMessage());
        }
   }
	
   public List list() throws AdException {
        try {
            begin();
            Query q = getSession().createQuery("from BloodRequester");
            List list = q.list();
            commit();
            return list;
            
        } catch (HibernateException e) {
            e.printStackTrace();
        	rollback();
            throw new AdException("Could not get the Requests", e);
            
        }
    }
   public void updateResume(long personID, Blob blob, String originalFilename, String contentType) {
		begin();
		Query q = getSession().createQuery("from BloodDonor where personID = :personID");
		 q.setLong("personID",personID);
		 
		 BloodDonor bd = (BloodDonor) q.uniqueResult(); 
		 
		 bd.setContent(blob);
		 bd.setFileName(originalFilename);
		 bd.setFileType(contentType);
		 
		 getSession().update(bd);
		 commit();
		
	}
   public List<AcceptedRequests> getApplicant(long userId, long advertid) {

		List<AcceptedRequests> applicants=new ArrayList<AcceptedRequests>();
				
		try{
			begin();
			
			Query qu=getSession().createQuery("from AcceptedRequests where advertid=:advertid");
			qu.setLong("advertid", advertid);
			
			applicants=qu.list();
			//System.out.println("List size is" + qu.list().size() );
					
			commit();
			
		}
		catch(Exception e){
			rollback();
		}
		
		return applicants;
	}
   
   public List<RequestAdvert> getListOfAllAdverts(long id){
	   
	   List<RequestAdvert> allEmp=new ArrayList<RequestAdvert>();
	   try{
		   begin(); 
		   Query q=getSession().createQuery("from RequestAdvert where personID=:id");
		   q.setLong("id",id);
		   allEmp = q.list();
		   commit();
	   }
	   catch(Exception e){
			rollback();
		}
	   return allEmp;
	   
   }
   
   public List<RequestAdvert> getListOfAllEmerAdverts(long id){
	   
	   List<RequestAdvert> allEmp=new ArrayList<RequestAdvert>();
	   try{
		   begin(); 
		   Query q=getSession().createQuery("from AcceptedRequests where personID=:id and Status = 'Emergency'");
		   q.setLong("id",id);
		   allEmp = q.list();
		   System.out.println("Emergency List"+q.list().size());
		   System.out.println("Person Id is "+id);
		   commit();
	   }
	   catch(Exception e){
			rollback();
			System.out.println("Exception caught" +e.getMessage());
		}
	   return allEmp;
	   
   }
   
   public List<AcceptedRequests> getListOfMyAdverts(long id){
	   
	   List<AcceptedRequests> allEmp=new ArrayList<AcceptedRequests>();
	   try{
		   begin(); 
		   Query q=getSession().createQuery("from AcceptedRequests where personID=:id");
		   q.setLong("id",id);
		   allEmp = q.list();
//		   System.out.println("My Request List "+q.list().size());
//		   System.out.println("Person Id is "+id);
		   commit();
	   }
	   catch(Exception e){
			rollback();
			System.out.println("Exception caught " +e.getMessage());
		}
	   return allEmp;
	   
   }
   
   public void deleteadonor(long advertid){
 		AcceptedRequests ar = new AcceptedRequests();	
 	try{
 		begin();
 		Query q=getSession().createQuery("delete from  RequestAdvert where advertid = :advertid");
 		q.setLong("advertid",advertid);
 		q.executeUpdate();
 		commit();	
 		
 	}
 	catch(Exception e){
 		e.printStackTrace();
 		rollback();
 	}

   }
   
   public BloodRequester getPersonDet(long id){
	   BloodRequester bd = new BloodRequester();  
		   begin(); 
		   Query q=getSession().createQuery("from BloodRequester where personID=:id");
		    q.setLong("id", id);
		    bd = (BloodRequester) q.uniqueResult();
		   commit();
		   return bd;	   
   }
   
   public BloodDonor getPersonDet1(long id){
	   BloodDonor bd = new BloodDonor();  
		   begin(); 
		   Query q=getSession().createQuery("from BloodDonor where personID=:id");
		    q.setLong("id", id);
		    bd = (BloodDonor) q.uniqueResult();
		   commit();
		   return bd;	   
   }
   
   public List<AcceptedRequests> getApplied(long personID) {
		// TODO Auto-generated method stub
		List<AcceptedRequests> jb=new ArrayList<AcceptedRequests>();
		try{
			begin();
			
			Query q=getSession().createQuery("from AcceptedRequests where personID=:personID");
			q.setLong("personID",personID);
			
			jb=q.list();
			commit();
			
		}
		catch(HibernateException e){
			e.printStackTrace();
			rollback();
			
		}
		return jb;
	}
}
