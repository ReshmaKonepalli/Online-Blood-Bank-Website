package com.neu.finalproject.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.neu.finalproject.dao.PersonDAO;
import com.neu.finalproject.pojo.BloodDonor;
import com.neu.finalproject.pojo.BloodRequester;
import com.neu.finalproject.pojo.Person;
import com.neu.finalproject.pojo.User;



@Controller
public class LoginController {
	
	@RequestMapping("/login.htm")	
	public String loginview(@ModelAttribute("person")Person person){		
		return "login";	
	}
	
	@RequestMapping("/donorregistration.htm")	
	public String DonorRegister(@ModelAttribute("donor")BloodDonor donor,BindingResult result,HttpServletRequest request) {
    	
        return "donorregistration";
    }
	
	@RequestMapping("/requesterregistration.htm")	
	public String RequesterRegister(@ModelAttribute("requester")BloodRequester requester,Model model,HttpServletRequest request) {
    	
        return "requesterregistration";
    }
	
	@RequestMapping("/requesterhome.htm")	
	public String Requesterhome(@ModelAttribute("requester")BloodRequester requester,Model model,HttpServletRequest request) {
    	
        return "requesterhome";
    }
	
	/*@RequestMapping(value = "sampleAjax", method = RequestMethod.POST)
	public @ResponseBody ArrayList<User> sampleAjax(HttpServletRequest req) {
		
		
		ArrayList<User> users = new ArrayList<User>();
		
		
		return users;
	}
	
	@RequestMapping("/ajaxsearch.htm")	
	public String As(@ModelAttribute("requester")BloodRequester requester,Model model,HttpServletRequest request) {
    	
        return "AjaxSample";
    }*/
}
