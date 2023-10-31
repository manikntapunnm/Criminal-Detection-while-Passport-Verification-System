<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Material Able bootstrap admin template by Codedthemes</title>
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
    <!-- themify-icons line icon -->
    <link rel="stylesheet" type="text/css" href="assets/icon/themify-icons/themify-icons.css">
    <!-- ico font -->
    <link rel="stylesheet" type="text/css" href="assets/icon/icofont/css/icofont.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" type="text/css" href="assets/icon/font-awesome/css/font-awesome.min.css">
    <!-- Style.css -->
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="assets/css/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">

</head>

<body>
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
                        <a href="admin-index.jsp">
                            PASSPORT VERIFICATION
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
                                        <span id="more-details">Admin</span>
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
                        <div class="page-header" style="padding-left: 20px; padding-top: 20px;">
                            <div class="page-block">
                                <div class="row align-items-center">
                                    <div class="col-6">
                                        <div class="page-header-title">
                                            <h5 class="m-b-10">Police Officer Managemet</h5>

                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <ul class="breadcrumb">
                                            <li class="breadcrumb-item">
                                                <a href="admin-index.jsp"> <i class="fa fa-home"></i> </a>
                                            </li>
                                            <li class="breadcrumb-item"><a href="#!">Police Officer Managemet</a>
                                            </li>
                                            <li class="breadcrumb-item"><a href="#!">Add Police Officer</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Page-header end -->
                        <div class="pcoded-inner-content" style="padding-left: 40px;">
                            <!-- Main-body start -->
                            <div class="main-body">
                                <div class="page-wrapper">

                                    <!-- Page body start -->
                                    <div class="page-body ">
                                        <div class="">

                                            <div class="row justify-content-center">
                                                <div class="col-8">
                                                    <!-- Basic Form Inputs card start -->
                                                    <div class="card ">
                                                        <div class="card-header">
                                                            <img class="mr-4" src="assets/images/po.png" alt="">
                                                            <h5>Add Police Officer</h5>
                                                       
                                                        </div>
                                                         
                                                        <%@page import="org.apache.commons.io.IOUtils"%>
<%@ page import="java.io.*,java.sql.*,java.util.*, org.apache.commons.fileupload.*, org.apache.commons.fileupload.disk.*, org.apache.commons.fileupload.servlet.*" %>
<%@ page import="java.util.Base64" %>

          <%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Random" %>
                                                           <%--!
            String generateUserID() {
            String prefix = "FTC";
            int currentYear = Calendar.getInstance().get(Calendar.YEAR) % 100;
            return prefix + String.format("%02d", currentYear) + new Random().nextInt(10000);
        }

        String generatePassword() {
            String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            int length = 8;
            StringBuilder passwordBuilder = new StringBuilder();

            Random random = new Random();
            for (int i = 0; i < length; i++) {
                int index = random.nextInt(characters.length());
                passwordBuilder.append(characters.charAt(index));
            }

            return passwordBuilder.toString();
        }
    --%>
    
       <script>
function previewImage(input) {
    const imagePreview = document.getElementById("imagePreview");
    imagePreview.innerHTML = ""; // Clear previous previews

    if (input.files && input.files[0]) {
        const reader = new FileReader();

        reader.onload = function (e) {
            const img = document.createElement("img");
            img.setAttribute("src", e.target.result);
            img.setAttribute("style", "max-width: 100%; max-height: 100%;");
            imagePreview.appendChild(img);
        };

        reader.readAsDataURL(input.files[0]);
    }
}
</script>





    
  <%!

%>  
    
    




                                                        <div class=" card-block">
                                                            <h4 class="sub-title justify">Fill the Required Details</h4>
                                                            <form action="add_po-action.jsp" method="post" enctype="multipart/form-data" >
                                                                <div class="form-group row">

                                                                    <div class="col-6">
