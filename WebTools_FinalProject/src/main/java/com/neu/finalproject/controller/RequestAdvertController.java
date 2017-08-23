package com.neu.finalproject.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.neu.finalproject.dao.RequestDAO;
import com.neu.finalproject.exception.AdException;
import com.neu.finalproject.pojo.AcceptedRequests;
import com.neu.finalproject.pojo.BloodDonor;
import com.neu.finalproject.pojo.BloodRequester;
import com.neu.finalproject.pojo.Person;
import com.neu.finalproject.pojo.RequestAdvert;


@Controller
public class RequestAdvertController {

	@RequestMapping(value = "/postrequest.htm", method = RequestMethod.POST)
    public String register(@ModelAttribute("makerequest")RequestAdvert requestAdvert,Model model,BindingResult result,HttpServletRequest request, HttpServletResponse response,HttpSession session) {
    	try{
    		
    		RequestDAO rd=new RequestDAO();
   
    		BloodRequester br=(BloodRequester) session.getAttribute("requestersession");
    		
        	String userName=br.getFirstName();
    		rd.create(requestAdvert.getState(),requestAdvert.getCity(),requestAdvert.getBloodGroup(),requestAdvert.getMessage(),userName);
            
    	}catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	   //model.addAttribute("error", true);
           return "success1";
        }
	
	@RequestMapping(value ="/viewallbloodrequest.htm", method = RequestMethod.GET)	
	public String viewallbloodrequest(@ModelAttribute("viewallbloodrequest")BloodRequester Requester,Model model, BindingResult result,HttpServletRequest request, HttpServletResponse response,HttpSession session){		
		
		BloodDonor jb=(BloodDonor) session.getAttribute("donorsession");
		//model.addAttribute("combined",new Combined());
		RequestDAO persondao=null;
    	//=new PersonDao();
    	List empList = null;
    	List jobList = new ArrayList();
    	//Delete Accepted Jobs
    	List<RequestAdvert> jList=new ArrayList<RequestAdvert>();
    	List<AcceptedRequests> jalist=new ArrayList<AcceptedRequests>();
    	List<AcceptedRequests> jblist=new ArrayList<AcceptedRequests>();
    	
    	try{
    		persondao = new RequestDAO();
    		empList = persondao.list();
    		
    		Iterator empIterator = empList.iterator();
    		while (empIterator.hasNext())
            {
    	    BloodRequester employer=	(BloodRequester) empIterator.next();
    		Iterator jobIterator = employer.getAdverts().iterator();
    		while (jobIterator.hasNext())
            {
    			RequestAdvert job = (RequestAdvert) jobIterator.next();
                jobList.add(job);
                jList.add(job);
               
            }
    			
            }
    	/*	System.out.println("list1 size is " + jList.size());*/
    		RequestDAO jd=new RequestDAO();
            List<AcceptedRequests> jobsApp=new ArrayList<AcceptedRequests>();
            
            jobsApp=jd.getApplied(jb.getPersonID());
    		
           /* System.out.println("list21 size is " + jobsApp.size());*/
            
    		Iterator appJob=jobsApp.iterator();
    		while(appJob.hasNext()){
    			AcceptedRequests jba=(AcceptedRequests) appJob.next();
    			jblist.add(jba);
    			
    			
    		}
    		
    		/*System.out.println("list22 size is " + jblist.size());*/
    		
    		Iterator<RequestAdvert> jbI=jList.iterator();
    		while(jbI.hasNext()){
    			RequestAdvert jb1=jbI.next();
    			for(AcceptedRequests ja:jblist){
/*    				System.out.println("list23 size is " + jb1.getAdvertid());
    				System.out.println("list24 size is " + ja.getRequestAdvert().getAdvertid());*/
    				if(jb1.getAdvertid()==ja.getRequestAdvert().getAdvertid()){
    			
    					jbI.remove();
    				}
    							
    			}
    			
    		}

    		 model.addAttribute("requestadvList", jList);
    		 
    	}
    	catch (Exception e) {
            System.out.println(e.getMessage());
        }

        return "viewallbloodrequest";
    }

	@RequestMapping(value ="/viewallbloodrequestt.htm", method = RequestMethod.GET)	
	public String viewallbloodrequestt(@ModelAttribute("viewallbloodrequest")BloodRequester Requester,Model model, BindingResult result,HttpServletRequest request, HttpServletResponse response,HttpSession session){		
		
		
		BloodDonor jb=(BloodDonor) session.getAttribute("donorsession");
		//model.addAttribute("combined",new Combined());
		RequestDAO persondao=null;
    	//=new PersonDao();
    	List empList = null;
    	List jobList = new ArrayList();
    	//Delete Accepted Jobs
    	List<RequestAdvert> jList=new ArrayList<RequestAdvert>();
    	List<AcceptedRequests> jalist=new ArrayList<AcceptedRequests>();
    	List<AcceptedRequests> jblist=new ArrayList<AcceptedRequests>();
    	
    	try{
    		persondao = new RequestDAO();
    		empList = persondao.list();
    		
    		Iterator empIterator = empList.iterator();
    		while (empIterator.hasNext())
            {
    	    BloodRequester employer=	(BloodRequester) empIterator.next();
    		Iterator jobIterator = employer.getAdverts().iterator();
    		while (jobIterator.hasNext())
            {
    			RequestAdvert job = (RequestAdvert) jobIterator.next();
                jobList.add(job);
                jList.add(job);
                
/*                System.out.println("list4 size is " +jobList.size());
                System.out.println("list3 size is " +jobList.size());
               */
               
            }
    			
            }
    	/*	System.out.println("list1 size is " + jList.size());*/
    		RequestDAO jd=new RequestDAO();
            List<AcceptedRequests> jobsApp=new ArrayList<AcceptedRequests>();
            
            jobsApp=jd.getApplied(jb.getPersonID());
    		
           /* System.out.println("list21 size is " + jobsApp.size());*/
            
    		Iterator appJob=jobsApp.iterator();
    		while(appJob.hasNext()){
    			AcceptedRequests jba=(AcceptedRequests) appJob.next();
    			jblist.add(jba);
    			
    			
    		}
    		
    		/*System.out.println("list22 size is " + jblist.size());*/
    		
    		Iterator<RequestAdvert> jbI=jList.iterator();
    		while(jbI.hasNext()){
    			RequestAdvert jb1=jbI.next();
    			for(AcceptedRequests ja:jblist){
/*    				System.out.println("list23 size is " + jb1.getAdvertid());
    				System.out.println("list24 size is " + ja.getRequestAdvert().getAdvertid());*/
    				if(jb1.getAdvertid()==ja.getRequestAdvert().getAdvertid()){
    			
    					jbI.remove();
    				}
    							
    			}
    			
    		}

    		 model.addAttribute("requestadvList1", jList);
    		 
    	}
    	catch (Exception e) {
            System.out.println(e.getMessage());
        }

    	
    	 
        return "";
    }
}
