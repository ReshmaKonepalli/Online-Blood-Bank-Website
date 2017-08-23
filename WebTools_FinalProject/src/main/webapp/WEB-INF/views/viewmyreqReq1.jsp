<!DOCTYPE html>
<html lang="en">
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
 <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Bootstrap Core CSS -->
    <link href="resources/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="resources/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="resources/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="resources/bower_components/datatables-responsive/css/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="resources/dist1/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="resources/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/dist/css/AdminLTE.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/dist/css/skins/skin-blue.min.css">

</head>

<body>

    <div id="wrapper">
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
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Your Blood Requests</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Your total requests : ${fn:length(allReq)} 
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="dataTable_wrapper">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>State</th>
                                            <th>City</th>
                                            <th>Blood Group</th>
                                            <th>Message</th>
                                            <th>Delete</th>
                                            <th>View</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="ra" items="${allReq}">
                <tr>
                    <td>${ra.state}</td>
                    <td>${ra.city}</td>
                    <td>${ra.bloodGroup}</td>
                    <td>${ra.message}</td>
                    <td><a href="deladonor/${ra.advertid}.htm"><button type="button" class="btn btn-primary">Delete Request</button></a></td>
                    <td><a href="viewadonor/${ra.advertid}.htm"><button type="button" class="btn btn-primary">View Donors</button></a></td>
                    
                </tr>
            </c:forEach>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
    <!-- /#wrapper -->

    <!-- jQuery -->
     <script src="resources/bower_components/jquery/dist/jquery.min.js"></script> 

    <!-- Bootstrap Core JavaScript -->
    <script src="resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="resources/bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="resources/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
    <script src="resources/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="resources/dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
                responsive: true
        });
    });
    </script>

</body>

</html>
