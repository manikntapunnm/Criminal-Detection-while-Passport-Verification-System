<%-- 
    Document   : newjsp1
    Created on : 18-Oct-2023, 3:13:28 pm
    Author     : manikanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <title>Centered Form Card</title>
  <style>
/*    body {
      display: flex;
      align-items: center;
      justify-content: center;
      height: 100vh;
      margin: 0;
      
    }*/
    
/*    .card-container {
      width: 18rem;
    } */
    .float-button {
      position: fixed;
      top: 85%;
      right: 50%;
      transform: translateY(-50%);
    }
  </style>
</head>
<body>
<div class="card-container" id="myForm" style="display:none;">
  <div class="card" id="myCard" style="width: 18rem;">
    <div class="card-body">
      <h5 class="card-title">Form</h5>
      <form action="action.jsp"  method="post">
        <div class="form-group">
          <label for="name">Name</label>
          <input type="text" class="form-control" name="name" placeholder="Enter your name">
        </div>
        <div class="form-group">
          <label for="email">Email</label>
          <input type="email" class="form-control" name="email" placeholder="Enter your email">
        </div>
        <div class="form-group">
          <label for="phone">Phone</label>
          <input type="tel" class="form-control" name="phone" placeholder="Enter your phone number">
        </div>
        <button type="submit" class="btn btn-primary" >Submit</button>

      </form>
    </div>
  </div>
    
</div>
    
     <button class="btn btn-secondary float-button" onclick="toggleForm()">Add New</button>
<script>
    function toggleForm() {
      var form = document.getElementById('myForm');
      form.style.display = (form.style.display === 'none' || form.style.display === '') ? 'block' : 'none';
    }
    

  </script>
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
