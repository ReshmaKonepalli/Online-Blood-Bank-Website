<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="resources/css/mainpage.css" rel="stylesheet">
 <!-- CSS -->
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
<link rel="stylesheet" href="resources/assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/assets/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/assets/css/form-elements.css">
<link rel="stylesheet" href="resources/assets/css/style.css">  

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <div class="col-md-1"></div>
      <a href ="${pageContext.request.contextPath}/requesterhome.htm"><img src = "resources/images/logo.jpg"></a>
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <img src="resources/images/logo.jpg">
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

      <ul class="nav navbar-nav navbar-right">
        <li><p class="navbar-text">Welcome ${sessionScope.requestersession.firstName }</p></li>
        <li><p class="navbar-text">Sign Out</p></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div>
</nav>
      <div class="row">
      <div class="col-sm-5 col-sm-offset-3 form-box">
           <div class="form-top">
                  <div class="form-top-left">
                                <p>Post a donation request:</p>
                  </div>
           </div>
           <div class="form-bottom">
                          <form:form id = "requestForm" role="form" action="postrequest.htm" method="post" commandName = "makerequest" class="login-form">
                              <div style="font-size:15pt;height:35px;width:300px;margin-left:130px">State</div>
                              <div class="dropdown">
                                   <select  name = "state" class="form-control" style="font-size:10pt;height:35px;width:300px;margin-left:40px">
							        <option>Massachusetts</option>
							        <option>New Hampshire</option>
							        <option>New York</option>
							        <option>Maine</option>
							        <option>New Jersey</option>
							        <option>North Carolina</option>
							        <option>South Carolina</option>
							        <option>Florida</option>
							        <option>California</option>
							        <option>Arizona</option>
							        <option>Illinois</option>
							        <option>Rhode Island</option>
							        <option>Pennsylvania</option>
							        
							      </select>
                              </div> 
                              <div style="font-size:15pt;height:35px;width:300px;margin-left:130px">City</div>
                              <div class="dropdown">
                                   <select name = "city" class="form-control" style="font-size:10pt;height:35px;width:300px;margin-top:15px;margin-left:40px">
							        <option>Boston</option>
							        <option>New York</option>
							        <option>New Jersey</option>
							        <option>Miami</option>
							        <option>Washington</option>
							        <option>Phoenix</option>
							        <option>San Jose</option>
							        <option>Chicago</option>
							        <option>New England</option>
							      </select>
                              </div>
                              <div style="font-size:15pt;height:35px;width:300px;margin-left:130px">Blood Group</div>
                              <div class="dropdown">
                                   <select name = "bloodGroup" class="form-control" style="font-size:10pt;height:35px;width:300px;margin-top:15px;margin-left:40px">
							       
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
							      </select>
                              </div>
                              <div style="font-size:15pt;height:35px;width:300px;margin-left:130px">Message</div>
                              <div>
                              <div>
                              <%-- <c:if test="${!empty requestScope.error}">
                                       <p style="color:green">Request has been potsed successfully</p>
               					  </c:if>
                              </div> --%>
                              <input type = "text" name = "message" placeholder = "message" style="height:45px;width:300px;margin-top:15px;margin-left:40px"/>
                              </div>
                              <button type="submit" style="width:200px;margin-top:15px;margin-left:100px">Post A Request</button> 
               </form:form>
           </div>
      </div>
   </div>

 <!-- Javascript -->
        <script src="resources/assets/js/jquery-1.11.1.min.js"></script>
        <script src="resources/assets/js/jquery.backstretch.min.js"></script>
        <script src="resources/assets/js/retina-1.1.0.min.js"></script>
        <script src="resources/assets/js/scripts.js"></script>
</body>
</html>