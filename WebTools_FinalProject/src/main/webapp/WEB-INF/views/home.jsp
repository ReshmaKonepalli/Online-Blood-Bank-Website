<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link href="resources/css/mainpage.css" rel="stylesheet">
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
      
      <a class="navbar-brand" href="login.htm"><b>Smart Blood</b></a>
      <div class="col-md-1"></div>
      <ul class="nav navbar-nav">
                    <li>
                        <a href="login.htm">About Us</a>
                    </li>
                    <li>
                        <a href="login.htm">Donate Blood</a>
                    </li>
                    <li>
                        <a href="login.htm">Donor Eligibility</a>
                    </li>
                    <li>
                        <a href="login.htm">Host A Drive</a>
                    </li>
                    <li>
                        <a href="login.htm">Contact Us</a>
                    </li>
      </ul>
<!-- <a href="#" data-toggle="modal" data-target="#login-modal">Login</a>

<div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
        <div class="modal-dialog">
        <div class="loginmodal-container">
          <h1>Login to Your Account</h1><br>
          <form>
          <input type="text" name="user" placeholder="Username">
          <input type="password" name="pass" placeholder="Password">
          <input type="submit" name="login" class="login loginmodal-submit" value="Login">
          </form>
          
          <div class="login-help">
          <a href="#">Register</a> - <a href="#">Forgot Password</a>
          </div>
        </div>
      </div>
      </div> -->
      <ul class="nav navbar-nav navbar-right">
        <li><a href="login.htm"><b>Login/Sign in here</b></a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div>
</nav>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
          <!-- Indicators -->
          <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
          </ol>

          <!-- Wrapper for slides -->
          <div class="carousel-inner" role="listbox">
            <div class="item active">
              <div class="fill">
              <img src="resources/images/homeimg1.jpg" alt="bloodBank1" width="1600" height="400" align = "center">
              </div>
            </div>
            <div class="item">
              <div class="fill">
              <img src="resources/images/homeimg3.jpg" alt="bloodBank2" width="1600" height="400" align = "center">
            </div>
            </div>
          
            <div class="item">
              <div class="fill">
               <img src="resources/images/homeimg4.jpg" alt="bloodBank3" width="1600" height="400" align = "center">
              </div> 
            </div>

            <div class="item">
              <div class="fill">
               <img src="resources/images/homeimg2.jpg" alt="bloodBank4" width="1600" height="400" align = "center">
              </div> 
            </div>
          </div>

          <!-- Left and right controls -->
          <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
</div>
    <div class="container">

        <!-- Marketing Icons Section -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    Welcome to the smart blood online blood bank  
                </h1>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i> Know Your Type</h4>
                    </div>
                    <div class="panel-body">
                        <p>Are you A? B? O? AB?If you want to become a blood donor, find out your blood type! The easiest way to accurately, safely and cost-effectively discover your blood type is to donate.Whatever your blood type, there is a donation type specific to you.</p>
                        <a href="login.htm" class="btn btn-default">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-gift"></i> Ethnicity &amp; Blood Donation</h4>
                    </div>
                    <div class="panel-body">
                        <p>Less than 1 percent of blood donations are from African Americans or Hispanics.Though compatibility is not based on race, genetically similar blood is best for patients who need repeated or large volumes of blood transfusions.</p>
                        <a href="login.htm" class="btn btn-default">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-compass"></i> Where to Donate</h4>
                    </div>
                    <div class="panel-body">
                        <p>We operate 22 conveniently located community donor centers and fixed sites — all of our donor centers and fixed sites collect whole blood, and many of the sites also offer the automated and apheresis donation processes.</p>
                        <a href="login.htm" class="btn btn-default">Learn More</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.row -->

        <!-- Portfolio Section -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">Information Center</h2>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="resources/images/pfimg1.jpg" alt="">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="resources/images/pfimg2.jpg" alt="">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="resources/images/pfimg3.jpg" alt="">
                </a>
            </div>
            
        </div>
        <!-- /.row -->

        <!-- Features Section -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">Blood facts</h2>
            </div>
            <div class="col-md-6">
                <ul>
                    <li>Blood is the life-maintaining fluid that circulates through the body's heart, arteries, veins and capillaries.</li>
                    <li>Blood carries to the body nourishment, electrolytes, hormones, vitamins, antibodies, heat, and oxygen.</li>
                    <li>Blood carries away from the body waste matter and carbon dioxide.</li>
                    <li>Blood fights against infection and helps heal wounds, keeping you healthy.</li>
                    <li>Blood makes up about 7% of your body's weight.</li>
                    <li>A newborn baby has about one cup of blood in his or her body.</li>
                    <li>White blood cells are the body's primary defence against infection.</li>
                    <li>Granulocytes, a type of white blood cell, roll along blood vessel walls to search and destroy bacteria.</li>
                    <li>Red blood cells carry oxygen to the body's organs and tissues.</li>
                    <li>There are about one billion red blood cells in two to three drops of blood.</li>
                </ul>
            </div>
            <div class="col-md-6">
                <img class="img-responsive" src="resources/images/subimg1.jpg" alt="">
            </div>
        </div>
        <!-- /.row -->

        <hr>

        <!-- Call to Action Section -->
        
                <div class="col-md-2">
                    <a href="login.htm">About us</a>
                </div>
                <div class="col-md-2">
                    <a href="login.htm">Feedback</a>
                </div>
                <div class="col-md-2">
                    <a href="login.htm">FAQ</a>
                </div>
                <div class="col-md-2">
                    <a href="login.htm">Privacy Policy</a>
                </div>
                <div class="col-md-2">
                    <a href="login.htm">Media Centre</a>
                </div>
                <div class="col-md-2">
                    <a href="login.htm">Share Your Experience</a>
                </div>
            
       

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; web_tools</p>
                </div>
            </div>
        </footer>

    </div>
</body>
</html>
