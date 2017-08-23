package com.neu.finalproject.controller;

import javax.servlet.http.HttpServletRequest;

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
import com.neu.finalproject.pojo.BloodRequester;

@Controller
public class ValidationRFormController {

	@Autowired
	@Qualifier("userRValidator")
	    
    UserRValidator validatorR;

	    @InitBinder
	    private void initBinder(WebDataBinder binder) {
	        binder.setValidator(validatorR);
	    }
	    
    @RequestMapping(value= "/success1", method = RequestMethod.POST)
    public String addRequester(@ModelAttribute("requester")BloodRequester requester, BindingResult result,Model model,HttpServletRequest request)
    throws Exception { 
    	validatorR.validate(requester, result);
        if (result.hasErrors()) {
            return "requesterregistration";
        }
    	try {
    		
    		PersonDAO personDao=new PersonDAO();
    		Boolean isValid = personDao.UserCheck(requester);
    		if(!isValid){
    			model.addAttribute("err",true);
    			return "requesterregistration";
    		}
			personDao.createRequester(requester.getFirstName(),requester.getLastName(),requester.getPassword(),requester.getEmail(), requester.getGender(), 
					requester.getAge(), requester.getRequesterBloodGroup(), requester.getPhoneNumber(),requester.getRequesterAddress(), requester.getRequesterCity());
			
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
           return "success";
        }
}
