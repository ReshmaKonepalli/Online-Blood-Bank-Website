package com.neu.finalproject.dao;

import java.util.ArrayList;

import org.hibernate.HibernateException;
import org.hibernate.Query;

import com.neu.finalproject.exception.AdException;
import com.neu.finalproject.pojo.BloodDonor;
import com.neu.finalproject.pojo.BloodRequester;
import com.neu.finalproject.pojo.Person;



public class PersonDAO extends DAO {

    public PersonDAO() {
    }

    public Person get(String username)
            throws AdException {
        try {
            begin();
            Query q = getSession().createQuery("from person where name = :username");
            q.setString("username", username);
         //   q.setString("password", password);
            Person user = (Person) q.uniqueResult();
            commit();
            return user;
        } catch (HibernateException e) {
            rollback();
            throw new AdException("Could not get user " + username, e);
        }
    }
    
    public Boolean UserCheck(Person person) throws Exception{
    	
    	ArrayList<Person> users = new ArrayList();
    	Query q = getSession().createQuery("from Person");
    	
    	users = (ArrayList<Person>)q.list();
    	
    	for(Person u:users){
    		/*System.out.println("given"+person.getFirstName()+"actual"+u.getFirstName());*/
    		if(person.getFirstName().equalsIgnoreCase(u.getFirstName())){
    			return false;
    		}
    	}
    	return true;
    }
    
    public Person queryEmployeeByNameAndPassword(String firstName, String password)
            throws Exception {
		try {
			
            Query q = getSession().createQuery("from Person where firstName = :firstName and password = :password");
            q.setString("firstName", firstName);
            q.setString("password", password);
            
            Person userAccount = (Person) q.uniqueResult();
            if(userAccount==null){
            	System.out.println("no such user");
            }
            close();
            return userAccount;
		} catch (HibernateException e) {
			
            throw new Exception("Could not get user " + firstName, e);
		}	
    }

	public BloodDonor createDonor(String firstName, String lastName, String password, String email, String gender, String age, String bloodGroup, String phoneNo, String address, String city) throws Exception{
		
	
        
		try{
			begin();
		BloodDonor bd = new BloodDonor();
		
		bd.setFirstName(firstName);
		bd.setLastName(lastName);
		bd.setPassword(password);
		bd.setEmail(email);
		bd.setGender(gender);
		bd.setAge(age);
		bd.setBloodgroup(bloodGroup);
		bd.setPhoneNumber(phoneNo);
		bd.setAddress(address);
		bd.setCity(city);
        bd.setRole("donor");
		
        getSession().save(bd);

       // tx.commit();
        commit();
	
		return bd;
		}
		catch(HibernateException e){
			rollback();
			throw new Exception("Exception while creating user"+e.getMessage());
			
			
		}
	
      }
	
	public BloodDonor updateDonor(String firstName, String lastName, String password, String email, String gender, String age, String phoneNo, String address, String city,long personID) throws Exception{
		
        
		try{
			
		begin();
		Query query = getSession().createQuery("from BloodDonor where personID =:personID");
		query.setString("personID",String.valueOf(personID));
		System.out.println("Blood Donor Person ID is"+personID);	  
	    BloodDonor bd = (BloodDonor) query.uniqueResult();
		
		bd.setFirstName(firstName);
		bd.setLastName(lastName);
		bd.setPassword(password);
		bd.setEmail(email);
		bd.setGender(gender);
		bd.setAge(age);
		bd.setPhoneNumber(phoneNo);
		bd.setAddress(address);
		bd.setCity(city);
        bd.setRole("donor");
        
        getSession().update(bd);
        commit();
	
		return bd;
		}
		catch(HibernateException e){
			rollback();
			throw new Exception("Exception while creating user"+e.getMessage());
			
			
		}
	
      }
	
     public BloodRequester createRequester(String firstName, String lastName, String password, String email, String gender, String age, String requesterBloodGroup, String phoneNo, String requesterAddress, String requesterCity) throws Exception{
		
		try{
		
		begin();
		System.out.println("requester hit1");
	    BloodRequester br = new BloodRequester();
		
		br.setFirstName(firstName);
		br.setLastName(lastName);
		br.setPassword(password);
		br.setEmail(email);
		br.setGender(gender);
		br.setAge(age);
		br.setRequesterBloodGroup(requesterBloodGroup);
		br.setPhoneNumber(phoneNo);
		br.setRequesterAddress(requesterAddress);
		br.setRequesterCity(requesterCity);
        br.setRole("requester");
		
        getSession().save(br);

       // tx.commit();
        commit();
	
		return br;
		}
		catch(HibernateException e){
			rollback();
			throw new Exception("Exception while updating donor"+e.getMessage());
			
			
		}
	
      }
     
     public BloodRequester updateRequester(String firstName, String lastName, String password, String email, String gender, String age, String address, String city,String phoneNo, String bloodGroup,long personID) throws Exception{
 		
         
 		try{
 			
 		begin();
 		Query query = getSession().createQuery("from BloodRequester where personID =:personID");
 		query.setString("personID",String.valueOf(personID));
 		System.out.println("Blood Requester Person ID is"+personID);	  
 		BloodRequester bd = (BloodRequester) query.uniqueResult();
 		
 		bd.setFirstName(firstName);
 		bd.setLastName(lastName);
 		bd.setPassword(password);
 		bd.setEmail(email);
 		bd.setGender(gender);
 		bd.setAge(age);
 		bd.setRequesterBloodGroup(bloodGroup);
 		bd.setPhoneNumber(phoneNo);
 		bd.setRequesterAddress(address);
 		bd.setRequesterCity(city);
        bd.setRole("requester");
         
         getSession().update(bd);
         commit();
 	
 		return bd;
 		}
 		catch(HibernateException e){
 			rollback();
 			throw new Exception("Exception while updating requester"+e.getMessage());
 			
 			
 		}
 	
       }
}