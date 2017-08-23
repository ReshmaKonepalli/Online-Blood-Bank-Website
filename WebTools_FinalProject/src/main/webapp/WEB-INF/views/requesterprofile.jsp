<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

    <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
    
    <link rel="stylesheet" href="resources/css/donorprofile.css">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">

    <link rel="stylesheet" href="resources/dist/css/AdminLTE.min.css">

    <link rel="stylesheet" href="resources/dist/css/skins/skin-blue.min.css">
</head>
<body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">

      <!-- Main Header -->
      <header class="main-header">

        <!-- Logo -->
        <a href="${pageContext.request.contextPath}/requesterhome.htm" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-mini"><b>SB</b></span>
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg"><b>Smart </b>blood</span>
        </a>

        <!-- Header Navbar -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
          </a>
          <!-- Navbar Right Menu -->
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
              <!-- Messages: style can be found in dropdown.less-->
              <!-- <li class="dropdown messages-menu">
                Menu toggle button
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-envelope-o"></i>
                  <span class="label label-success">6</span>
                </a>
                <ul class="dropdown-menu">
                  <li class="header">You have 4 messages</li>
                  <li>
                    inner menu: contains the messages
                    <ul class="menu">
                      <li>start message
                        <a href="#">
                          <div class="pull-left">
                            User Image
                            <img src="resources/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                          </div>
                          Message title and timestamp
                          <h4>
                            Support Team
                            <small><i class="fa fa-clock-o"></i> 5 mins</small>
                          </h4>
                          The message
                          <p>Why not buy a new awesome theme?</p>
                        </a>
                      </li>end message
                    </ul>/.menu
                  </li>
                  <li class="footer"><a href="#">See All Messages</a></li>
                </ul>
              </li>/.messages-menu

              Notifications Menu
              <li class="dropdown notifications-menu">
                Menu toggle button
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-bell-o"></i>
                  <span class="label label-warning">10</span>
                </a>
                <ul class="dropdown-menu">
                  <li class="header">You have 10 notifications</li>
                  <li>
                    Inner Menu: contains the notifications
                    <ul class="menu">
                      <li>start notification
                        <a href="#">
                          <i class="fa fa-users text-aqua"></i> 5 new members joined today
                        </a>
                      </li>end notification
                    </ul>
                  </li>
                  <li class="footer"><a href="#">View all</a></li>
                </ul>
              </li>
              Tasks Menu
              <li class="dropdown tasks-menu">
                Menu Toggle Button
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-flag-o"></i>
                  <span class="label label-danger">9</span>
                </a>
                <ul class="dropdown-menu">
                  <li class="header">You have 9 tasks</li>
                  <li>
                    Inner menu: contains the tasks
                    <ul class="menu">
                      <li>Task item
                        <a href="#">
                          Task title and progress text
                          <h3>
                            Design some buttons
                            <small class="pull-right">20%</small>
                          </h3>
                          The progress bar
                          <div class="progress xs">
                            Change the css width attribute to simulate progress
                            <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                              <span class="sr-only">20% Complete</span>
                            </div>
                          </div>
                        </a>
                      </li>end task item
                    </ul>
                  </li>
                  <li class="footer">
                    <a href="#">View all tasks</a>
                  </li>
                </ul>
              </li> -->
              <!-- User Account Menu -->
              <li class="dropdown user user-menu">
                <!-- Menu Toggle Button -->
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <!-- The user image in the navbar-->
                  <img src="resources/dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                  <!-- hidden-xs hides the username on small devices so only the image appears. -->
                  <span class="hidden-xs">${sessionScope.requestersession.firstName }</span>
                </a>
                <ul class="dropdown-menu">
                  <!-- The user image in the menu -->
                  <li class="user-header">
                    <img src="${pageContext.request.contextPath}/resources/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                    <p>
                      ${sessionScope.requestersession.firstName } - Blood Donor
                      <small>Member since Nov. 2012</small>
                    </p>
                  </li>
                  <!-- Menu Body -->
                  <!-- <li class="user-body">
                    <div class="col-xs-4 text-center">
                      <a href="#">Followers</a>
                    </div>
                    <div class="col-xs-4 text-center">
                      <a href="#">Sales</a>
                    </div>
                    <div class="col-xs-4 text-center">
                      <a href="#">Friends</a>
                    </div>
                  </li> -->
                  <!-- Menu Footer-->
                  <li class="user-footer">
                    <!-- <div class="pull-left">
                      <a href="#" class="btn btn-default btn-flat">Profile</a>
                    </div> -->
                    <div class="pull-right">
                      <a href="${pageContext.request.contextPath}/requesterlogout.htm" class="btn btn-default btn-flat">Sign out</a>
                    </div>
                  </li>
                </ul>
              </li>
              <!-- Control Sidebar Toggle Button -->
              <li>
                <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
              </li>
            </ul>
          </div>
        </nav>
      </header>
      <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">

        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">

          <!-- Sidebar user panel (optional) -->
          <div class="user-panel">
            <div class="pull-left image">
              <img src="resources/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
              <p>${sessionScope.requestersession.firstName } ${sessionScope.requestersession.lastName }</p>
              <!-- Status -->
              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div>

          <!-- Sidebar Menu -->
          <ul class="sidebar-menu">
            <li class="header">Menu</li>
            <li class="treeview">
              <a href="#"><i class="fa fa-link"></i> <span>Profile</span> <i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
                 <li><a href="${pageContext.request.contextPath}/viewreqprofile.htm">View Profile</a></li>
                <li><a href="#">Update Profile</a></li>
              </ul>
            </li>
            <!-- Optionally, you can add icons to the links -->
            <li class="treeview">
              <a href="#"><i class="fa fa-link"></i> <span>Requests</span> <i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
                <li><a href="${pageContext.request.contextPath}/makearequest.htm">Make A Request</a></li>
                <li><a href="${pageContext.request.contextPath}/viewmyreqReq.htm">Request Status</a></li>
              </ul>
            </li>
          </ul><!-- /.sidebar-menu -->
        </section>
        <!-- /.sidebar -->
      </aside>

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Main content -->
        <section class="content">

       <div class="container">

