package com.neu.finalproject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
import com.neu.finalproject.pojo.Person;


@Controller
public class ValidationLFormController {
	
	@Autowired
	@Qualifier("userLValidator")
	    
    LoginValidator validatorL;

	    @InitBinder
	    private void initBinder(WebDataBinder binder) {
	        binder.setValidator(validatorL);
	    }

	@RequestMapping(value = "/loginpage", method=RequestMethod.POST)
	public String submitForm(@ModelAttribute("person")Person person,Model model,BindingResult result, HttpServletRequest request, HttpServletResponse response)
	throws Exception { 
		validatorL.validate(person, result);
        if (result.hasErrors()) {
            return "login";
        }
		PersonDAO personDAO = new PersonDAO();
         try{
			HttpSession s1 = request.getSession();
			Person userAccount=personDAO.queryEmployeeByNameAndPassword(person.getFirstName(),person.getPassword());
			if(userAccount.getRole().equalsIgnoreCase("donor")){
				
			    Person p1=new Person();
			    //System.out.println(userAccount.getFirstName());
			    s1.setAttribute("donorsession", userAccount);
				return"donorhome";
				
			}
			else if(userAccount.getRole().equalsIgnoreCase("requester")){
				
			   
			    Person p1=new Person();			    
			    s1.setAttribute("requestersession", userAccount);
				return"requesterhome";
				
			}
						
		}
		
		catch (Exception e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
			// return "error";
			model.addAttribute("error","true");
			return "login";
	}
//		return "error";
//       String returnText;
//	     returnText = "login";
//		 return returnText;
//       return null;
            model.addAttribute("error","true");
		    return "login";
	}
}
