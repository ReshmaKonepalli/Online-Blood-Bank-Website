package com.neu.finalproject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.neu.finalproject.dao.AcceptedRequestDAO;
import com.neu.finalproject.exception.AdException;
import com.neu.finalproject.pojo.BloodDonor;

@Controller
public class AcceptRequestController {
	@RequestMapping(value="acceptreq/{advertid}",method = RequestMethod.GET)
	public String initializeForm(@PathVariable("advertid") long advertid,HttpSession session,
			HttpServletRequest request) throws AdException {
		BloodDonor bd = (BloodDonor)session.getAttribute("donorsession");
	    long donorId = bd.getPersonID();
	    
	    AcceptedRequestDAO ja = new AcceptedRequestDAO();
	    ja.AcceptJobs(donorId,advertid);
	    
	    return"viewallbloodrequest";
	    
	}
}
