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
</head>

<body>
    <!-- Spinner Start -->
    <div id="spinner"
        class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-grow text-primary" role="status"></div>
    </div>
    <!-- Spinner End -->





    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top p-0">
        <a href="/user/my_profile.jsp" class="navbar-brand d-flex align-items-center border-end px-4 px-lg-5">
            <h2 class="m-0"><i class="fa fa-book text-primary me-2"></i>Passport</h2>
        </a>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <a href="dashboard.jsp" class="nav-item nav-link ">Dashboard</a>
                <a href="Search_criminal.jsp" class="nav-item nav-link">Search Criminal</a>
                <a href="my_profile.jsp" class="nav-item nav-link active">My Profile</a>

            </div>
            <a href="user_login.jsp" class="btn btn-primary py-4 px-lg-5 d-none d-lg-block">Logout&nbsp;&nbsp;<i
                    class="bi bi-box-arrow-right"></i></a>
        </div>
    </nav>
    <!-- Navbar End -->


    <!-- Carousel Start -->

    <!-- Carousel End -->


    <!-- Facts Start -->

    <!-- Facts End -->


    <!-- About Start -->
    <div class="container-fluid page-header py-6 my-0 mt-0 wow fadeIn" data-wow-delay="0.1s">
        <div class="container text-center">
            <h1 class="display-4 text-white animated slideInDown mb-4">Search Criminals</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb justify-content-center mb-0">
                    <li class="breadcrumb-item"><a class="text-white" href="#">User</a></li>

                    <li class="breadcrumb-item text-primary active" aria-current="page">Search</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- About End -->

          <%
        String email = (String) session.getAttribute("email");
        out.println(email);
        %>
    <!-- Courses Start -->
    <div class="container-xxl courses  py-3 pb-0">
        <div class="container" style="background-color: rgb(236, 233, 241);">
            <div class="text-center mx-auto mb-2 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 500px;">
                <h2 class="text-primary text-uppercase mb-5 "><br>Your Profile</h2>



            </div>
                    <%@ page import="java.sql.*" %>
        <%@ page import="Dbconn.dbconn" %>
         <%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.codec.binary.Base64" %>
             <%@ page import="org.apache.commons.codec.binary.Base64" %>
<%
       
        
        
    try {
      Connection connection = Dbconn.dbconn.getConnection();
//        String sql = "SELECT * FROM police_officers WHERE email=?";
String sql = "SELECT * FROM police_officers po " +
             "JOIN police_station ps ON po.station_id = ps.ps_id " +
             "WHERE po.email=?";
       
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, email);
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                      byte[] ImageBytes = resultSet.getBytes("image");
           String ImageBase64 = Base64.encodeBase64String(ImageBytes);
%>
      
            <div class="row justify-content-center pb-5">
                <div class="col-10">
                    <!-- Basic Form Inputs card start -->
                    <div class="card">
                        <div class="row justify-content-center mt-2 ">
                            <img src="data:image/jpeg;base64,<%= ImageBase64%>" alt="User-Profile-Image"
                                style="width: 100px;height: 80px;" class="rounded-pill">


                        </div>

                        <br>
                        <h6 class="row justify-content-center"><%= resultSet.getString("officer_name") %></h6><br>
                        <div class=" card-block ">
                            <h4 class="sub-title justify" style="margin-left: 40px;">Officer Details:</h4><br>
                            <form>
                                <div class="form-group row">

                                    <div class="col-5" style="margin-left: 40px;">
                                        <label>Branch Name:</label>
                                        <input type="text" class="form-control" value="<%= resultSet.getString("branch_name") %>">
                                    </div>
                                    <div class="col-5" style="margin-left: 69px;">
                                        <label>Badge Number:</label>
                                        <input type="text" class="form-control" value="<%= resultSet.getString("badge") %>">
                                    </div>
                                </div>

                                <div class="form-group row">

                                    <div class="col-5" style="margin-left: 40px;">
                                        <label>Full Name:</label>
                                        <input type="text" class="form-control" value="<%= resultSet.getString("officer_name") %>">
                                    </div>
                                    <div class="col-5" style="margin-left: 69px;">
                                        <label>Email:</label>
                                        <input type="text" class="form-control" value="<%= resultSet.getString("email") %>">

                                    </div>
                                </div>
                                <div class="form-group row">

                                    <div class="col-5" style="margin-left: 40px;">
                                        <label>Contact Number:</label>
                                        <input type="text" class="form-control" value="<%= resultSet.getString("contact") %>">
                                    </div>
                                    <div class="col-5" style="margin-left: 69px;">
                                        <label>Password:</label>
                                        <input type="text" class="form-control" value="<%= resultSet.getString("password") %>">

                                    </div>
                                </div>
                                                                       <div class="form-group row">

                                    <div class="col-5" style="margin-left: 40px;">
                                        <label>Locality:</label>
                                        <input type="text" class="form-control" value="<%= resultSet.getString("locality") %>">
                                    </div>
                                    <div class="col-5" style="margin-left: 69px;">
                                        <label>PinCode</label>
                                        <input type="text" class="form-control" value="<%= resultSet.getString("area_code") %>">

                                    </div>
                                </div>
                                <br><br>

                            </form>
                            
                            <%
                }
            }
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.println(e);
    }
%>
                            <div class="row">


                            </div>

                        </div>
                    </div>
                    <!-- Basic Form Inputs card end -->
                </div>
            </div>
        </div>
    </div>
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
