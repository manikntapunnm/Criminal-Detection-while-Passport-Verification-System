<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Passport Background Verification</title>
    <!-- HTML5 Shim and Respond.js IE10 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 10]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <meta name="keywords"
        content="bootstrap, bootstrap admin template, admin theme, admin dashboard, dashboard template, admin template, responsive" />
    <meta name="author" content="Codedthemes" />
    <!-- Favicon icon -->
    <link rel="icon" href="assets/images/passport.png" type="image/x-icon">
    <!-- Google font-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
    <!-- waves.css -->
    <link rel="stylesheet" href="assets/pages/waves/css/waves.min.css" type="text/css" media="all">
    <!-- Required Fremwork -->
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap/css/bootstrap.min.css">
    <!-- waves.css -->
    <link rel="stylesheet" href="assets/pages/waves/css/waves.min.css" type="text/css" media="all">
    <!-- themify icon -->
    <link rel="stylesheet" type="text/css" href="assets/icon/themify-icons/themify-icons.css">
    <!-- font-awesome-n -->
    <link rel="stylesheet" type="text/css" href="assets/css/font-awesome-n.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.min.css">
    <!-- scrollbar.css -->
    <link rel="stylesheet" type="text/css" href="assets/css/jquery.mCustomScrollbar.css">
    <!-- Style.css -->
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.19/dist/sweetalert2.min.css">
</head>

<body>
          <%
