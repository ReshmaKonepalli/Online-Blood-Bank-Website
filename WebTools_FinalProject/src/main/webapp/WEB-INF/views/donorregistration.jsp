<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Donor Register Page</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script>
  var xmlHttp;
  xmlHttp = GetXmlHttpObject();
  function saveUser() {
      
      if (xmlHttp == null)
      {
          alert("Your browser does not support AJAX!");
          return;
      }
      
      var first = document.getElementById("firstName").value;
      var last = document.getElementById("lastName").value;
      var password = document.getElementById("password").value;
      var email = document.getElementById("email").value;
      var gender = document.getElementById("gender").value;
      var age = document.getElementById("age").value;
      var bloodgroup = document.getElementById("bloodgroup").value;
      var phoneNumber = document.getElementById("phoneNumber").value;
      var address = document.getElementById("address").value;
      var city = document.getElementById("city").value;
      
      var query = " =register&first=" + first + "&last=" +last + "&password=" +password+
                  "&email="+email+ "&gender=" + gender + "&age=" + age +  "&bloodgroup=" + bloodgroup
                  +  "&phoneNumber=" + phoneNumber +  "&address=" + address +  "&city=" + city;
          
          xmlHttp.onreadystatechange = function stateChanged(){
              
              if(xmlHttp.readyState == 4){
                  
                  var json = JSON.parse(xmlHttp.responseText);
                  document.getElementById("success").innerHTML = json.successmsg;
              }
              
          };
          
          xmlHttp.open("POST", "donorregister.htm", true);
          xmlHttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
          xmlHttp.send(query);
          return false;
      
      
  }
  </script>
</head>
<body>
<div class="container">
  <div class="row">
     <div class="col-md-3">
     </div>
  	<div class="col-md-5">
      <div class="well well-sm">
       <form:form role="form" action = "donorregister.htm" commandName = "donor" method="post" class="registration-form">    
          <fieldset>
            <div id="legend">
              <legend class=""> Donor Registration</legend>
            </div>
            <div class="form-group">
             <label class="sr-only" for="form-first-name">First name</label>
             <form:input path="firstName" placeholder="First name" class="form-first-name form-control" id="firstName"/>
             <form:errors path="firstName"/>
            </div>
            
            <div class="form-group">
             <label class="sr-only" for="form-last-name">Last name</label>
             <form:input path="lastName" placeholder="Last name" class="form-last-name form-control" id="lastName"/>
             <form:errors path="lastName"/>
            </div>
            
            <div class="form-group">
             <label class="sr-only" for="form-password-name">Password</label>
             <form:password path="password" placeholder="Password" class="form-password form-control" id="password"/>
             <form:errors path="password"/>
            </div>
            
            <div class="form-group">
             <label class="sr-only" for="form-email-name">Email</label>
             <form:input path="email" type = "email" placeholder="Email" class="form-email form-control" id="email"/>
             <form:errors path="email"/>
            </div>
            
            <div class="form-group">
             <label class="sr-only" for="form-email-name">Gender</label>
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
             <form:input path="age" type = "number" min = "1" max = "100" placeholder="Age" class="form-age form-control" id="age"/>
             <form:errors path="age"/>
            </div> 
            
            <div class="form-group">
             <label class="sr-only" for="form-password-name">Blood Group</label>
             <form:select path = "bloodgroup" class="form-password form-control" id="form-password">						       
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
             <form:errors path="bloodgroup"/>
            </div>
            
            <div class="form-group">
             <label class="sr-only" for="form-email-name">Phone Number</label>
             <form:input path="phoneNumber" type = "number" min = "1000000000" max = "9999999999" placeholder="Phone Number" class="form-email form-control" id="phoneNumber"/>
             <form:errors path="phoneNumber"/>
            </div>
            
            <div class="form-group">
             <label class="sr-only" for="form-email-name">Address</label>
             <form:input path="address" placeholder="Address" class="form-gender form-control" id="address"/>
             <form:errors path="address"/>
            </div> 
            
            <div class="form-group">
             <label class="sr-only" for="form-email-name">City</label>
             <form:input path="city" placeholder="City" class="form-age form-control" id="city"/>
             <form:errors path="city"/>
            </div> 
            <c:if test="${!empty requestScope.err}">
             <p style="color:red">Username already exists. Please select a unique username.</p>
            </c:if>
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