<!--                                                           <input type="text" class="form-control"
                                                                            placeholder="Police Station Area" name="station" required>-->
                                                                            
                                                                         <select class="form-control" name="branch" required>
        <option value="" selected disabled>Police Station Area</option>
        <% 
            try {
                Connection conn = new Dbconn.dbconn().getConnection();
                String sql = "SELECT  DISTINCT  branch_name FROM police_station";
                PreparedStatement statement = conn.prepareStatement(sql);
                ResultSet resultSet = statement.executeQuery();
                Set<String> uniqueCategories = new HashSet<>();
                while (resultSet.next()) {
                    String branchName = resultSet.getString("branch_name");
                   
                    if (!uniqueCategories.contains(branchName)) {
                        uniqueCategories.add(branchName);
        %>
                        <option value="<%= branchName %>"><%= branchName %></option>
        <%
                    }



                }
                resultSet.close();
                statement.close();
                conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </select>    
    
    <%--!
    String generateUniqueBadge() {
        String prefix = "FTC";
        int currentYear = Calendar.getInstance().get(Calendar.YEAR) % 100;

        String generatedBadge = prefix + String.format("%02d", currentYear) + new Random().nextInt(10000);

        // Check if the generated badge already exists in the database
        try {
            Connection connection = new Dbconn.dbconn().getConnection();
            String checkBadgeQuery = "SELECT * FROM police_officers WHERE badge = ?";
            PreparedStatement checkBadgeStatement = connection.prepareStatement(checkBadgeQuery);
            checkBadgeStatement.setString(1, generatedBadge);
            ResultSet badgeResultSet = checkBadgeStatement.executeQuery();

            while (badgeResultSet.next()) {
                // Badge already exists, regenerate it
                generatedBadge = prefix + String.format("%02d", currentYear) + new Random().nextInt(10000);
                // Check again
                checkBadgeStatement.setString(1, generatedBadge);
                badgeResultSet = checkBadgeStatement.executeQuery();
            }

            badgeResultSet.close();
            checkBadgeStatement.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return generatedBadge;
    }
--%>
<%!
    String generateUniqueBadge() {
        String prefix = "FTC";
        int currentYear = Calendar.getInstance().get(Calendar.YEAR) % 100;

        // Initialize the generatedBadge variable
        String generatedBadge = null;

        // Check if the generated badge already exists in the database
        try {
            Connection connection = new Dbconn.dbconn().getConnection();

            do {
                generatedBadge = prefix + String.format("%02d", currentYear) + new Random().nextInt(10000);

                String checkBadgeQuery = "SELECT * FROM police_officers WHERE badge = ?";
                PreparedStatement checkBadgeStatement = connection.prepareStatement(checkBadgeQuery);
                checkBadgeStatement.setString(1, generatedBadge);
                ResultSet badgeResultSet = checkBadgeStatement.executeQuery();

                if (!badgeResultSet.next()) {
                    // If badge doesn't exist, exit the loop
                    break;
                }

                badgeResultSet.close();
                checkBadgeStatement.close();
            } while (true);

            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return generatedBadge;
    }
    
    String generatePassword() {
        // Generate a non-unique password (no need to check in the database)
        String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        int length = 8;
        StringBuilder passwordBuilder = new StringBuilder();

        Random random = new Random();
        for (int i = 0; i < length; i++) {
            int index = random.nextInt(characters.length());
            passwordBuilder.append(characters.charAt(index));
        }

        return passwordBuilder.toString();
    }
%>

                                                                    </div>
                                                                    
                                                                    
                                                                                           
                                                                    
                                                                    
<!--                                                                    <div class="col-6">
                                                                        <input type="text" class="form-control"
                                                                            placeholder="Enter the badge no" name="badge" value="<%--= generateUserID() --%>" required readonly>
                                                                    </div>-->
<div class="col-6">
    <input type="text" class="form-control"
           placeholder="Enter the badge no" name="badge" value="<%= generateUniqueBadge() %>" required readonly>
</div>
                                                                </div>

                                                                <div class="form-group row">

                                                                    <div class="col-6">
                                                                        <input type="text" class="form-control"
                                                                            placeholder="Enter the officer name" name="officer" required>
                                                                    </div>
                                                                    <div class="col-6">

                                                                        <input type="text" class="form-control"
                                                                            placeholder="Enter the Officer email" name="email" required>

                                                                    </div>
                                                                </div>
                                                                <div class="form-group row">

                                                                    <div class="col-6">
                                                                        <input type="number" class="form-control"
                                                                            placeholder="Enter the contact number" name="contact" required >
                                                                    </div>
                                                                    <div class="col-6">

                                                                   <input type="text" class="form-control" id="password" name="password" value="<%= generatePassword() %>" readonly>

                                                                    </div>
                                                                </div>
                                                                <div class=" form-group row">
                                                                    <div class="col-6">
                                                                        <input type="file" name="image" class="form-control" onchange="previewImage(this)" required>
                                                                    </div>
                                                                     <div class="col-6 d-flex justify-content-center align-items-center">
                                                                       <div id="imagePreview" style="max-height: 100px; max-width: 100px; border: 2px solid #ccc; padding: 10px; border-radius: 30px 30px 30px 30px; background-image: url('your-image-url.jpg'); background-size: contain; background-repeat: no-repeat; background-position: center;"></div>
                                                                      </div>

                                                                </div>
                                                                <br><br>                                                            
                                                     <div class="row " style="padding-right:58px ;">
                                                                    <div class="col-md-6"></div>
                                                                    <button type="submit"
                                                                        class="btn btn-primary waves-effect waves-light"><i
                                                                            class="bi bi-person-plus-fill"></i>&nbsp;Add</button>

                                                                </div>
                                                            </form>
                                                            <div class="row">


                                                            </div>

                                                        </div>
                                                    </div>
                                                    <!-- Basic Form Inputs card end -->
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Page body end -->
                                    </div>
                                </div>
                                <!-- Main-body end -->
                                <div id="styleSelector">

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
    <p>You are using an outdated version of Internet Explorer, please upgrade <br/>to any of the following web browsers
        to access this website.</p>
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

        <!-- Custom js -->
        <script src="assets/js/pcoded.min.js"></script>
        <script src="assets/js/vertical/vertical-layout.min.js"></script>
        <script src="assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
        <script type="text/javascript" src="assets/js/script.js"></script>
</body>

</html>