String adminloginsuccess = (String) session.getAttribute("adminloginsuccess");
if (adminloginsuccess != null) {
    // Clear the message attribute to prevent repeated display
    session.removeAttribute("adminloginsuccess");
%>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.19/dist/sweetalert2.min.js"></script>
    <script>
        Swal.fire({
            icon: '<%= "Success".equals(adminloginsuccess) ? "success" : "error" %>',
            title: 'Login',
            text: '<%= adminloginsuccess %>',
            timer: 1000, // Auto-close the dialog after 3 seconds
            //timerProgressBar: true,
            showConfirmButton: false
        })
    </script>
<%
}
%>
    <!-- Pre-loader start -->
    <div class="theme-loader">
        <div class="loader-track">
            <div class="preloader-wrapper">
                <div class="spinner-layer spinner-blue">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="gap-patch">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>
                <div class="spinner-layer spinner-red">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="gap-patch">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>

                <div class="spinner-layer spinner-yellow">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="gap-patch">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>

                <div class="spinner-layer spinner-green">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="gap-patch">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Pre-loader end -->
    <div id="pcoded" class="pcoded">
        <div class="pcoded-overlay-box"></div>
        <div class="pcoded-container navbar-wrapper">
            <nav class="navbar header-navbar pcoded-header">
                <div class="navbar-wrapper">
                    <div class="navbar-logo ml-5">
                        <a class="mobile-menu waves-effect waves-light " id="mobile-collapse" href="#!"
                            style="padding-left: 0px;">
                            <i class="ti-menu"></i>
                        </a>
                        <div class="mobile-search waves-effect waves-light">
                            <div class="header-search">
                                <div class="main-search morphsearch-search">
                                    <div class="input-group">
                                        <span class="input-group-prepend search-close"><i
                                                class="ti-close input-group-text"></i></span>
                                        <input type="text" class="form-control" placeholder="Enter Keyword">
                                        <span class="input-group-append search-btn"><i
                                                class="ti-search input-group-text"></i></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a href="admin_index.jsp">
                            PassPort Verification
                        </a>

                        <a class="mobile-options waves-effect waves-light">
                            <i class="ti-more"></i>
                        </a>
                    </div>
                    <div class="navbar-container container-fluid">
                        <ul class="nav-left">
                            <li>
                                <div class="sidebar_toggle"><a href="javascript:void(0)"><i class="ti-menu"></i></a>
                                </div>
                            </li>

                        </ul>
                        <ul class="nav-right">

                            <li class="user-profile header-notification">
                                <a href="#!" class="waves-effect waves-light mr-3  " style="padding-right: 40px;">


                                    <a href="admin-login.jsp">
                                        <i class="ti-layout-sidebar-left"></i>&nbsp; Logout
                                    </a>


                                </a>

                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

            <div class="pcoded-main-container">
                <div class="pcoded-wrapper">
                    <nav class="pcoded-navbar">
                        <div class="sidebar_toggle"><a href="#"><i class="icon-close icons"></i></a></div>
                        <div class="pcoded-inner-navbar main-menu">
                            <div class="">
                                <div class="main-menu-header">
                                    <img class="img-80 img-radius" src="assets/images/admin.png"
                                        alt="User-Profile-Image">
                                    <div class="user-details">
                                        <span id="more-details">Admin<i class="fa fa-caret"></i></span>
                                    </div>
                                </div>
                                <div class="main-menu-content">
                                    <ul>
                                        <li class="more-details">
                                            <!--a href="user-profile.jsp"><i class="ti-user"></i>View Profile</a>
                                            <a href="#!"><i class="ti-settings"></i>Settings</a-->
                                            <a href="index.jsp"><i
                                                    class="ti-layout-sidebar-left"></i>Logout</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="p-15 p-b-0">
                                <form class="form-material">

                                </form>
                            </div>
                            <ul class="pcoded-item pcoded-left-item">
                                <li class="active">
                                    <a href="admin-index.jsp" class="waves-effect waves-dark">
                                        <span class="pcoded-micon"><i class="ti-home"></i><b>D</b></span>
                                        <span class="pcoded-mtext">Dashboard</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                </li>
                            </ul>
                            <ul class="pcoded-item pcoded-left-item">
                                <li class="pcoded-hasmenu">
                                    <a href="javascript:void(0)" class="waves-effect waves-dark">
                                        <span class="pcoded-micon"><i class="bi bi-hospital"></i><b>BC</b></span>
                                        <span class="pcoded-mtext">Police Station Management</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class=" ">
                                            <a href="add_ps.jsp" class="waves-effect waves-dark">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext">Add Police Station</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="manage_ps.jsp" class="waves-effect waves-dark">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext">Manage Police Station</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>

                                    </ul>
                                </li>
                            </ul>

                            <ul class="pcoded-item pcoded-left-item">
                                <li class="pcoded-hasmenu">
                                    <a href="javascript:void(0)" class="waves-effect waves-dark">
                                        <span class="pcoded-micon"><i class="bi bi-shield-check"></i><b>BC</b></span>
                                        <span class="pcoded-mtext">Police Officer Management</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class=" ">
                                            <a href="add_po.jsp" class="waves-effect waves-dark">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext">Add Police Officer</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="manage_po.jsp" class="waves-effect waves-dark">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext">Manage Police Officer</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>

                                    </ul>
                                </li>
                            </ul>
                     <ul class="pcoded-item pcoded-left-item">
                                <li class="pcoded-hasmenu">
                                    <a href="javascript:void(0)" class="waves-effect waves-dark">
                                        <span class="pcoded-micon"><i class="fa fa-gavel"
                                                aria-hidden="true"></i><b>BC</b></span>
                                        <span class="pcoded-mtext">Criminal Management</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class=" ">
                                            <a href="add_criminal.jsp" class="waves-effect waves-dark">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext">Add Criminal</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="manage_criminal.jsp" class="waves-effect waves-dark">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext">Manage Criminal</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>

                                    </ul>
                                </li>
                            </ul>
  
                                                 <ul class="pcoded-item pcoded-left-item">
                                <li class="pcoded-hasmenu">
                                    <a href="javascript:void(0)" class="waves-effect waves-dark">
                                        <span class="pcoded-micon"><i class="fa fa-book"
                                                aria-hidden="true"></i><b>BC</b></span>
                                        <span class="pcoded-mtext">Passport Management</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class=" ">
                                            <a href="add_applicant.jsp" class="waves-effect waves-dark">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext">Add Applicant</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="manage_applicant.jsp" class="waves-effect waves-dark">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext">Manage Applicant</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>

                                    </ul>
                                </li>
                            </ul>
      


                        </div>
                    </nav>
                    <div class="pcoded-content">
                        <!-- Page-header start -->
                        <div class="page-header" style="padding-left:20px ;">
                            <div class="page-block">
                                <div class="row align-items-center">
                                    <div class="col-md-8">
                                        <div class="page-header-title">
                                            <h5 class="m-b-10">Dashboard</h5>
                                            <p class="m-b-0">Welcome to Passport Verification</p>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <ul class="breadcrumb">
                                            <li class="breadcrumb-item">
                                                <a href="admin-index.jsp"> <i class="fa fa-home"></i> </a>
                                            </li>
                                            <li class="breadcrumb-item"><a href="#!">Dashboard</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Page-header end -->
                        <div class="pcoded-inner-content" style="padding-left: 20px;">
                            <!-- Main-body start -->
                            <div class="main-body">
                                <div class="page-wrapper">
                                    <!-- Page-body start -->
                                    <div class="page-body">
                                        <div class="row">
                                            <!-- Material statustic card start -->



                                            <!-- Material statustic card end -->
                                            <!-- order-visitor start -->


                                            <!-- order-visitor end -->

                                            <!--  sale analytics start -->
                                            
            
 

                                            <div class="col-12">
                                                <div class="row justify-content-center">
                                                    <!-- sale card start -->
    <%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.codec.binary.Base64" %>
