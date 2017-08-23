package com.neu.finalproject.controller;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.neu.finalproject.pojo.BloodDonor;

@Component
public class UserUValidator implements Validator {

	 @Override
	    public boolean supports(Class aClass)
	    {
	        return aClass.equals(BloodDonor.class);
	    }
	    
	    @Override
	    public void validate(Object obj, Errors errors)
	    {
	    	BloodDonor user = (BloodDonor) obj;
	        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstName", "error.invalid.user", "First Name Required");
	        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lastName", "error.invalid.user", "Last Name Required");
	        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "error.invalid.user", "Password Required");
	        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "error.invalid.user", "Email Required");
	        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "gender", "error.invalid.user", "Gender Required");
	        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "age", "error.invalid.user", "Age Required");
	        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "bloodgroup", "error.invalid.user", "Blood Group Required");
	        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phoneNumber", "error.invalid.user", "Phone Number Required");
	        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address", "error.invalid.user", "Address Required");
	        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "city", "error.invalid.user", "City Required");
	        
	    }
}
