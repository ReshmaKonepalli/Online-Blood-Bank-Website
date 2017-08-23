package com.neu.finalproject.controller;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.neu.finalproject.pojo.BloodRequester;

@Component
public class UserRUValidator implements Validator {

	@Override
    public boolean supports(Class aClass)
    {
        return aClass.equals(BloodRequester.class);
    }
    
    @Override
    public void validate(Object obj, Errors errors)
    {
    	BloodRequester userR = (BloodRequester) obj;
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstName", "error.invalid.userR", "First Name Required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lastName", "error.invalid.userR", "Last Name Required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "error.invalid.userR", "Password Required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "error.invalid.userR", "Email Required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "gender", "error.invalid.userR", "Gender Required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "age", "error.invalid.userR", "Age Required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "requesterBloodGroup", "error.invalid.userR", "Blood Group Required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phoneNumber", "error.invalid.userR", "Phone Number Required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "requesterAddress", "error.invalid.userR", "Address Required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "requesterCity", "error.invalid.userR", "City Required");
        
    }
}
