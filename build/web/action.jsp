<%-- 
    Document   : action
    Created on : 18-Oct-2023, 3:27:00 pm
    Author     : manikanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <%
             String name = request.getParameter("aadhar");
//        String email = request.getParameter("email");
//        String phone = request.getParameter("phone");
        
        
            %>
    </body>
     <p>Name: <%= name %></p>
 
</html>
