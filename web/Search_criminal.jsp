<%@page import="java.net.URLEncoder"%>
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

  <link rel="stylesheet" href="userassets/css/search-criminals.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.19/dist/sweetalert2.min.css">
    <style>

    .float-button {
      position: absolute;
      top: 68%;
      right: 10%;
      transform: translateY(-50%);
    }
      .float-button2 {
      position: absolute;
      top: 90%;
      right: 35%;
      transform: translateY(-50%);
    }
  </style>

</head>

<body>
              <%
String criminalmessage = (String) session.getAttribute("criminalmessage");
if (criminalmessage != null) {
    // Clear the message attribute to prevent repeated display
    session.removeAttribute("criminalmessage");
%>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.19/dist/sweetalert2.min.js"></script>
    <script>
        Swal.fire({
            icon: '<%= "Success".equals(criminalmessage) ? "success" : "error" %>',
           // title: '',
            text: '<%= criminalmessage %>',
            timer: 1000, // Auto-close the dialog after 3 seconds
            //timerProgressBar: true,
            showConfirmButton: false
        })
    </script>
<%
}
%>

  <!-- Spinner Start -->
<!--  <div id="spinner"
    class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
    <div class="spinner-grow text-primary" role="status"></div>
  </div>-->
  <!-- Spinner End -->





  <!-- Navbar Start -->
  <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top p-0">
    <a href="/user/Search_criminal.jsp" class="navbar-brand d-flex align-items-center border-end px-4 px-lg-5">
      <h2 class="m-0"><i class="fa fa-book text-primary me-2"></i>Passport</h2>
    </a>
    <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
      <div class="navbar-nav ms-auto p-4 p-lg-0">
        <a href="dashboard.jsp" class="nav-item nav-link ">Dashboard</a>
        <a href="Search_criminal.jsp" class="nav-item nav-link active">Search Criminal</a>
        <a href="my_profile.jsp" class="nav-item nav-link">My Profile</a>

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

  <!-- About Start -->

  <!-- About End -->

<%@ page import="java.sql.*" %>
        <%@ page import="Dbconn.dbconn" %>
         <%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.codec.binary.Base64" %>
             <%@ page import="org.apache.commons.codec.binary.Base64" %>


  <!-- Courses Start -->
  <div class="container-xxl courses  py-3 pb-0"><br>
      
      
      
          
    <%
       
     String aadhar = request.getParameter("aadhar"); 
        
    try {
      Connection connection = Dbconn.dbconn.getConnection();
        String sql = "SELECT * FROM applicants where aadhar=?  ";
       
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, aadhar);
            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                      byte[] ImageBytes = resultSet.getBytes("image1");
           String ImageBase64 = Base64.encodeBase64String(ImageBytes);
           
%>






  <p>Aadhar: <%= resultSet.getString("aadhar") %></p>


 
    
     <div class="card float-right mb-3" style="width: 210px;" id="card">
  <div class="text-center">
    <div class="d-flex flex-column align-items-center">

  <input type="hidden"  name="aadhar" class="form-control"  value="<%=aadhar%>" />
   <a href="data:image/jpeg;base64,<%= ImageBase64%>" download="<%= resultSet.getString("imagename1") %>" title="Download pic">
        <img class="rounded-pill w-120 my-2" src="data:image/jpeg;base64,<%= ImageBase64%>" style="max-height: 160px;" alt="">
      </a>
  

      
    </div>
  </div>
</div>
  
            
            
            <%
                }
            }
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.println(e);
    }
%>







  
<!--  <button class="btn btn-secondary float-button" onclick="toggleCards()">Manual Input</button>-->

    <div class="container" style="background-color: rgb(255, 255, 255);">
        
  
        
    <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s"    style=" max-width: 500px;">
    <h2 class="text-primary text-uppercase mb-5">Search For Criminals</h2>


    <div class="justify-content-center">
        <form action="searchapplication.jsp" method="post" class="mx-auto">
            <input type="hidden" name="currentURL" value="<%= request.getRequestURL().toString() %>">
            <div class="input-group" style="width: 500px;">
                <input type="search" id="form1" name="aadhar" class="form-control" placeholder="Search..." style="margin-left: 10px;" />
                <button type="submit" class="btn btn-primary" style="height: 41px;">
                    <i class="fas fa-search"></i>
                </button>
            </div>
        </form>
    </div>
    <br>

    <hr>

    <br>
            

   <div class="justify-content-center">
        <form action="searchapplication_1.jsp?aadhar=<%=aadhar%>" method="post" enctype="multipart/form-data" class="mx-auto">
            <input type="hidden" name="currentURL" value="<%= request.getRequestURL().toString() %>">
             <input type="hidden"  name="aadhar" class="form-control"  value="<%=aadhar%>" />
            <div class="input-group" style="width: 500px;">
                <input type="file" id="form1" name="image" class="form-control" />
                <button type="submit" class="btn btn-primary" style="height: 41px;">
                    <i class="fas fa-search"></i> Search
                </button>
            </div>
        </form>
    </div>
    <br><br>

</div>
        
<!--      
  


<script>
  function toggleCards() {
    var card = document.getElementById('card');
    var form = document.getElementById('myForm');  // Assuming you have a form with the ID 'myForm'

    if (card.style.display !== 'none' && form.style.display !== '') {
      card.style.display = 'none';
      form.style.display = 'block';
    } else {
      card.style.display = 'block';
      form.style.display = 'none';
    }
  }
</script>-->
        
        
      <div class="container justify-content-center" style="width:800px;">
        <h2 class="text-center mt-2">Search Result</h2>
        <!-- Card Start -->

        <!-- End of card -->
        
<%
       
        String criminalId = request.getParameter("criminalId"); 
         String email = request.getParameter("email"); 
        
    try {
      Connection connection = Dbconn.dbconn.getConnection();
        String sql = "SELECT * FROM criminals WHERE email=?";
       
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, email);
            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                      byte[] ImageBytes = resultSet.getBytes("image");
           String ImageBase64 = Base64.encodeBase64String(ImageBytes);
%>


        <div class="card float-right" >
          <div class="row">
            <div class="col-1">
              <img class="rounded-pill w-10 my-3 mx-2" src="data:image/jpeg;base64,<%= ImageBase64%>" style="height:80px;" alt="">
            </div>
            <div class="col-1">
              <img class="rounded-pill  my-3 mx-4" src="userassets/img/vertical-line.png"
                style="height:80px;width: 40px;" alt="">
            </div>
            <div class="col-8">
              <div class="card-block">
               

                <h6  style="padding-left: 10px;">Name: <%= resultSet.getString("name") %></h6>
                <div>
                  <h6 style="padding-left: 10px;">Aadhar No: <%= resultSet.getString("phone") %></h6>
                </div>
                <div>
                  <h6 style="padding-left: 10px;">Crime: <%= resultSet.getString("crime_type") %></h6>
                </div>
                <div>
                  <h6 style="padding-left: 10px;">Date: <%= resultSet.getString("date") %></h6>
                </div>
                <div>
                  <h6 style="padding-left: 10px;">Time: <%= resultSet.getString("time") %></h6>
                </div>
                 <div>
                  <h6 style="padding-left: 10px;">Officer: <%= resultSet.getString("officer") %></h6>
                </div>
                
                <br>
              </div>
            </div>
            <div class="col-12">
              <h4 class="mx-2">Crime Details:</h4>
              <label  class="mx-2"><%= resultSet.getString("message") %>.</label>
            </div>
          </div>

        </div>





<%
                }
            }
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.println(e);
    }
%>
      </div>
    </div>

    <br>
    <br>


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
