<%-- 
    Document   : station-management-action
    Created on : 06-Oct-2023, 3:06:37 pm
    Author     : manikanta
--%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="java.sql.*" %>
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
            String selectedState = request.getParameter("state");
            String city = request.getParameter("city");
            String branchName = request.getParameter("branch");
            String locality = request.getParameter("locality");
            String areaCode = request.getParameter("areacode");
            String contact = request.getParameter("contact");
           String stationIdString = request.getParameter("stationid");
            int stationId = Integer.parseInt(stationIdString);

            Connection connection = null;
            PreparedStatement preparedStatementInsert = null;

            try {
                connection = dbconn.getConnection();

                // Assuming your unique identifier is station_id
                String updateQuery = "UPDATE police_station SET city=?, branch_name=?, locality=?, area_code=?, contact=? WHERE state=? AND ps_id=?";

                preparedStatementInsert = connection.prepareStatement(updateQuery);

                preparedStatementInsert.setString(1, city);
                preparedStatementInsert.setString(2, branchName);
                preparedStatementInsert.setString(3, locality);
                preparedStatementInsert.setString(4, areaCode);
                preparedStatementInsert.setString(5, contact);
                preparedStatementInsert.setString(6, selectedState);
                preparedStatementInsert.setInt(7, stationId);  // Assuming stationId is the unique identifier

                int rowsAffected = preparedStatementInsert.executeUpdate();

                if (rowsAffected > 0) {
                    // Item updated successfully
                    String successMessage = "Updated successfully.";
                    out.println("<script>");
                    out.println("Swal.fire({");
                    out.println("  icon: 'success',");
                    out.println("  title: 'Success',");
                    out.println("  text: '" + successMessage + "',");
                    out.println("}).then(function() { window.location.href = 'station_management.jsp?stationid=" + stationId + "'; });");
                    out.println("</script>");
                } else {
                    // Failed to update the item
                    String errorMessage = "No Item Updated.";
                    out.println("<script>");
                    out.println("Swal.fire({");
                    out.println("  icon: 'error',");
                    out.println("  title: 'Error',");
                    out.println("  text: '" + errorMessage + "',");
out.println("}).then(function() { window.location.href = 'station_management.jsp?stationid=" + stationId + "'; });");
                    out.println("</script>");
                }

            } catch (Exception e) {
                // Log the error for debugging purposes
                e.printStackTrace();
                out.println(e);
            } finally {
                // Close the resources in the finally block to ensure they are closed even if an exception occurs
                try {
                    if (preparedStatementInsert != null) preparedStatementInsert.close();
                    if (connection != null) connection.close();
                } catch (SQLException e) {
                    out.println(e);
                }
            }
        %>
    </body>
</html>
