<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
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
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js">
    <link rel="stylesheet" href="https://cdn.tailwindcss.com/3.0.12">

    <script src="https://cdn.tailwindcss.com/3.0.12"></script>

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
                                    <img class="" style="left:100px ;" src="assets/images/admin.png"
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
                                            <a href="add_applicant.jsp" class="waves-effect waves-dark">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext">Add Passport</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="manage_applicant.jsp" class="waves-effect waves-dark">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext">Manage Passport</span>
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
                        <div class="page-header" style="padding-left: 20px;padding-top: 27px;">
                            <div class="page-block">
                                <div class="row align-items-center">
                                    <div class="col-6">
                                        <div class="page-header-title">
                                            <h5 class="m-b-10">Passport Management</h5>

                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <ul class="breadcrumb">
                                            <li class="breadcrumb-item">
                                                <a href="admin-index.jsp"> <i class="fa fa-home"></i> </a>
                                            </li>
                                            <li class="breadcrumb-item"><a href="#!">Manage Passport</a>
                                            </li>
                                            <li class="breadcrumb-item"><a href="#!">View Record</a>
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
             <%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.codec.binary.Base64, java.util.*" %>
             <%@ page import="org.apache.commons.codec.binary.Base64" %>
<%
String email = request.getParameter("email");
out.println(email);
 String currentEmail =null;
 
String ImageBase64=null;
String ImageBase642=null;
String passportstatus =null;
int applicantid=0;
String criminalemail=null;







