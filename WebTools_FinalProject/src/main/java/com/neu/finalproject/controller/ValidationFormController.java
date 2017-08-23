package com.neu.finalproject.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
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

import com.neu.finalproject.dao.PersonDAO;
import com.neu.finalproject.pojo.BloodDonor;

@Controller

public class ValidationFormController {

	@Autowired
	@Qualifier("userValidator")
	    
    UserValidator validator;

	    @InitBinder
	    private void initBinder(WebDataBinder binder) {
	        binder.setValidator(validator);
	    }
	    
	    
	    
    @RequestMapping(value= "/donorregister.htm", method = RequestMethod.POST)
    public String addDonor(@ModelAttribute("donor")BloodDonor donor, BindingResult result,Model model,HttpServletRequest request, HttpServletResponse response)
    throws Exception { 
        validator.validate(donor, result);
        if (result.hasErrors()) {
            return "donorregistration";
        }


    	try {
    		
    		PersonDAO personDao=new PersonDAO();
    		Boolean isValid = personDao.UserCheck(donor);
    		if(!isValid){
    			model.addAttribute("err",true);
    			return "donorregistration";
    		}
			personDao.createDonor(donor.getFirstName(),donor.getLastName(),donor.getPassword(),donor.getEmail(), donor.getGender(), 
					donor.getAge(), donor.getBloodgroup(), donor.getPhoneNumber(),donor.getAddress(), donor.getCity());
			
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
           return "success";
   /* 	JSONObject obj = new JSONObject();
        obj.put("successmsg", "User has been added successfully");
        PrintWriter out = response.getWriter();
        out.print(obj);
        
        return null;*/
        }
}
