<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Passport-Background Verification</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="userassets/img/passport.png" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Work+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="userassets/lib/animate/animate.min.css" rel="stylesheet">
    <link href="userassets/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="userassets/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="userassets/css/style.css" rel="stylesheet">
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
    <!-- Spinner Start -->
    <div id="spinner"
        class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-grow text-primary" role="status"></div>
    </div>
    <!-- Spinner End -->





    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top p-0">
        <a href="/user/dashboard.jsp" class="navbar-brand d-flex align-items-center border-end px-4 px-lg-5">
            <h2 class="m-0"><i class="fa fa-book text-primary me-2"></i>Passport</h2>
        </a>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <a href="dashboard.jsp" class="nav-item nav-link active">Dashboard</a>
                         <a href="applicants.jsp" class="nav-item nav-link">Applicants</a>
                <a href="Search_criminal.jsp" class="nav-item nav-link ">Search Criminal</a>
                <a href="my_profile.jsp" class="nav-item nav-link">My Profile</a>

            </div>
            <a href="user_login.jsp" class="btn btn-primary py-4 px-lg-5 d-none d-lg-block">Logout&nbsp;&nbsp;<i
                    class="bi bi-box-arrow-right"></i></a>
        </div>
    </nav>
    <!-- Navbar End -->


    <!-- head breadcrums-->
    <div class="container-fluid page-header py-6 my-0 mt-0 wow fadeIn" data-wow-delay="0.1s">
        <div class="container text-center">
            <h1 class="display-4 text-white animated slideInDown mb-4">DashBoard</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb justify-content-center mb-0">
                    <li class="breadcrumb-item"><a class="text-white" href="#">User</a></li>

                    <li class="breadcrumb-item text-primary active" aria-current="page">Dashboard</li>
                </ol>
            </nav>
        </div>
    </div>
    <!--end of head breadcrums-->
    <%
        String email = (String) session.getAttribute("email");
        out.println(email);
        %>
    <!-- Courses Start -->
    <div class="container-xxl courses  py-0 pb-0"><br>
        <div class="container ">
            <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 500px;">
                <h6 class="text-primary text-uppercase mb-2">Passports Processed</h6>
                <h1 class="display-6 mb-4">Total Passports Processed</h1>
            </div>
            <div class="row g-4 justify-content-center">
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                   
                <%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.codec.binary.Base64" %>
<%@ page import="org.apache.commons.codec.binary.Base64" %>
<%@ page import="Dbconn.dbconn"%> 
    <%
        
Connection connection = null;