<%@ page import="org.apache.commons.codec.binary.Base64" %>
<%@ page import="Dbconn.dbconn"%> 
    <%
        
Connection connection = null;

try {
    // Get a database connection
    connection = new Dbconn.dbconn().getConnection();

    // Count total items from items1 table
    String itemsCountQuery = "SELECT COUNT(*) AS rejected_count FROM applicants where passportstatus='active crime'";
    PreparedStatement itemsCountStatement = connection.prepareStatement(itemsCountQuery);
    ResultSet itemsCountResult = itemsCountStatement.executeQuery();

    int itemCount = 0;
    if (itemsCountResult.next()) {
        itemCount = itemsCountResult.getInt("rejected_count");
    }

   // Count total partners from partners table
    String partnersCountQuery = "SELECT COUNT(*) AS verified_count FROM applicants where passportstatus='no crime'";
    PreparedStatement partnersCountStatement = connection.prepareStatement(partnersCountQuery);
    ResultSet partnersCountResult = partnersCountStatement.executeQuery();

    int partnerCount = 0;
    if (partnersCountResult.next()) {
        partnerCount = partnersCountResult.getInt("verified_count");
    }
    
String pendingOrdersCountQuery = "SELECT COUNT(*) AS officers_count FROM police_officers ";
PreparedStatement pendingOrdersCountStatement = connection.prepareStatement(pendingOrdersCountQuery);
ResultSet pendingOrdersCountResult = pendingOrdersCountStatement.executeQuery();

int pendingOrderCount = 0;
if (pendingOrdersCountResult.next()) {
    pendingOrderCount = pendingOrdersCountResult.getInt("officers_count");
}
String paidOrdersCountQuery = "SELECT COUNT(*) AS criminals_count FROM criminals ";
PreparedStatement paidOrdersCountStatement = connection.prepareStatement(paidOrdersCountQuery);
ResultSet paidOrdersCountResult = paidOrdersCountStatement.executeQuery();

int paidOrderCount = 0;
if (paidOrdersCountResult.next()) {
    paidOrderCount = paidOrdersCountResult.getInt("criminals_count");
}
  

        %>  
                                                    <div class="col-md-6">
                                                        <div class="card text-center order-visitor-card">
                                                            <div class="card-block">
                                                                <h6 class="m-b-0">Passports Rejected</h6>
                                                                <h4 class="m-t-15 m-b-15"><i
                                                                        class="fa fa-arrow-down m-r-15 text-c-red"></i><%=itemCount%>
                                                                </h4>
                                                             
                                                            </div>
                                                        </div>
                                                    </div>
                                                    
                                                    
            
                                                    <div class="col-md-6">
                                                        <div class="card text-center order-visitor-card">
                                                            <div class="card-block">
                                                                <h6 class="m-b-0">Passports Verified</h6>
                                                                <h4 class="m-t-15 m-b-15"><i
                                                                        class="fa fa-arrow-up m-r-15 text-c-green"></i><%=partnerCount%>
                                                                </h4>
                                                               
                                                            </div>
                                                        </div>
                                                    </div>
                                                    
     
                                                    
                                                    <div class="col-md-6">
                                                        <div class="card text-center order-visitor-card">
                                                            <div class="card-block">
                                                                <h6 class="m-b-0">No of Officers</h6>
                                                                <h4 class="m-t-15 m-b-15"><i
                                                                        class="fa fa-arrow-down m-r-15 text-c-red"></i><%=pendingOrderCount%>
                                                                </h4>
                                                                
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="card text-center order-visitor-card">
                                                            <div class="card-block">
                                                                <h6 class="m-b-0">No of Criminals </h6>
                                                                <h4 class="m-t-15 m-b-15"><i
                                                                        class="fa fa-arrow-up m-r-15 text-c-green"></i><%=paidOrderCount%>
                                                                </h4>
                                                               
                                                            </div>
                                                        </div>
                                                    </div>
                                                                                                                                                                                           <%
                   } catch (SQLException e) {
    e.printStackTrace(); // Handle any potential exceptions here
} finally {
    // Close the database connection in a finally block to ensure it's always closed
    if (connection != null) {
        try {
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace(); // Handle any exceptions that occur while closing the connection
        }
    }
} 

                    %>  
                                                </div>
                                            </div>

                                            <div class="col-xl-12">
                                                <div class="card proj-progress-card">
                                                    <div class="card-block">
                                                        <div class="row">
                                                            <div class="col-xl-3 col-md-6">
                                                                <h6>Published Project</h6>
                                                                <h5 class="m-b-30 f-w-700">532<span
                                                                        class="text-c-green m-l-10">+1.69%</span></h5>
                                                                <div class="progress">
                                                                    <div class="progress-bar bg-c-red"
                                                                        style="width:25%"></div>
                                                                </div>
                                                            </div>
                                                            <div class="col-xl-3 col-md-6">
                                                                <h6>Completed Task</h6>
                                                                <h5 class="m-b-30 f-w-700">4,569<span
                                                                        class="text-c-red m-l-10">-0.5%</span></h5>
                                                                <div class="progress">
                                                                    <div class="progress-bar bg-c-blue"
                                                                        style="width:65%"></div>
                                                                </div>
                                                            </div>
                                                            <div class="col-xl-3 col-md-6">
                                                                <h6>Successfull Task</h6>
                                                                <h5 class="m-b-30 f-w-700">89%<span
                                                                        class="text-c-green m-l-10">+0.99%</span></h5>
                                                                <div class="progress">
                                                                    <div class="progress-bar bg-c-green"
                                                                        style="width:85%"></div>
                                                                </div>
                                                            </div>
                                                            <div class="col-xl-3 col-md-6">
                                                                <h6>Ongoing Project</h6>
                                                                <h5 class="m-b-30 f-w-700">365<span
                                                                        class="text-c-green m-l-10">+0.35%</span></h5>
                                                                <div class="progress">
                                                                    <div class="progress-bar bg-c-yellow"
                                                                        style="width:45%"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Project statustic end -->
                                        </div>
                                    </div>
                                    <!-- Page-body end -->
                                </div>
                                <div id="styleSelector"> </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Warning Section Starts -->
    <!-- Older IE warning message -->
    <!--[if lt IE 10]>
