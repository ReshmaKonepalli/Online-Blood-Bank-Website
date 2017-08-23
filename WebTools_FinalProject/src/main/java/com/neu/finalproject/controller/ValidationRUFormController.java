package com.neu.finalproject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
public class ValidationRUFormController {

	@Autowired
	@Qualifier("userRUValidator")
	    
    UserRUValidator validatorR;

	    @InitBinder
	    private void initBinder(WebDataBinder binder) {
	        binder.setValidator(validatorR);
	    }
	    
	@RequestMapping(value= "/updaterequesterprofile.htm", method = RequestMethod.POST)
    public String updateRequester(@ModelAttribute("requester")BloodRequester requester, BindingResult result,Model model,HttpServletRequest request, HttpSession session)
    throws Exception { 
    	validatorR.validate(requester, result);
        if (result.hasErrors()) {
            return "requesterprofile";
        }

    	try {
    		BloodRequester br = (BloodRequester) session.getAttribute("requestersession");
    		long bd = requester.getPersonID();
    		PersonDAO personDao=new PersonDAO();
			personDao.updateRequester(requester.getFirstName(),requester.getLastName(),requester.getPassword(),requester.getEmail(), requester.getGender(), 
					requester.getAge(),requester.getRequesterAddress(), requester.getRequesterCity(),requester.getPhoneNumber(),requester.getRequesterBloodGroup(), br.getPersonID());
			
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	   model.addAttribute("error",true);
           return "requesterprofile";
        }
	
}
