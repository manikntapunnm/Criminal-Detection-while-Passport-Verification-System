<%-- 
    Document   : add-police-station-action
    Created on : 06-Oct-2023, 2:10:50 pm
    Author     : manikanta
--%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="Dbconn.dbconn"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
    </head>
    <body>
        
<%
    // Retrieve values from the request
    String selectedState = request.getParameter("state");
    String city = request.getParameter("city");
    String branchName = request.getParameter("branchName");
    String locality = request.getParameter("locality");
    String areaCode = request.getParameter("areacode");
    out.println(areaCode);
    String contact = request.getParameter("contact");

    Connection connection = null;
    PreparedStatement preparedStatementCheck = null;
    PreparedStatement preparedStatementInsert = null;

    try {
        connection = dbconn.getConnection();

        // Check if the police station already exists
        String checkQuery = "SELECT COUNT(*) FROM police_station WHERE state = ? AND city = ? AND branch_name = ? AND locality = ? AND area_code = ? AND contact = ?";
        preparedStatementCheck = connection.prepareStatement(checkQuery);
        preparedStatementCheck.setString(1, selectedState);
        preparedStatementCheck.setString(2, city);
        preparedStatementCheck.setString(3, branchName);
        preparedStatementCheck.setString(4, locality);
        preparedStatementCheck.setString(5, areaCode);
        preparedStatementCheck.setString(6, contact);

        ResultSet resultSet = preparedStatementCheck.executeQuery();
        resultSet.next();
        int count = resultSet.getInt(1);

        if (count > 0) {
            // Police station already exists
            String errorMessage = "Police station already exists.";
            out.println("<script>");
            out.println("Swal.fire({");
            out.println("  icon: 'error',");
            out.println("  title: 'Error',");
            out.println("  text: '" + errorMessage + "',");
            out.println("}).then(function() { window.location.href = 'add_ps.jsp'; });");
            out.println("</script>");
        } else {
            // Police station does not exist, proceed with the insert
            String insertQuery = "INSERT INTO police_station (state, city, branch_name, locality, area_code, contact) VALUES (?, ?, ?, ?, ?, ?)";
            preparedStatementInsert = connection.prepareStatement(insertQuery);
            preparedStatementInsert.setString(1, selectedState);
            preparedStatementInsert.setString(2, city);
            preparedStatementInsert.setString(3, branchName);
            preparedStatementInsert.setString(4, locality);
            preparedStatementInsert.setString(5, areaCode);
            preparedStatementInsert.setString(6, contact);

            int rowsAffected = preparedStatementInsert.executeUpdate();

            if (rowsAffected > 0) {
                // Item added successfully
                String successMessage = "Added successfully.";
                out.println("<script>");
                out.println("Swal.fire({");
                out.println("  icon: 'success',");
                out.println("  title: 'Success',");
                out.println("  text: '" + successMessage + "',");
                out.println("}).then(function() { window.location.href = 'manage_ps.jsp'; });");
                out.println("</script>");
            } else {
                // Failed to add the item
                String errorMessage = "No Item Added.";
                out.println("<script>");
                out.println("Swal.fire({");
                out.println("  icon: 'error',");
                out.println("  title: 'Error',");
                out.println("  text: '" + errorMessage + "',");
                out.println("}).then(function() { window.location.href = 'add_ps.jsp'; });");
                out.println("</script>");
            }
        }

        // Close the resources
        resultSet.close();
        preparedStatementCheck.close();
        if (preparedStatementInsert != null) preparedStatementInsert.close();
        connection.close();
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    } finally {
        // Close the resources in the finally block to ensure they are closed even if an exception occurs
        try {
            if (preparedStatementCheck != null) preparedStatementCheck.close();
            if (preparedStatementInsert != null) preparedStatementInsert.close();
            if (connection != null) connection.close();
        } catch (SQLException e) {
            out.println("Error closing resources: " + e.getMessage());
        }
    }
%>

    </body>
</html>