<div class="ie-warning">
    <h1>Warning!!</h1>
    <p>You are using an outdated version of Internet Explorer, please upgrade <br/>to any of the following web browsers to access this website.</p>
    <div class="iew-container">
        <ul class="iew-download">
            <li>
                <a href="http://www.google.com/chrome/">
                    <img src="assets/images/browser/chrome.png" alt="Chrome">
                    <div>Chrome</div>
                </a>
            </li>
            <li>
                <a href="https://www.mozilla.org/en-US/firefox/new/">
                    <img src="assets/images/browser/firefox.png" alt="Firefox">
                    <div>Firefox</div>
                </a>
            </li>
            <li>
                <a href="http://www.opera.com">
                    <img src="assets/images/browser/opera.png" alt="Opera">
                    <div>Opera</div>
                </a>
            </li>
            <li>
                <a href="https://www.apple.com/safari/">
                    <img src="assets/images/browser/safari.png" alt="Safari">
                    <div>Safari</div>
                </a>
            </li>
            <li>
                <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
                    <img src="assets/images/browser/ie.png" alt="">
                    <div>IE (9 & above)</div>
                </a>
            </li>
        </ul>
    </div>
    <p>Sorry for the inconvenience!</p>
</div>
<![endif]-->
    <!-- Warning Section Ends -->

    <!-- Required Jquery -->
    <script type="text/javascript" src="assets/js/jquery/jquery.min.js "></script>
    <script type="text/javascript" src="assets/js/jquery-ui/jquery-ui.min.js "></script>
    <script type="text/javascript" src="assets/js/popper.js/popper.min.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap/js/bootstrap.min.js "></script>
    <!-- waves js -->
    <script src="assets/pages/waves/js/waves.min.js"></script>
    <!-- jquery slimscroll js -->
    <script type="text/javascript" src="assets/js/jquery-slimscroll/jquery.slimscroll.js"></script>

    <!-- slimscroll js -->
    <script src="assets/js/jquery.mCustomScrollbar.concat.min.js "></script>

    <!-- menu js -->
    <script src="assets/js/pcoded.min.js"></script>
    <script src="assets/js/vertical/vertical-layout.min.js "></script>

    <script type="text/javascript" src="assets/js/script.js "></script>
    <script type="text/javascript">
        var iconClass = ['la-500px', 'la-adjust', 'la-adn', 'la-align-center', 'la-align-justify',
            'la-align-left', 'la-align-right', 'la-amazon', 'la-ambulance', 'la-anchor', 'la-android', 'la-angellist', 'la-angle-double-down', 'la-angle-double-left', 'la-angle-double-right', 'la-angle-double-up', 'la-angle-down', 'la-angle-left', 'la-angle-right', 'la-angle-up', 'la-apple', 'la-archive', 'la-area-chart', ' la-arrow-circle-down', 'la-arrow-circle-left', 'la-arrow-circle-o-down', 'la-arrow-circle-o-left', 'la-arrow-circle-o-right', 'la-arrow-circle-o-up', 'la-arrow-circle-right', 'la-arrow-circle-up', 'la-arrow-down', 'la-arrow-left', 'la-arrow-right', 'la-arrow-up', 'la-arrows', 'la-arrows-alt', 'la-arrows-h', 'la-arrows-v', 'la-asterisk', 'la-at', 'la-automobile', 'la-backward', 'la-balance-scale', 'la-ban', 'la-bank', 'la-bar-chart', 'la-bar-chart-o', 'la-barcode', 'la-bars', 'la-battery-0', 'la-battery-1', 'la-battery-2', 'la-battery-3', 'la-battery-4', 'la-battery-empty', 'la-battery-full', 'la-battery-half', 'la-battery-quarter', 'la-battery-three-quarters', 'la-bed', 'la-beer', 'la-behance', 'la-behance-square', 'la-bell', 'la-bell-o', 'la-bell-slash', 'la-bell-slash-o', 'la-bicycle', 'la-binoculars', 'la-birthday-cake', 'la-bitbucket', 'la-bitbucket-square', 'la-bitcoin', 'la-black-tie', 'la-bold', 'la-bolt', 'la-bomb', 'la-book', 'la-bookmark', 'la-bookmark-o', 'la-briefcase', 'la-btc', 'la-bug', 'la-building', 'la-building-o', 'la-bullhorn', 'la-bullseye', 'la-bus', 'la-buysellads', 'la-cab', 'la-calculator', 'la-calendar', 'la-calendar-check-o', 'la-calendar-minus-o', 'la-calendar-o', 'la-calendar-plus-o', 'la-calendar-times-o', 'la-camera', 'la-camera-retro', 'la-car', 'la-caret-down', 'la-caret-left', 'la-caret-right', 'la-caret-square-o-down', 'la-toggle-down', 'la-caret-square-o-left', 'la-toggle-left', 'la-caret-square-o-right', 'la-toggle-right', 'la-caret-square-o-up', 'la-toggle-up', 'la-caret-up', 'la-cart-arrow-down', 'la-cart-plus', 'la-cc', 'la-cc-amex', 'la-cc-diners-club', 'la-cc-discover', 'la-cc-jcb', 'la-cc-mastercard', 'la-cc-paypal', 'la-cc-stripe', 'la-cc-visa', 'la-certificate', 'la-chain', 'la-chain-broken', 'la-check', 'la-check-circle', 'la-check-circle-o', 'la-check-square', 'la-check-square-o', 'la-chevron-circle-down', 'la-chevron-circle-left', 'la-chevron-circle-right', 'la-chevron-circle-up', 'la-chevron-down', 'la-chevron-left', 'la-chevron-right', 'la-chevron-up', 'la-child', 'la-chrome', 'la-circle', 'la-circle-o', 'la-circle-o-notch', 'la-circle-thin', 'la-clipboard', 'la-clock-o', 'la-clone', 'la-close', 'la-cloud', 'la-cloud-download', 'la-cloud-upload', 'la-cny', 'la-code', 'la-code-fork', 'la-codepen', 'la-coffee', 'la-cog', 'la-cogs', 'la-columns', 'la-comment', 'la-comment-o', 'la-commenting', 'la-commenting-o', 'la-comments', 'la-comments-o', 'la-compass', 'la-compress', 'la-connectdevelop', 'la-contao', 'la-copy', 'la-copyright', 'la-creative-commons', 'la-credit-card', 'la-crop', 'la-crosshairs', 'la-css3', 'la-cube', 'la-cubes', 'la-cut', 'la-cutlery', 'la-dashboard', 'la-dashcube', 'la-database', 'la-dedent', 'la-delicious', 'la-desktop', 'la-deviantart', 'la-diamond', 'la-digg', 'la-dollar', 'la-dot-circle-o', 'la-download', 'la-dribbble', 'la-dropbox', 'la-drupal', 'la-edit', 'la-eject', 'la-ellipsis-h', 'la-ellipsis-v', 'la-empire', 'la-ge', 'la-envelope', 'la-envelope-o', 'la-envelope-square', 'la-eraser', 'la-eur', 'la-euro', 'la-exchange', 'la-exclamation', 'la-exclamation-circle', 'la-exclamation-triangle', 'la-expand', 'la-expeditedssl', 'la-external-link', 'la-external-link-square', 'la-eye', 'la-eye-slash', 'la-eyedropper', 'la-facebook', 'la-facebook-f', 'la-facebook-official', 'la-facebook-square', 'la-fast-backward', 'la-fast-forward', 'la-fax', 'la-female', 'la-fighter-jet', 'la-file', 'la-file-archive-o', 'la-file-audio-o', 'la-file-code-o', 'la-file-excel-o', 'la-file-image-o', 'la-file-movie-o', 'la-file-o', 'la-file-pdf-o', 'la-file-photo-o', 'la-file-picture-o', 'la-file-powerpoint-o', 'la-file-sound-o', 'la-file-text', 'la-file-text-o', 'la-file-video-o', 'la-file-word-o', 'la-file-zip-o', 'la-files-o', 'la-film', 'la-filter', 'la-fire', 'la-fire-extinguisher', 'la-firefox', 'la-flag', 'la-flag-checkered', 'la-flag-o', 'la-flash', 'la-flask', 'la-flickr', 'la-floppy-o', 'la-folder', 'la-folder-o', 'la-folder-open', 'la-folder-open-o', 'la-font', 'la-fonticons', 'la-forumbee', 'la-forward', 'la-foursquare', 'la-frown-o', 'la-futbol-o', 'la-soccer-ball-o', 'la-gamepad', 'la-gavel', 'la-gbp', 'la-gear', 'la-gears', 'la-genderless', 'la-get-pocket', 'la-gg', 'la-gg-circle', 'la-gift', 'la-git', 'la-git-square', 'la-github', 'la-github-alt', 'la-github-square', 'la-glass', 'la-globe', 'la-google', 'la-google-plus', 'la-google-plus-square', 'la-google-wallet', 'la-graduation-cap', 'la-gratipay', 'la-gittip', 'la-group', 'la-h-square', 'la-hacker-news', 'la-hand-grab-o', 'la-hand-lizard-o', 'la-hand-o-down', 'la-hand-o-left', 'la-hand-o-right', 'la-hand-o-up', 'la-hand-paper-o', 'la-hand-peace-o', 'la-hand-pointer-o', 'la-hand-rock-o', 'la-hand-scissors-o', 'la-hand-spock-o', 'la-hand-stop-o', 'la-hdd-o', 'la-header', 'la-headphones', 'la-heart', 'la-heart-o', 'la-heartbeat', 'la-history', 'la-home', 'la-hospital-o', 'la-hotel', 'la-hourglass', 'la-hourglass-1', 'la-hourglass-2', 'la-hourglass-3', 'la-hourglass-end', 'la-hourglass-half', 'la-hourglass-o', 'la-hourglass-start', 'la-houzz', 'la-html5', 'la-i-cursor', 'la-ils', 'la-image', 'la-inbox', 'la-indent', 'la-industry', 'la-info', 'la-info-circle', 'la-inr', 'la-instagram', 'la-institution', 'la-internet-explorer', 'la-ioxhost', 'la-italic', 'la-joomla', 'la-jpy', 'la-jsfiddle', 'la-key', 'la-keyboard-o', 'la-krw', 'la-language', 'la-laptop', 'la-lastfm', 'la-lastfm-square', 'la-leaf', 'la-leanpub', 'la-legal', 'la-lemon-o', 'la-level-down', 'la-level-up', 'la-life-bouy', 'la-life-buoy', 'la-life-ring', 'la-support', 'la-life-saver', 'la-lightbulb-o', 'la-line-chart', 'la-link', 'la-linkedin', 'la-linkedin-square', 'la-linux', 'la-list', 'la-list-alt', 'la-list-ol', 'la-list-ul', 'la-location-arrow', 'la-lock', 'la-long-arrow-down', 'la-long-arrow-left', 'la-long-arrow-right', 'la-long-arrow-up', 'la-magic', 'la-magnet', 'la-mail-forward', 'la-mail-reply', 'la-mail-reply-all', 'la-male', 'la-map', 'la-map-marker', 'la-map-o', 'la-map-pin', 'la-map-signs', 'la-mars', 'la-mars-stroke-v', 'la-maxcdn', 'la-meanpath', 'la-medium', 'la-medkit', 'la-meh-o', 'la-mercury', 'la-microphone', 'la-microphone-slash', 'la-minus', 'la-minus-circle', 'la-minus-square', 'la-minus-square-o', 'la-mobile', 'la-mobile-phone', 'la-money', 'la-moon-o', 'la-mortar-board', 'la-motorcycle', 'la-mouse-pointer', 'la-music', 'la-navicon', 'la-neuter', 'la-newspaper-o', 'la-object-group', 'la-object-ungroup', 'la-odnoklassniki', 'la-odnoklassniki-square', 'la-opencart', 'la-openid', 'la-opera', 'la-optin-monster', 'la-outdent', 'la-pagelines', 'la-paint-brush', 'la-paper-plane', 'la-send', 'la-paper-plane-o', 'la-send-o', 'la-paperclip', 'la-paragraph', 'la-paste', 'la-pause', 'la-paw', 'la-paypal', 'la-pencil', 'la-pencil-square', 'la-pencil-square-o', 'la-phone', 'la-phone-square', 'la-photo', 'la-picture-o', 'la-pie-chart', 'la-pied-piper', 'la-pied-piper-alt', 'la-pinterest', 'la-pinterest-p', 'la-pinterest-square', 'la-plane', 'la-play', 'la-play-circle', 'la-play-circle-o', 'la-plug', 'la-plus', 'la-plus-circle', 'la-plus-square', 'la-plus-square-o', 'la-power-off', 'la-print', 'la-puzzle-piece', 'la-qq', 'la-qrcode', 'la-question', 'la-question-circle', 'la-quote-left', 'la-quote-right', 'la-ra', 'la-random', 'la-rebel', 'la-recycle', 'la-reddit', 'la-reddit-square', 'la-refresh', 'la-registered', 'la-renren', 'la-reorder', 'la-repeat', 'la-reply', 'la-reply-all', 'la-retweet', 'la-rmb', 'la-road', 'la-rocket', 'la-rotate-left', 'la-rotate-right', 'la-rouble', 'la-rss', 'la-feed', 'la-rss-square', 'la-rub', 'la-ruble', 'la-rupee', 'la-safari', 'la-save', 'la-scissors', 'la-search', 'la-search-minus', 'la-search-plus', 'la-sellsy', 'la-server', 'la-share', 'la-share-alt', 'la-share-alt-square', 'la-share-square', 'la-share-square-o', 'la-shekel', 'la-sheqel', 'la-shield', 'la-ship', 'la-shirtsinbulk', 'la-shopping-cart', 'la-sign-in', 'la-sign-out', 'la-signal', 'la-simplybuilt', 'la-sitemap', 'la-skyatlas', 'la-skype', 'la-slack', 'la-sliders', 'la-slideshare', 'la-smile-o', 'la-sort', 'la-unsorted', 'la-sort-alpha-asc', 'la-sort-alpha-desc', 'la-sort-amount-asc', 'la-sort-amount-desc', 'la-sort-asc', 'la-sort-up', 'la-sort-desc', 'la-sort-down', 'la-sort-numeric-asc', 'la-sort-numeric-desc', 'la-soundcloud', 'la-space-shuttle', 'la-spinner', 'la-spoon', 'la-spotify', 'la-square', 'la-square-o', 'la-stack-exchange', 'la-stack-overflow', 'la-star', 'la-star-half', 'la-star-half-o', 'la-star-half-full', 'la-star-half-empty', 'la-star-o', 'la-steam', 'la-steam-square', 'la-step-backward', 'la-step-forward', 'la-stethoscope', 'la-sticky-note', 'la-sticky-note-o', 'la-stop', 'la-street-view', 'la-strikethrough', 'la-stumbleupon', 'la-stumbleupon-circle', 'la-subscript', 'la-subway', 'la-suitcase', 'la-sun-o', 'la-superscript', 'la-table', 'la-tablet', 'la-tachometer', 'la-tag', 'la-tags', 'la-tasks', 'la-taxi', 'la-television', 'la-tv', 'la-tencent-weibo', 'la-terminal', 'la-text-height', 'la-text-width', 'la-th', 'la-th-large', 'la-th-list', 'la-thumb-tack', 'la-thumbs-down', 'la-thumbs-o-down', 'la-thumbs-o-up', 'la-thumbs-up', 'la-ticket', 'la-times', 'la-remove', 'la-times-circle', 'la-times-circle-o', 'la-tint', 'la-toggle-off', 'la-toggle-on', 'la-trademark', 'la-train', 'la-trash', 'la-trash-o', 'la-tree', 'la-trello', 'la-tripadvisor', 'la-trophy', 'la-truck', 'la-try', 'la-tty', 'la-tumblr', 'la-tumblr-square', 'la-turkish-lira', 'la-twitch', 'la-twitter', 'la-twitter-square', 'la-umbrella', 'la-underline', 'la-undo', 'la-university', 'la-unlink', 'la-unlock', 'la-unlock-alt', 'la-upload', 'la-usd', 'la-user', 'la-user-md', 'la-user-plus', 'la-user-secret', 'la-user-times', 'la-users', 'la-venus', 'la-venus-double', 'la-venus-mars', 'la-viacoin', 'la-video-camera', 'la-vimeo', 'la-vimeo-square la-vine la-vk la-volume-down la-volume-off la-volume-up la-warning la-wechat', 'la-weibo', 'la-weixin', 'la-whatsapp', 'la-wheelchair', 'la-wifi', 'la-wikipedia-w', 'la-windows', 'la-won', 'la-wordpress', 'la-wrench', 'la-xing', 'la-xing-square', 'la-y-combinator', 'la-y-combinator-square', 'la-yahoo', 'la-yc', 'la-yc-square', 'la-yelp', 'la-yen', 'la-youtube', 'la-youtube-play', 'la-youtube-square'
        ]; var rowDemoIcon = "#row-demo-icon";
        for (i = 0; i < iconClass.length; i++) {
            $(rowDemoIcon).append('<div class="col-md-3"> <div class="demo-icon"> <div class="icon-preview"><i class="la ' + iconClass[i] + '"></i></div> <div class="icon-class">la ' + iconClass[i] + '</div> </div> </div>');
        }
    </script>
</body>

</html>