<div class="row">
    <div class="col-xs-12 col-sm-8 col-md-8 col-sm-offset-2 col-md-offset-1">
    
		 <form:form role="form" action="updaterequesterprofile.htm" commandName = "requester" method="post" class="registration-form">
			<h2>Update Donor Profile</h2>
			<hr class="colorgraph">
			<div class="row">
				<div class="col-xs-6 col-sm-3 col-md-2">
					<h4>First Name</h4>
				</div>
				<div class="col-xs-6 col-sm-3 col-md-4">
					<div class="form-group">
						<form:input path="firstName" value = "${updateSt.firstName }" class="form-last-name form-control" id="form-last-name"/>
					    <form:errors path="firstName"/>
					</div>
				</div>
				<div class="col-xs-6 col-sm-3 col-md-2">
					<h4>Last Name</h4>
				</div>
				<div class="col-xs-6 col-sm-3 col-md-4">
					<div class="form-group">
						<form:input path="lastName" value = "${updateSt.lastName }" class="form-last-name form-control" id="form-last-name"/>
					    <form:errors path="lastName"/>
					</div>
				</div>
			</div>
			<div class="row">
			<div class="col-xs-6 col-sm-3 col-md-2">
					<h4>Password</h4>
				</div>
				<div class="col-xs-6 col-sm-3 col-md-4">
					<div class="form-group">
                       <form:password path= "password" value = "${updateSt.password }" class="form-password-name form-control" id="form-password-name"/>
					   <form:errors path="password"/>
					</div>
				</div>
				<div class="col-xs-6 col-sm-3 col-md-2">
					<h4>Email</h4>
				</div>
				<div class="col-xs-6 col-sm-3 col-md-4">
					<div class="form-group">
						<form:input path="email" type = "email" value = "${updateSt.email }" class="form-email-name form-control" id="form-email-name"/>
					    <form:errors path="email"/>
					</div>
				</div>
			</div>
		    <div class="row">
				<div class="col-xs-6 col-sm-3 col-md-2">
					<h4>Gender</h4>
				</div>
				<div class="col-xs-6 col-sm-3 col-md-4">
					<div class="form-group">
                       <form:input path= "gender" value = "${updateSt.gender }" class="form-gender-name form-control" id="form-gender-name"/>
					   <form:errors path="gender"/>
					</div>
				</div>
				<div class="col-xs-6 col-sm-3 col-md-2">
					<h4>Age</h4>
				</div>
				<div class="col-xs-6 col-sm-3 col-md-4">
					<div class="form-group">
						<form:input path="age" value = "${updateSt.age }" type = "number" min = "1" max = "100" class="form-age-name form-control" id="form-age-name"/>
					    <form:errors path="age"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-6 col-sm-3 col-md-2">
					<h4>Address</h4>
				</div>
				<div class="col-xs-6 col-sm-3 col-md-4">
					<div class="form-group">
                       <form:input path= "requesterAddress" value = "${updateSt.requesterAddress }" class="form-address-name form-control" id="form-address-name"/>
					   <form:errors path="requesterAddress"/>
					</div>
				</div>
				<div class="col-xs-6 col-sm-3 col-md-2">
					<h4>City</h4>
				</div>
				<div class="col-xs-6 col-sm-3 col-md-4">
					<div class="form-group">
						<form:input path="requesterCity" value = "${updateSt.requesterCity }" class="form-city-name form-control" id="form-city-name"/>
					    <form:errors path="requesterCity"/>
					</div>
				</div>
			</div>
		    <div class="row">
				<div class="col-xs-6 col-sm-3 col-md-2">
					<h4>Phone Number</h4>
				</div>
				<div class="col-xs-6 col-sm-3 col-md-4">
					<div class="form-group">
                       <form:input path= "phoneNumber" type = "number" min = "1000000000" max = "9999999999" value = "${updateSt.phoneNumber }" class="form-phoneNumber-name form-control" id="form-phoneNumber-name"/>
					   <form:errors path="phoneNumber"/>
					</div>
				</div>
                <div class="col-xs-6 col-sm-3 col-md-2">
					<h4>Blood Group</h4>
				</div>
				<div class="col-xs-6 col-sm-3 col-md-4">
					<div class="form-group">
                       <form:input path= "requesterBloodGroup" value = "${updateSt.requesterBloodGroup }" class="form-bloodGroup-name form-control" id="form-bloodGroup-name"/>
					   <form:errors path="requesterBloodGroup"/>
					</div>
				</div>
			</div>
			<div>
			   <c:if test="${!empty requestScope.error}">
                <p style="color:green">Profile updated successfully</p>
               </c:if>
			</div>
			
			<hr class="colorgraph">
			<div class="row" >
				<div class="col-xs-12 col-md-4 col-md-offset-4"><input type="submit" value="Update Profile" class="btn btn-primary btn-block btn-md" tabindex="7"></div>
			</div>
		</form:form>
	</div>