try {
    // Get a database connection
    connection = new Dbconn.dbconn().getConnection();
    String partnersCountQuery = "SELECT COUNT(*) AS verified_count FROM applicants where passportstatus='no crime'";
    PreparedStatement partnersCountStatement = connection.prepareStatement(partnersCountQuery);
    ResultSet partnersCountResult = partnersCountStatement.executeQuery();

    int partnerCount = 0;
    if (partnersCountResult.next()) {
        partnerCount = partnersCountResult.getInt("verified_count");
    }
        String itemsCountQuery = "SELECT COUNT(*) AS rejected_count FROM applicants where passportstatus='Pending'";
    PreparedStatement itemsCountStatement = connection.prepareStatement(itemsCountQuery);
    ResultSet itemsCountResult = itemsCountStatement.executeQuery();

    int itemCount = 0;
    if (itemsCountResult.next()) {
        itemCount = itemsCountResult.getInt("rejected_count");
    }
    

String mergeCountQuery = "SELECT COUNT(*) AS total_count FROM applicants " +
                         "WHERE passportstatus IN ('no crime', 'active crime')";

PreparedStatement mergeCountStatement = connection.prepareStatement(mergeCountQuery);
ResultSet mergeCountResult = mergeCountStatement.executeQuery();

int totalCount = 0;

if (mergeCountResult.next()) {
    totalCount = mergeCountResult.getInt("total_count");
}
    
      %>  
                    
                    
                    
                    <div class="courses-item d-flex flex-column bg-white overflow-hidden h-100">
                        <div class="text-center p-4 pt-0">

                            <h5 class="mb-3">Police Officer Count</h5>
                            <p>Total passports <strong>Verified</strong> by police officers.</p>
                            <ol class="breadcrumb justify-content-center mb-0">

                                <li class="breadcrumb-item small"><h5><i class="fa fa-user" aria-hidden="true"></i> <%=partnerCount%>
                                    passports </h5></li>
                            </ol>
                        </div>
                        <div class="position-relative mt-auto">
                            <img class="img-fluid" src="userassets/img/po-2.jpg" style="height: 300px;" alt="">
                            <div class="courses-overlay">
                                <a class="btn btn-outline-primary border-2" href="">Read More</a>
                            </div>
                        </div>
                    </div>
                    
                    
                    
         
                    
                    
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                   
                    
                    
                    
                    <div class="courses-item d-flex flex-column bg-white overflow-hidden h-100">
                        <div class="text-center p-4 pt-0">

                            <h5 class="mb-3">Police Station <strong>Processed</strong></h5>
                            <p>Total passports  <strong>Processed </strong> by the police station.</p>
                            <ol class="breadcrumb justify-content-center mb-0">

                                <li class="breadcrumb-item small"><h5><i class="fa fa-user" aria-hidden="true"></i> <%=totalCount%>
                                        passports</h5></li>
                            </ol>
                        </div>
                        <div class="position-relative mt-auto">
                            <img class="img-fluid" src="userassets/img/ps-1.jpg" style="height: 300px;" alt="">
                            <div class="courses-overlay">
                                <a class="btn btn-outline-primary border-2" href="">Read More</a>
                            </div>
                        </div>
                    </div>
               
                
                
     
                
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                   
                    
                    
                    
                    <div class="courses-item d-flex flex-column bg-white overflow-hidden h-100">
                        <div class="text-center p-4 pt-0">

                            <h5 class="mb-3">Pending Passports</h5>
                            <p>Total passports that are <strong>Pending </strong> for verification.</p>
                            <ol class="breadcrumb justify-content-center mb-0">

                                <li class="breadcrumb-item small"><h5><i class="fa fa-user" aria-hidden="true"></i> <%=itemCount%>
                                        passports</h5></li>
                            </ol>
                        </div>
                        <div class="position-relative mt-auto">
                            <img class="img-fluid" src="userassets/img/pending.jpg" style="height: 300px;" alt="">
                            <div class="courses-overlay">
                                <a class="btn btn-outline-primary border-2" href="">Read More</a>
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
        </div>
    </div><br><br>
    <!-- Courses End -->


    <!-- Features Start -->

    <!-- Features End -->


    <!-- Team Start -->

    <!-- Team End -->


    <!-- Testimonial Start -->

    <!-- Testimonial End -->


    <!-- Footer Start -->

    <!-- Footer End -->


    <!-- Copyright Start -->
    <div class="container-fluid copyright text-light py-4 wow fadeIn" data-wow-delay="0.1s">
        <div class="container">
            <footer class="row justify-content-center " style="padding-left: 50px;">
                <div class="col-4 justify-content-center">
                    <p>Copyright © 2022. All rights reserved.<br><br>
                        Designed and Developed By: <a href="https://www.codebook.in" target="_blank">Codebook</a>
                    </p>

                </div>
            </footer>
        </div>
    </div>
    <!-- Copyright End -->


    <!-- Back to Top -->



    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="userassets/lib/wow/wow.min.js"></script>
    <script src="userassets/lib/easing/easing.min.js"></script>
    <script src="userassets/lib/waypoints/waypoints.min.js"></script>
    <script src="userassets/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="userassets/js/main.js"></script>
</body>

</html>
