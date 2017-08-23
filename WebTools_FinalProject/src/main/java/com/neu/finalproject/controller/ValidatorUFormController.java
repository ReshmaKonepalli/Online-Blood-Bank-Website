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
import com.neu.finalproject.pojo.BloodDonor;

@Controller
public class ValidatorUFormController {

	@Autowired
	@Qualifier("userUValidator")
	    
    UserUValidator validator;

	    @InitBinder
	    private void initBinder(WebDataBinder binder) {
	        binder.setValidator(validator);
	    }
	    
    
    @RequestMapping(value= "/updatedonorprofile.htm", method = RequestMethod.POST)
    public String updateDonor(@ModelAttribute("person")BloodDonor donor, BindingResult result,Model model,HttpServletRequest request, HttpSession session)
    {
    /*   throws Exception { 
        validator.validate(donor, result);
        if (result.hasErrors()) {
            return "donorprofile";
        }
*/
    	try {
    		BloodDonor b1 = (BloodDonor) session.getAttribute("donorsession");
//    		model.addAttribute("ds", arg1);
//    		System.out.println("Donor Controller ID is" + b1.getPersonID() );
    		PersonDAO personDao=new PersonDAO();
			personDao.updateDonor(donor.getFirstName(),donor.getLastName(),donor.getPassword(),donor.getEmail(), donor.getGender(), 
					donor.getAge(), donor.getPhoneNumber(),donor.getAddress(), donor.getCity(), b1.getPersonID());
			
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	  // model.addAttribute("error","true");
           return "dupdatesucc";
        }
}