</div>

</div>

        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->


      <!-- Control Sidebar -->
      <aside class="control-sidebar control-sidebar-dark">
        <!-- Create the tabs -->
        <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
          <li class="active"><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
          <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
        </ul>
        <!-- Tab panes -->
        <div class="tab-content">
          <!-- Home tab content -->
          <div class="tab-pane active" id="control-sidebar-home-tab">
            <h3 class="control-sidebar-heading">Recent Activity</h3>
            <ul class="control-sidebar-menu">
              <li>
                <a href="javascript::;">
                  <i class="menu-icon fa fa-birthday-cake bg-red"></i>
                  <div class="menu-info">
                    <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>
                    <p>Will be 23 on April 24th</p>
                  </div>
                </a>
              </li>
            </ul><!-- /.control-sidebar-menu -->

            <h3 class="control-sidebar-heading">Tasks Progress</h3>
            <ul class="control-sidebar-menu">
              <li>
                <a href="javascript::;">
                  <h4 class="control-sidebar-subheading">
                    Custom Template Design
                    <span class="label label-danger pull-right">70%</span>
                  </h4>
                  <div class="progress progress-xxs">
                    <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
                  </div>
                </a>
              </li>
            </ul><!-- /.control-sidebar-menu -->

          </div><!-- /.tab-pane -->
          <!-- Stats tab content -->
          <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div><!-- /.tab-pane -->
          <!-- Settings tab content -->
          <div class="tab-pane" id="control-sidebar-settings-tab">
            <form method="post">
              <h3 class="control-sidebar-heading">General Settings</h3>
              <div class="form-group">
                <label class="control-sidebar-subheading">
                  Report panel usage
                  <input type="checkbox" class="pull-right" checked>
                </label>
                <p>
                  Some information about this general settings option
                </p>
              </div><!-- /.form-group -->
            <form>
          </div><!-- /.tab-pane -->
        </div>
      </aside><!-- /.control-sidebar -->
      <div class="control-sidebar-bg"></div>
    </div><!-- ./wrapper -->

    <!-- REQUIRED JS SCRIPTS -->

    <!-- jQuery 2.1.4 -->
    <script src="resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="resources/bootstrap/js/bootstrap.min.js"></script>
    <!-- AdminLTE App -->
    <script src="resources/dist/js/app.min.js"></script>

  </body>
</html>