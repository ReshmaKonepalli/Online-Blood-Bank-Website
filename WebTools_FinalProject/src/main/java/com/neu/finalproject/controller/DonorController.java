package com.neu.finalproject.controller;

import java.io.IOException;
import java.sql.Blob;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.hibernate.Hibernate;
import org.hibernate.classic.Session;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


import com.neu.finalproject.dao.PersonDAO;
import com.neu.finalproject.dao.RequestDAO;
import com.neu.finalproject.pojo.AcceptedRequests;
import com.neu.finalproject.pojo.BloodDonor;
import com.neu.finalproject.pojo.BloodRequester;
import com.neu.finalproject.pojo.Person;
import com.neu.finalproject.pojo.RequestAdvert;


@Controller

public class DonorController {


	private static final Logger logger = LoggerFactory.getLogger(DonorController.class);

	    
	             
		@RequestMapping("/findadonor.htm")	
		public String findadonorview(@ModelAttribute("person")Person person){		
			return "findadonor";	
		}
		
		@RequestMapping("/makearequest.htm")	
		public String makearequestview(@ModelAttribute("person")Person person){		
			return "makearequest";	
		}
		
		
		@RequestMapping(value = "/donorprofile.htm")	
		public String donorprofile(@ModelAttribute("person")Person person,Model model,BindingResult result,HttpServletRequest request, HttpServletResponse response,HttpSession session){		
			RequestDAO ar = new RequestDAO();
			BloodDonor br=(BloodDonor) request.getSession().getAttribute("donorsession");
			long userId=br.getPersonID();
		    br = ar.getPersonDet1(userId);
			model.addAttribute("updateSta",br); 
			return "donorprofile";	
		}
		
		@RequestMapping(value = "/donorReq.htm")	
		public String donorreq(@ModelAttribute("donor")BloodDonor donor,Model model, BindingResult result,HttpServletRequest request, HttpServletResponse response,HttpSession session){		
			
				try{
		        
					RequestDAO rd=new RequestDAO();
					BloodDonor bd=(BloodDonor) session.getAttribute("donorsession");
					
					long id=bd.getPersonID();
					//System.out.println("Donor Id is:" + id);
					List<AcceptedRequests> emerRequ=rd.getListOfMyAdverts(id);
					Iterator<AcceptedRequests> jobIterator=emerRequ.iterator();
					List jobList = new ArrayList<AcceptedRequests>();
				    while (jobIterator.hasNext())
			        {
				    	AcceptedRequests jobs = (AcceptedRequests) jobIterator.next();
			          //  System.out.print( "Status is " + jobs.getStatus());
			            jobList.add(jobs);
			        }
					session.setAttribute("emerRequ", jobList);
					//System.out.println(" Donor List size is:" + emerRequ.size());
					
			         
			    }catch(Exception e){
					//System.out.println("Emergency Exception: " + e.getMessage());
				}
				
				return "donorReq";
		    
			}	
		
		
		@RequestMapping(value = "/uploaddoc.htm")	
		public String uploaddoc(@ModelAttribute("person")Person person,BindingResult result,HttpServletRequest request, HttpServletResponse response,HttpSession session){		
			return "uploaddocument";	
		}
		
		@RequestMapping(value = "/showrequests.htm", method = RequestMethod.POST)
	    public String register(@ModelAttribute("showrequest")RequestAdvert requestAdvert,BindingResult result,HttpServletRequest request, HttpServletResponse response,HttpSession session) {
	    	try{
	    		
	    		RequestDAO rd=new RequestDAO();
	   
	    		BloodRequester br=(BloodRequester) session.getAttribute("donorsession");
	    		
	        	String userName=br.getFirstName();
	    		rd.create(requestAdvert.getState(),requestAdvert.getCity(),requestAdvert.getBloodGroup(),requestAdvert.getMessage(),userName);
	            
	    	}catch (NumberFormatException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	           return "success";
	        }
		
		 @RequestMapping(value = "fileUpload.htm", method = RequestMethod.POST)
		 public String save(            
		 @RequestParam("fileName") MultipartFile file,Model model, HttpSession session) {

	    System.out.println("File:" + file.getName());
        System.out.println("ContentType:" + file.getContentType());
         BloodDonor d=(BloodDonor) session.getAttribute("donorsession");
	    try {
	        Blob blob =(Blob) Hibernate.createBlob(file.getInputStream()); //Hibernate.createBlob(file.getInputStream());
	        RequestDAO rd=new RequestDAO();
	 
	        rd.updateResume(d.getPersonID(),blob,file.getOriginalFilename(),file.getContentType());
	        
	        model.addAttribute("err",true);
	        return "uploaddocument";

        } catch (IOException e) {
            e.printStackTrace();
            return "docuploaderr";
        }

	    }
		 
	 
}
