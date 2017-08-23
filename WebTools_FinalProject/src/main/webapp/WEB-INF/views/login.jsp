<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" >
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link href="resources/css/mainpage.css" rel="stylesheet">
 <!-- CSS -->
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
<link rel="stylesheet" href="resources/assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/assets/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/assets/css/form-elements.css">
<link rel="stylesheet" href="resources/assets/css/style.css">  

<!-- AJAX Functionality -->
<script type="text/javascript">
        function doAjaxPost() {
        // get the form values
        var firstName = $('#firstName').val();
        var password = $('#password').val();

        $.ajax({
        type: "POST",
        url: "/loginpage",
        data: "firstName=" + firstName + "&password=" + password,
        success: function(response){
        // we have the response
        $('#info').html(response);
        $('#firstName').val('');
        $('#password').val('');
        },
        error: function(e){
        alert('Error: ' + e);
        }
        });
        }
</script>

</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <div class="col-md-1"></div>
      <img src = "resources/images/logo.jpg">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <img src = "resources/images/logo.jpg">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      
      <a class="navbar-brand" href="#"><b>Smart Blood</b></a>
      <div class="col-md-1"></div>
      <ul class="nav navbar-nav">
                    <li>
                        <a href="#">About Us</a>
                    </li>
                    <li>
                        <a href="#">Donate Blood</a>
                    </li>
                    <li>
                        <a href="#">Donor Eligibility</a>
                    </li>
                    <li>
                        <a href="#">Host A Drive</a>
                    </li>
                    <li>
                        <a href="#">Contact Us</a>
                    </li>
      </ul>

    </div><!-- /.navbar-collapse -->
  </div>
</nav>
      <div class="row">
      <div class="col-sm-5 col-sm-offset-3 form-box">
           <div class="form-top">
                  <div class="form-top-left">
                              <h3>Login to our site</h3>
                                <p>Enter your username and password to log on:</p>
                            </div>
                            <div class="form-top-right">
                              <i class="fa fa-key"></i>
                            </div>
                            </div>
                            <div class="form-bottom">
                <form:form role="form" action="loginpage" commandName = "person" method="post" class="login-form">
                            <div class="form-group">
                              <label class="sr-only" for="form-username">Username</label>
                                <input type ="text" name="firstName" placeholder="Username" class="form-username form-control" id="firstName"/>
                                <form:errors path="firstName"/>
                            </div>
                              <div class="form-group">
                                <label class="sr-only" for="form-password">Password</label>
                                <input type ="password" name="password" placeholder="Password" class="form-password form-control" id="password"/>
                                <form:errors path="password"/>
                              </div>
                              <div>
                                  <c:if test="${!empty requestScope.error}">
                                       <p style="color:red">UserName/Password Incorrect</p>
               					  </c:if>
                              </div>
                     <button type="submit" class="btn">Sign in!</button><br>
                     <b>New User? Sign in here!</b><br>
                     <a href="donorregistration.htm"><b>Donor Registration</b></a><br>
                     <a href="requesterregistration.htm"><b>Requester Registration</b></a>
               </form:form>
           </div>
           
      </div>
   </div>
        <!-- Javascript -->
        <script src="resources/assets/js/jquery-1.11.1.min.js"></script>
        <script src="resources/assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="resources/assets/js/jquery.backstretch.min.js"></script>
        <script src="resources/assets/js/retina-1.1.0.min.js"></script>
        <script src="resources/assets/js/scripts.js"></script>
        
</body>
</html>