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
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
    <!-- waves.css -->
    <link rel="stylesheet" href="assets/pages/waves/css/waves.min.css" type="text/css" media="all">
    <!-- Required Fremwork -->
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap/css/bootstrap.min.css">
    <!-- waves.css -->
    <link rel="stylesheet" href="assets/pages/waves/css/waves.min.css" type="text/css" media="all">
    <!-- themify-icons line icon -->
    <link rel="stylesheet" type="text/css" href="assets/icon/themify-icons/themify-icons.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" type="text/css" href="assets/icon/font-awesome/css/font-awesome.min.css">
    <!-- ico font -->
    <link rel="stylesheet" type="text/css" href="assets/icon/icofont/css/icofont.css">
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
                        <a href="admin_index.jsp">
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
                                    <img class=" img-80 img-radius" src="assets/images/admin.png"
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
                                        <span class="pcoded-micon"><i class="fa fa-gavel"
                                                aria-hidden="true"></i><b>BC</b></span>
                                        <span class="pcoded-mtext">Passport Management</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class=" ">
                                            <a href="add_criminal.jsp" class="waves-effect waves-dark">
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
                        <div class="page-header" style="padding-left:20px ; padding-top:20px ;">
                            <div class="page-block">
                                <div class="row align-items-center">
                                    <div class="col-md-6">
                                        <div class="page-header-title">
                                            <h5 class="m-b-10">Police Officer management</h5>

                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <ul class="breadcrumb">
                                            <li class="breadcrumb-item">
                                                <a href="manage_po.jsp"> <i class="fa fa-home"></i> </a>
                                            </li>
                                            <li class="breadcrumb-item"><a href="#!">Police Officer management</a>
                                            </li>
                                            <li class="breadcrumb-item"><a href="#!">Police Officer List</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Page-header end -->
                        <div class="pcoded-inner-content" style="padding-left: 40px; ">
                            <!-- Main-body start -->
                            <div class="main-body">
                                <div class="page-wrapper">
                                    <!-- Page-body start -->
                                    <div class="page-body">
                                        <!-- Basic table card start -->
                                        <div class="card">


                                            <!-- Basic table card end -->
                                            <!-- Inverse table card start -->
                                            <div class="card">

                                                <!-- Inverse table card end -->
                                                <!-- Hover table card start -->
                                                <div class="card">
                                                    <div class="card-header">
                                                        <img class="mr-4" src="assets/images/po.png" alt="">
                                                        <h5>PS Abdis</h5>

                                                        <div class="card-header-right">
                                                            <ul class="list-unstyled card-option">
                                                                <li><i class="fa fa fa-wrench open-card-option"></i>
                                                                </li>
                                                                <li><i class="fa fa-window-maximize full-card"></i></li>
                                                                <li><i class="fa fa-minus minimize-card"></i></li>
                                                                <li><i class="fa fa-refresh reload-card"></i></li>
                                                                <li><i class="fa fa-trash close-card"></i></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="card-block table-border-style">
                                                        <h4 class="sub-title">List Of Officers</h4>
                                                        <div class="table-responsive">
                                                            
                            <%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.codec.binary.Base64" %>
                                                                                                                   
    
<%

