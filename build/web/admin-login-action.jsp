<%-- 
    Document   : admin-login-action
    Created on : 06-Oct-2023, 1:16:20 pm
    Author     : manikanta
--%>


<%@page import="java.io.IOException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
     <%@ page import="java.sql.*"%>
<%@ page import="Dbconn.dbconn"%>

<%@ page import="java.io.IOException" %>
<%@ page import="javax.servlet.ServletException" %>
<%@ page import="javax.servlet.annotation.WebServlet" %>
<%@ page import="javax.servlet.http.HttpServlet" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
    </head>
    <body>

<%
try {
    String username = request.getParameter("user");
    String password = request.getParameter("pass");

    Connection connection = dbconn.getConnection();
    PreparedStatement statement = connection.prepareStatement("SELECT * FROM admin WHERE BINARY username = ? AND password = ?");
    statement.setString(1, username);
    statement.setString(2, password);

    ResultSet resultSet = statement.executeQuery();

    if (resultSet.next()) {
        String storedUsername = resultSet.getString("username");
        String storedPassword = resultSet.getString("password");

        if (username.equals(storedUsername) && password.equals(storedPassword)) {
            // Login successful
            
            session.setAttribute("adminloginsuccess", "Success");
            response.sendRedirect("admin-index.jsp");
        } else {
            // Login failed
            
            session.setAttribute("adminloginfailed", "Failed");
            response.sendRedirect("admin-login.jsp");
        }
    } else {
        // User not found
     
        session.setAttribute("adminusernotfound", "Your Username or Password is Incorrect please Try Again.");
        response.sendRedirect("admin-login.jsp");
    }
    
    connection.close();
} catch (SQLException e) {
    // Handle database errors here
    e.printStackTrace();
    out.println(e); // Redirect to an error page
} catch (IOException e) {
    // Handle other exceptions here
    e.printStackTrace();
    out.println(e); // Redirect to an error page
}
%>


  

    </body>
</html>

