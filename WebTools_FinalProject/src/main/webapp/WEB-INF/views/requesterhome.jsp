<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

    <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">

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
        <a href="#" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-mini"><b>S</b>B</span>
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
                  <span class="label label-success">4</span>
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
              </li>/.messages-menu -->

              <!-- Notifications Menu -->
              <!-- <li class="dropdown notifications-menu">
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
              </li> -->
              <!-- Tasks Menu -->
 <!--              <li class="dropdown tasks-menu">
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
                    <img src="resources/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                    <p>
                      ${sessionScope.requestersession.firstName } - Blood Requester
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
                   <!--  <div class="pull-left">
                      <a href="#" class="btn btn-default btn-flat">Profile</a>
                    </div> -->
                    <!-- <form class="form-horizontal" action="requesterlogout.htm" method="post"> -->
	                    <div class="pull-right">  
	                      <a href="requesterlogout.htm" class="btn btn-default btn-flat">Sign out</a> 
	                    </div>
                    <!-- </form> --> 
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
                <li><a href="${pageContext.request.contextPath}/requesterprofile.htm">Update Profile</a></li>           
              </ul>
            </li>
            <!-- Optionally, you can add icons to the links -->
            <li class="treeview">
              <a href="#"><i class="fa fa-link"></i> <span>Requests</span> <i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
                <li><a href="${pageContext.request.contextPath}/makearequest.htm">Make A Request</a></li>
                <li><a href="${pageContext.request.contextPath}/viewmyreqReq.htm">Request Status</a></li>
                <!-- <li><a href="ajaxsearch.htm">Ajaax Search</a></li> -->
              </ul>
            </li>
          </ul><!-- /.sidebar-menu -->
        </section>
        <!-- /.sidebar -->
      </aside>

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Blood Requirements
            <small>According to a the World Health Organization</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
            <li class="active">Here</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">

       <p>
         <ul>

         <li>When a person is willing to donate his blood, 
         he needs to register in this site along with his address,
          area phone numbers. </li>
          <li>During crisis in and around your area, 
          the person who need blood will be able to contact you after having 
          searched the site.</li>
          <li> This helps the time in acquiring blood, and the speed at which the blood is available helps save the patients life.
          </li><li> Are you ready to be the one who wipes out tears from a mother’, father’s, husbend’s, wife’s or neighbor’s eyes?
          </li>
          <li>It is a BIG WORLD out there and everybody need help. Do you know that every 2 seconds, someone someware is in need of blood?</li>
          <li>A life’s pace is increased, so does the rate of accident. </li>
          <li>Accordindg to the statistics of BBC 2005, one person dies every six minutes and 10 are injured in the same time frame.</li>
          <li>Non availability of blood is the major cause to death. Why is that there is shortage of blood?</li>
          <ol>
          <li> Unawareness among people.</li>
          <li> Non availability of blood in the blood bank.</li>
          </ol>
          <li>To donate, you must be in generally good physical health and feeling well that day.</li>
          <li>To donate whole blood, you must be at least 17 years old (16 years old with signed parental consent form*) and weigh at least 110 pounds.</li>
          <li>To donate double red blood cells, you must be at least 17 years old (16 years old with signed parental consent form*).  Men must weigh at least 130 pounds and be at least 5’1″ tall; women must weigh at least 150 pounds and be at least 5’3’’ tall; the height and weight requirements may differ slightly based on the machine used.</li>
          <li>To donate platelets, you must be at least 17 years old (16 years old with signed parental consent form*) and weigh at least 110 pounds.</li>
          <li>To donate plasma, you must be at least 17 years old (16 years old with signed parental consent form*) and weigh at least 125 pounds.</li>
          <li>To donate a red cell and plasma, you must be at least 17 years old (16 years old with signed parental consent form*) and weigh 125 pounds.</li>
          <li>Many of the qualifications for donating to the community blood supply do not apply for autologous donations.  However, certain medical conditions may keep patient/donors from making autologous donations.  Specific questions about eligibility can be directed to the Special Donations Department at 1-800-310-9552.</li>
          <li>All directed donors must meet the same strict regulatory requirements set by the Food and Drug Administration for the general blood supply.  Any directed donation that does not meet the regulatory requirements will be destroyed.  Directed donors must also meet the same criteria as general blood donors regarding prior health history and high-risk activities.  Directed donors will be deferred from giving based upon the standard regulatory requirements for blood donation.</li>

         
       </ul>
       </p>

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
            </form>
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