try {
    Connection connection = new Dbconn.dbconn().getConnection(); // Remove "dbconn." before "getConnection()"

String sql = "SELECT * FROM applicants WHERE email = ? ORDER BY applicants_id ASC";
    PreparedStatement statement = connection.prepareStatement(sql);
    statement.setString(1, email);
    ResultSet resultSet = statement.executeQuery();
           

  Set<String> uniqueEmails = new HashSet<>();
int Sno=1;

    while (resultSet.next()) {
       currentEmail = resultSet.getString("email");
        criminalemail = resultSet.getString("criminal_email");
        //out.println(criminalemail);
        
       applicantid = resultSet.getInt("applicants_id");
       
   
       
       
       
       passportstatus = resultSet.getString("passportstatus");
       

        // Check if the email is unique
        if (!uniqueEmails.contains(currentEmail)) {
            uniqueEmails.add(currentEmail); // Add the email to the set to mark it as processed

            byte[] ImageBytes = resultSet.getBytes("image1");
            ImageBase64 = Base64.encodeBase64String(ImageBytes);
            byte[] ImageBytes2 = resultSet.getBytes("image2");
            ImageBase642 = Base64.encodeBase64String(ImageBytes2);

%>
             
                                            
  <%
// Check if it's the first iteration and execute the HTML code only once
if (ImageBase64 != null) {
%>

                                            <div class="row justify-content-center">
                                                
                                                <div class="col-12">
                                                    
                                                    <!-- Basic Form Inputs card start -->
                                                    <div class="card">
                                                        
                                                              <div class="card-header">
                                                       
                                                        <h5>Applicant Management</h5>
                                                        <span></span>
                                                        <div class="card-header-right">
                                                            <a href="manage_applicant.jsp"> <i class="fas fa-arrow-left"> Back </i></a>
                                                              
                                                           

                                                        </div>
                                                    </div>
                                                        <br>
                                                         <form action="update-details_1.jsp?applicantid=<%=applicantid%>&role=image" method="post" enctype="multipart/form-data">
                                                        <div class="row justify-content-center">
                                                           
                                                            <div class="card-header row">
                                                                <img class=" img-radius"
                                                                     src="data:image/jpeg;base64,<%= ImageBase64%>"
                                                                    alt="User-Profile-Image"
                                                                    style="width: 60px;height: 60px;"
                                                                    class="rounded-pill">

                                                                
                                                            </div>
                                                                    
                                                                    
                                                                    <input type="hidden" name="email" value="<%=currentEmail%>" > 
                                                                    
                                                           
                                                        </div>
                                                                    
                                                                   
                                                                    
                                                        <div class="row justify-content-center">
                                                            <h4><%= resultSet.getString("name")%></h4><br><br>
                                                                                                            </div>
                                                                                              <div class="container mt-3">
                                                        <div class="row justify-content-center">
                                                            <div class="col-md-4 d-flex align-items-center justify-content-center">
                                                                <div class="custom-file custom-file-small">
                                                                    <input name="image" type="file" class="custom-file-input" id="inputGroupFile01" required>
                                                                    <label class="custom-file-label">Choose file</label>
                                                                </div>
                                                            <button type="submit" class="btn btn-primary ml-2" style="background-color: #007bff; color: #ffffff;">
                                                        <i class="bi bi-pencil-square"></i>&nbsp;Update
                                                    </button>

                                                            </div>
                                                        </div>
                                                    </div>


                                                         </form>
                                                                                                            
                                                                                                            
                                                                                                            

<!--                                                                 <form action="update-details.jsp" method="post" enctype="multipart/form-data">-->
                               <%                                 
                                   if ("active crime".equals(passportstatus)) {
%>
      
        <img src="<%= request.getContextPath() %>/img/Rejected.jpg"
             alt="Verified Image"
             style="width: 60px; height: 60px;"
             class="rounded-pill">
<%
    }
%>
                                                        <div class="card-block table-border-style">
                                                            <div class="table-responsive">
                                                                <span>Passport Number: #  <%= resultSet.getString("passport")%></span>
                                                                
                                                                <table class="table table-hover">
                                                                    <thead>
                                                                        <tr>
                                                                            <th>S.No</th>
                                                                           <th>Proof</th>
                                                                            <th>Address</th>
                                                                            <th>Status</th>
                                                                            <th>officer</th>
                                                                            <th>Birthday</th>
                                                                            <th>Verified on</th>
                                                                             <th>Expiry</th>
                                                                         
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        <%
}}
%>

                                                                        <tr>
                                                                            <th scope="row"><%=Sno++%></th>
                                                                            <td>   <img class=" rounded-pill img-radius"
                                                                     src="data:image/jpeg;base64,<%= ImageBase642%>"
                                                                    alt="User-Profile-Image"
                                                                    style="width: 60px;height: 60px;"
                                                                    ></td>
                                                                            <td><textarea rows="2" cols="20"><%= resultSet.getString("address")%></textarea></td>
                                                                            
                                                                            
                                                                            
                                                                                <td style="color:
                                            <% 
                                                if (passportstatus.equalsIgnoreCase("Pending")) {
                                                    out.print("blue");
                                                } else if (passportstatus.equalsIgnoreCase("no crime")) {
                                                    out.print("green");
                                                } else if (passportstatus.equalsIgnoreCase("active crime")) {
                                                    out.print("red");
                                                } else {
                                                    out.print("black"); // Default color if status doesn't match any condition
                                                }
                                            %>
                                            ">
                                            <%= passportstatus%>
                                            
                                                </td>
                                                
                                                 <td>
                                                                                 
                                                                                
    
        
    <div class="col-sm-12">
    <form action="add-officerid.jsp?applicantid=<%=applicantid%>&email=<%=email%>" method="post">
        <div class="row">
            <div class="col-sm-7">
                <select class="form-control" name="officer" required>
                    <option value="" selected disabled><%= resultSet.getString("officer")%> Assigned</option>
                    <%
                        String officername = null;
                        try {
                            Connection conn = new Dbconn.dbconn().getConnection();
                            String sql2 = "SELECT DISTINCT officer_name FROM police_officers";
                            PreparedStatement statement2 = conn.prepareStatement(sql2);
                            ResultSet resultSet2 = statement2.executeQuery();
                            Set<String> uniqueOfficerIds = new HashSet<>();
                            while (resultSet2.next()) {
                                officername = resultSet2.getString("officer_name");
                                if (!uniqueOfficerIds.contains(officername)) {
                    %>
                                    <option name="officer" style="background-color: #098766; color: #ffffff;" value="<%= officername %>"><%= officername %></option>
                    <%
                                }
                            }
                            resultSet2.close();
                            statement2.close();
                            conn.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
                </select>
            </div>
            <div class="col-sm-5">
                <input type="submit" class="btn btn-primary" value="Go" style="background-color: #007bff; color: #ffffff;">
            </div>
        </div>
    </form>
</div>


       
   
</td>
                                                
                                                                           
                                                                            
                                                                            <td><%= resultSet.getString("dob")%></td>
                                                                            <td><%= resultSet.getString("doi")%></td>
                                                                            <td><%= resultSet.getString("doe")%></td>
                                                                            
                                                                           
                                                                          

                                                                        </tr>
                                                                        
                                                                        <%
                                                                            }
                                                                            %>

                                                                    </tbody>
                                                                </table>

                                                            </div>


                                                        </div>
            
<!--                                                                    </form>-->
         <%
    

    if ("no crime".equals(passportstatus)) {
%>
        
         <img src="<%= request.getContextPath() %>/img/Verified.jpg"
             alt="Verified Image"
             style="width: 60px; height: 60px;"
             class="rounded-pill">
<%
    } else if ("active crime".equals(passportstatus)) {
%>
       <button class="btn btn-secondary float-button" onclick="toggleForm()">Reason</button>
       
<%
    } else {
%>
        <img src="<%= request.getContextPath() %>/img/Pending.webp"
             alt="Verified Image"
             style="width: 80px; height: 60px;"
             class="rounded-pill">
        <br>
<%
    }
%>
  <script>
    function toggleForm() {
      var form = document.getElementById('myForm');
      form.style.display = (form.style.display === 'none' || form.style.display === '') ? 'block' : 'none';
    }
    

  </script>
  
  
            <div class="card-container" id="myForm" style="display:none;">
  <div class="card" id="myCard" style="width: 62rem;">
    <div class="card-body">
      <h5 class="card-title text-center "> Reason For Rejection</h5>
      <hr>
      <br>                                                                        <%
     String criminalaadhar =null;                                                                       
String crimetype = null;
String message = null;
String conviction = null;

String Issued = null;

String sql2 = "SELECT * FROM criminals Where email=?";
    PreparedStatement statement2 = connection.prepareStatement(sql2);
   statement2.setString(1, email);
    ResultSet resultSet2 = statement2.executeQuery();
    %>
      
                                            <div class="row justify-content-center">
                                                <div class="col-12">
                                                   
                                                    <div class="card">
                         
                                                        <div class="card-block table-border-style">
                                                            <div class="table-responsive">
                                                                  <table class="table table-hover">
                                                                    <thead>
                                                                        <tr>
                                                                            <th>S.No</th>
                                                                            <th>Aadhar</th>
                                                                            <th>Crime Type</th>
                                                                            <th>Crime Discription</th>
                                                                            <th>Conviction</th>
                                                                            <th>Date</th>
                                                                            

                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                
                                                    
                                   <%
                                       
                                       
int sno=1;
 java.util.HashMap<String, String> uniqueAadhars = new java.util.HashMap<String, String>();
    while (resultSet2.next()) {
      
       
       
       
       criminalaadhar = resultSet2.getString("aadhar");
       
       
       
       crimetype = resultSet2.getString("crime_type");
       message = resultSet2.getString("message");
       conviction = resultSet2.getString("conviction");
       Issued = resultSet2.getString("date");
       
       

                                                                        
                                                                            %>                             
                                                                
                                                                
                                                              

                                                                        
                                                                     
                                                                        
                                                                        <tr>
                                                                            <th scope="row"><%=sno++%></th>
                                                                            <td> <%=criminalaadhar%></td>
                                                                            <td><%= crimetype%></td>
                                                                            <td><textarea rows="2" cols="20"><%=message%></textarea></td>
                                                                            <td><%= conviction%></td>
                                                                            <td><%=Issued %></td>
                                                                            
                                                                        </tr>
      <%
                    
}
    resultSet2.close();
    statement2.close();

              
            %>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>
            
                                                    </div>
            
                                                </div>
                                            </div>
    </div>
  </div>
    
</div>
            
            
            

  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>                                    
                                                                            
                                                    </div>
                                                    <!-- Basic Form Inputs card end -->
                                                </div>
                                            </div>
                                            
                                                                               <%
    
                                                                                                                                               
    // Close resources
    resultSet.close();
    statement.close();
    connection.close();
} catch (SQLException e) {
    e.printStackTrace();
    out.println(e);
}

%>
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