try {
 Connection connection = new Dbconn.dbconn().getConnection();

    // Get the branch parameter from the request
    String branch = request.getParameter("branch");

    // Check if the branch parameter is not empty
    if (branch != null && !branch.isEmpty()) {
        // Query to select station_id based on branch
        String psIdQuery = "SELECT ps_id FROM police_station WHERE branch_name = ?";
        PreparedStatement psIdStatement = connection.prepareStatement(psIdQuery);
        psIdStatement.setString(1, branch);
        ResultSet psIdResultSet = psIdStatement.executeQuery();

        // Check if a matching record is found
        if (psIdResultSet.next()) {
            int stationId = psIdResultSet.getInt("ps_id");

            // Now you can use the stationId in your main query
            int itemsPerPage = 3;
            int currentPage = request.getParameter("page") != null ? Integer.parseInt(request.getParameter("page")) : 1;

            String countSql = "SELECT COUNT(*) AS total FROM police_officers WHERE station_id = ?";
            PreparedStatement countStatement = connection.prepareStatement(countSql);
            countStatement.setInt(1, stationId);
            ResultSet countResult = countStatement.executeQuery();
            countResult.next();
            int totalItems = countResult.getInt("total");

            int totalPages = (int) Math.ceil((double) totalItems / itemsPerPage);
            int startIndex = (currentPage - 1) * itemsPerPage;

            String sql = "SELECT * FROM police_officers WHERE station_id = ? LIMIT ?, ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, stationId);
            statement.setInt(2, startIndex);
            statement.setInt(3, itemsPerPage);
            ResultSet resultSet = statement.executeQuery();

%>
                                                            
                                                            <table class="table table-hover">
                                                                <thead>
                                                                    <tr>
                                                                        <th> S.no </th>
                                                                        <th>Profile</th>
                                                                        <th>Badge No</th>
                                                                        <th>Officer Name</th>
                                                                        <th>Email</th>
                                                                        <th>Contact</th>
                                                                        <th>View</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                                                 <% 
                                                                    int Sno = 1;
                                                                    while (resultSet.next()) { 
       
                                                                    byte[] ImageBytes = resultSet.getBytes("image");
                                                                    String ImageBase64 = Base64.encodeBase64String(ImageBytes);
                   %>
                                                                    <tr>
                                                                         <th scope="row"><%=Sno++%></th>
                                                                        <td>
                                                                            <img class="img-50 img-radius"
                                                                                src="data:image/jpeg;base64,<%= ImageBase64 %>" alt="hello.jpg"
                                                                                height=50 width=50>
                                                                            
                                                                            
                                                                        </td>

                                                                       <td><%= resultSet.getString("badge")%></td>
                                                                        <td><%= resultSet.getString("officer_name")%></td>
                                                                        <td><%= resultSet.getString("email")%></td>
                                                                        <td><%= resultSet.getString("contact")%></td>
                                                                        <td>
                                                                            <a href="officer_details.jsp?officerid=<%= resultSet.getInt("officer_id")%>&stationid=<%=stationId%>">
                                                                                <button
                                                                                    class="btn waves-effect waves-light btn-info btn-outline-info "><i
                                                                                        class="bi bi-pencil-square"></i>Edit</button>
                                                                            </a>
                                                                          <a href="#" onclick="confirmDelete(<%= resultSet.getInt("officer_id") %>, '<%= branch %>')">
    <button class="btn waves-effect waves-light btn-danger btn-outline-danger px-2">
        <i class="bi bi-trash-fill"></i>Delete
    </button>
</a>

<script>
    function confirmDelete(officerId, branch) {
        var confirmed = confirm("Are you sure you want to delete this officer?");
        if (confirmed) {
            window.location.href = 'delete-officer_details.jsp?officerid=' + officerId + '&branch=' + branch;
        } else {
             window.location.href = 'officers_list.jsp?officerid=' + officerId + '&branch=' + branch;
        }
    }
</script>
                                                                        </td>
                                                                    </tr>
                                                                        <% } %>
                                                                </tbody>
                                                            </table>
                                                                                                                            <nav aria-label="Page navigation example">
    <ul class="pagination">
        <li class="page-item">
            <a class="page-link" href="?page=<%= Math.max(currentPage - 1, 1) %>" aria-label="Previous">
                <span aria-hidden="true">&laquo;</span>
               
            </a>
        </li>
        <% for (int i = 1; i <= totalPages; i++) { %>
            <li class="page-item <%= (i == currentPage) ? "active" : "" %>">
                <a class="page-link" href="?page=<%= i %>"><%= i %></a>
            </li>
        <% } %>
        <li class="page-item">
            <a class="page-link" href="?page=<%= Math.min(currentPage + 1, totalPages) %>" aria-label="Next">
                <span aria-hidden="true">&raquo;</span>
                
            </a>
        </li>
    </ul>
</nav>                                                                                                                                                         <%
    
    } else {
            // Handle the case where no matching record is found for the branch
            out.println("Invalid branch.");
        }

        // Close resources
        psIdResultSet.close();
        psIdStatement.close();
    } else {
        // Handle the case where the branch parameter is empty
        out.println("Branch parameter is missing.");
    }
    // Close resources
    //resultSet.close();
   // statement.close();
    connection.close();
} catch (SQLException e) {
    e.printStackTrace();
}
%>     
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- Hover table card end -->
                                                <!-- Contextual classes table starts -->

                                                <!-- Page-body end -->
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
                <!-- Custom js -->
                <script src="assets/js/pcoded.min.js"></script>
                <script src="assets/js/vertical/vertical-layout.min.js"></script>
                <script src="assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
                <script type="text/javascript" src="assets/js/script.js"></script>
</body>

</html>
