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
    <link href="img/passport.png" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Work+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.19/dist/sweetalert2.min.css">
</head>

<body>
    <%
String adminusernotfound = (String) session.getAttribute("adminusernotfound");
if (adminusernotfound != null) {
    // Clear the message attribute to prevent repeated display
    session.removeAttribute("adminusernotfound");
%>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.19/dist/sweetalert2.min.js"></script>
    <script>
        Swal.fire({
            icon: '<%= "Success".equals(adminusernotfound) ? "success" : "error" %>',
            title: 'Login',
            text: '<%= adminusernotfound %>',
            timer: 1000, // Auto-close the dialog after 3 seconds
            //timerProgressBar: true,
            showConfirmButton: false
            showConfirmButton: true, // Display the "OK" button
            confirmButtonText: 'OK',
        })
    </script>
<%
}
%>
          <%
String adminloginfailed = (String) session.getAttribute("adminloginfailed");
if (adminloginfailed != null) {
    // Clear the message attribute to prevent repeated display
    session.removeAttribute("adminloginfailed");
%>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.19/dist/sweetalert2.min.js"></script>
    <script>
        Swal.fire({
            icon: '<%= "Success".equals(adminloginfailed) ? "success" : "error" %>',
            title: 'Login',
            text: '<%= adminloginfailed %>',
            timer: 4000, // Auto-close the dialog after 3 seconds
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


    <!-- Topbar Start -->

    <!-- Topbar End -->


    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top p-0">
        <a href="/home/index.jsp" class="navbar-brand d-flex align-items-center border-end px-4 px-lg-5">
            <h2 class="m-0"><i class="fa fa-book text-primary me-2"></i>PASSPORT</h2>

        </a>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <a href="index.jsp" class="nav-item nav-link ">Home</a>
                <a href="admin-login.jsp" class="nav-item nav-link active">Admin</a>
                <a href="user_login.jsp" class="nav-item nav-link">User</a>
                <a href="about.jsp" class="nav-item nav-link">About</a>


                <a href="contact.jsp" class="nav-item nav-link">Contact</a>
            </div>

        </div>
    </nav>
    <!-- Navbar End -->


    <!-- Carousel Start -->

    <!-- Carousel End -->


    <!-- Facts Start -->

    <!-- Facts End -->


    <!-- About Start -->
    <div class="container-fluid page-header py-6  mt-0 wow fadeIn" data-wow-delay="0.1s">
        <div class="container text-center">
            <h1 class="display-4 text-white animated slideInDown mb-4">Administration Login</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb justify-content-center mb-0">
                    <li class="breadcrumb-item"><a class="text-white" href="#">Home</a></li>

                    <li class="breadcrumb-item text-primary active" aria-current="page">Admin</li>
                </ol>
            </nav>
        </div>
    </div>

    <!-- About End -->


    <!-- Courses Start -->
    <div class="container-xxl courses ">
        <div class="container">
            <div class="text-center mx-auto mb-5 my-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 500px;">

                <h6 class="display-6 mb-4">Login Here!</h6>
            </div>
            <div class="row g-4 justify-content-center">

                <div class="col-lg-7 my-4 mb-0 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="bg-primary text-center p-5">

                        <form action="admin-login-action.jsp?role=admin" method="post">
                            <div class="row">

                                <div class="form-floating" >
                                    <input  type="text" class="form-control border-0" id="gname"
                                        placeholder="Gurdian Name" name="user" >
                                    <label for="username_admin">UserName</label>
                                </div>
                            </div><br>
                            <div class="row">
                                <div class="form-floating">
                                    <input type="Password" class="form-control border-0" id="gmail"
                                        placeholder="Gurdian Email" name="pass">
                                    <label for="password_admin">Password</label>
                                </div>
                            </div><br>


                            <div class="col-12">


                                 <input type="submit" name="submitAdmin" class="btn btn-dark w-100 py-3" value="Login as Admin">
                            </div>

                        </form>
                        
                        
                        
                        
                        
                    </div>
                </div><br><br><br><br><br>
            </div>
        </div>
    </div><br><br><br>
    <!-- Courses End -->


    <!-- Features Start -->



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
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>
