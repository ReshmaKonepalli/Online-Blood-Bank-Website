package com.neu.finalproject.controller;

import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.neu.finalproject.dao.AcceptedRequestDAO;
import com.neu.finalproject.dao.PersonDAO;
import com.neu.finalproject.dao.RequestDAO;
import com.neu.finalproject.exception.AdException;
import com.neu.finalproject.pojo.AcceptedRequests;
import com.neu.finalproject.pojo.BloodDonor;
import com.neu.finalproject.pojo.BloodRequester;
import com.neu.finalproject.pojo.Person;
import com.neu.finalproject.pojo.RequestAdvert;

@Controller
public class RequesterController {

	private static final Logger logger = LoggerFactory.getLogger(RequesterController.class);
	
  
	@RequestMapping(value = "viewmyreqReq.htm", method = RequestMethod.GET)
    public String viewallbloodrequest(@ModelAttribute("viewallbloodrequest")BloodRequester Requester,Model model,BindingResult result,HttpServletRequest request,HttpServletResponse response,HttpSession session){		
		try{
        
			RequestDAO rd=new RequestDAO();
			BloodRequester br=(BloodRequester) session.getAttribute("requestersession");
			
			long id=br.getPersonID();
			List<RequestAdvert> allReq=rd.getListOfAllAdverts(id);
			model.addAttribute("allReq",allReq);
	    
	    }catch(Exception e){
			System.out.println("Exception: " + e.getMessage());
		}
		
		return "viewmyreqReq1";
    
	}	
	
	@RequestMapping(value = "/emerReq.htm", method = RequestMethod.GET)
    public String viewallemerbloodrequest(@ModelAttribute("viewemerbloodrequest")BloodDonor donor,Model model,BindingResult result,HttpServletRequest request,HttpServletResponse response,HttpSession session){		
		try{
        
			RequestDAO rd=new RequestDAO();
			BloodDonor bd=(BloodDonor) session.getAttribute("donorrsession");
			
			long id=bd.getPersonID();
			System.out.println("Donor Id is:" + id);
			List<RequestAdvert> emerReq=rd.getListOfAllEmerAdverts(id);
			model.addAttribute("emerReq",emerReq);
	    
	    }catch(Exception e){
			System.out.println("Emergency Exception: " + e.getMessage());
		}
		
		return "EmergencyReq";
    
	}	
		
	
	@RequestMapping(value = "viewadonor/{advertid}", method = RequestMethod.GET)
	public String ViewAJob(@PathVariable("advertid")long advertid, Model model,HttpServletRequest req){
	try{			
			RequestDAO rd=new RequestDAO();		
			BloodRequester br=(BloodRequester) req.getSession().getAttribute("requestersession");			
			long userId=br.getPersonID();			
			List<AcceptedRequests> applicants=new ArrayList();
			applicants=rd.getApplicant(userId,advertid);
			model.addAttribute("applicants",applicants);
			if(applicants.size()!=0){
				return "ViewADonorReq";	
			}
			else{
				return "noapplicants";
				}
					
			
			}
		catch(Exception e){
			return null;
			}
		}
	
	@RequestMapping(value = "deladonor/{advertid}", method = RequestMethod.GET)
	public String DeleteARequest(@PathVariable("advertid")long advertid, Model model,HttpServletRequest req){
	try{
		RequestDAO rd = new RequestDAO();
		rd.deleteadonor(advertid);
		return "Success3";
	   }
		catch(Exception e){
			return null;
			}
		}
	
	@RequestMapping(value="/downloadcertificate/{ARId}",method = RequestMethod.GET)
	 public String initializeForm(@PathVariable("ARId") long arid,
	   HttpSession session,HttpServletResponse response) throws AdException {
	  try{
	   AcceptedRequestDAO ar = new AcceptedRequestDAO();
	   AcceptedRequests arq = ar.getRequestByARId(arid);
	   if(arq.getCertificate() != null){
	   response.setHeader("Content-Disposition", "inline;filename=\""
	     + arq.getFileName() + "\"");
	     OutputStream out = response.getOutputStream();
	     response.setContentType(arq.getFileType());
	     IOUtils.copy(arq.getCertificate().getBinaryStream(), out);
	     out.flush();
	     out.close();
	   }
	   else{
		   return "noCertificate";
	   }
	  }catch(Exception e){
	  /* System.out.println("Exception: " + e.getMessage());*/
	   return "noCertificate";
	   }
	  return "";
	 }
	
	@RequestMapping(value="/updatestatus/{ARId}",method = RequestMethod.GET)
	 public String updatePage(@PathVariable("ARId") long arid,Model model,
	   HttpSession session,HttpServletResponse response) throws AdException {
	  
	try{
		AcceptedRequestDAO ar = new AcceptedRequestDAO();
		AcceptedRequests arq = ar.getRequestByARId(arid);
		model.addAttribute("updateSt",arq);  
		}catch(Exception e){
			   System.out.println("Exception: " + e.getMessage());
		   }
		
	  return "UpdateStatus";
	 }
	
	@RequestMapping(value="/updateSta/{ARId}",method = RequestMethod.GET)
	 protected String doSubmitAction(@RequestParam("Status") String status,@PathVariable("ARId") String ARId,HttpSession session) throws Exception {
	  
	  try {
		  //System.out.println("In controller");
		  AcceptedRequestDAO ard=new AcceptedRequestDAO();
		  Long ai = Long.parseLong(ARId);
	        ard.updatestatus(ai,status);
	         } catch (Exception e) {
	        	 System.out.println("In controller Exception");
	        	 e.printStackTrace();

	         }
	  return "success2";
	 }
	
	@RequestMapping(value = "/requesterprofile.htm")	
	public String requesterprofile(@ModelAttribute("requester")BloodRequester requester,Model model,BindingResult result,HttpServletRequest request, HttpServletResponse response,HttpSession session){				
		RequestDAO ar = new RequestDAO();
		BloodRequester br=(BloodRequester) request.getSession().getAttribute("requestersession");
		long userId=br.getPersonID();
	    br = ar.getPersonDet(userId);
		model.addAttribute("updateSt",br); 
		return "requesterprofile";	
		
	}
	
	@RequestMapping(value = "/viewreqprofile.htm")	
	public String viewreqprofile(@ModelAttribute("requester")BloodRequester requester,BindingResult result,HttpServletRequest request, HttpServletResponse response,HttpSession session){		
		return "viewreqprofile";	
	}
	
	
	@RequestMapping(value="/requesterlogout.htm")
	public String showLogout(@ModelAttribute("Person")Person person,Model model, HttpServletRequest request,HttpServletResponse response){
		HttpSession session = request.getSession();
		session.invalidate();
		Cookie firstName = new Cookie("firstName", "pass");
		Cookie password = new Cookie("password", "pass");
		firstName.setMaxAge(0);
		password.setMaxAge(0);
		response.addCookie(firstName);
		response.addCookie(password);
		return "logout";
		
	}
	}


