<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Requester Register Page</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
  <div class="row">
  <div class="col-md-3">
  </div>
  	<div class="col-md-5">
      <div class="well well-sm">
       <form:form role="form" action="success1" commandName = "requester" method="post" class="registration-form">    
          <fieldset>
            <div id="legend">
              <legend class=""> Requester Registration</legend>
            </div>
            <div class="form-group">
             <label class="sr-only" for="form-first-name">First name</label>
             <form:input path="firstName" placeholder="First name" class="form-first-name form-control" id="form-first-name"/>
             <form:errors path="firstName"/>
            </div>
            
            <div class="form-group">
             <label class="sr-only" for="form-last-name">Last name</label>
             <form:input path="lastName" placeholder="Last name" class="form-last-name form-control" id="form-last-name"/>
             <form:errors path="lastName"/>
            </div>
            
            <div class="form-group">
             <label class="sr-only" for="form-password-name">Password</label>
             <form:password path="password" placeholder="Password" class="form-password form-control" id="form-password"/>
             <form:errors path="password"/>
            </div>
            
            <div class="form-group">
             <label class="sr-only" for="form-email-name">Email</label>
             <form:input path="email" type = "email" placeholder="Email" class="form-email form-control" id="form-email"/>
             <form:errors path="email"/>
            </div>
            
            <div class="form-group">
             <label class="sr-only" for="form-email-name">Gender</label>
            <%--  <form:input path="gender" placeholder="Gender" class="form-gender form-control" id="form-gender"/> --%>
            <form:select path = "gender" class="form-password form-control" id="form-password">						       
							        <option>--Gender--</option>
							        <option>Male</option>
							        <option>Female</option>
							        <option>Do not prefer to answer</option>
			</form:select>
             <form:errors path="gender"/>
            </div> 
            
            <div class="form-group">
             <label class="sr-only" for="form-email-name">Age</label>
             <form:input path="age" placeholder="Age" type = "number" min = "1" max = "100" class="form-age form-control" id="form-age"/>
             <form:errors path="age"/>
            </div> 
            
            <div class="form-group">
             <label class="sr-only" for="form-password-name">Blood Group</label>
            <%--  <form:input path="requesterBloodGroup" placeholder="Blood Group" class="form-password form-control" id="form-password"/> --%>
             
            
            <form:select path = "requesterBloodGroup" class="form-password form-control" id="form-password">						       
							        <option>--Blood Group--</option>
							        <option>A</option>
							        <option>A+</option>
							        <option>A-</option>
							        <option>B</option>
							        <option>B+</option>
							        <option>B-</option>
							        <option>O</option>
							        <option>O+</option>
							        <option>O-</option>
							        <option>AB+</option>
							        <option>AB-</option>
			</form:select>
            <form:errors path="requesterBloodGroup"/>
            </div>
            <div class="form-group">
             <label class="sr-only" for="form-email-name">Phone Number</label>
             <form:input path="phoneNumber" type = "number" min = "1000000000" max = "9999999999" placeholder="Phone Number" class="form-email form-control" id="form-email"/>
             <form:errors path="phoneNumber"/>
            </div>
            
            <div class="form-group">
             <label class="sr-only" for="form-email-name">Address</label>
             <form:input path="requesterAddress" placeholder="Address" class="form-gender form-control" id="form-gender"/>
             <form:errors path="requesterAddress"/>
            </div> 
            
            <div class="form-group">
             <label class="sr-only" for="form-email-name">City</label>
             <form:input path="requesterCity" placeholder="City" class="form-age form-control" id="form-age"/>
             <form:errors path="requesterCity"/>
            </div> 
            <div>
               <c:if test="${!empty requestScope.err}">
                <p style="color:red">UserName already exists. Please select a unique username</p>
               </c:if>
            </div>
            <div class="form-group">
                <button class="btn btn-primary">Register</button>    
            </div>
          </fieldset>
       </form:form>   
    </div>
    </div> 
  </div>
</div>
</body>
</html>
