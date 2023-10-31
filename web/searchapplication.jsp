<%--
    Document   : searchapplication
    Created on : 09-Oct-2023, 3:58:33 pm
    Author     : manikanta
--%>

<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
</head>
<body>
<%
    String aadharNumber = request.getParameter("aadhar");
    String currentURL = request.getParameter("currentURL");
    out.println(currentURL);
    out.println(aadharNumber);

    int criminalId = -1; // Initialize with a default value
    String criminalEmail = ""; // Initialize with an empty string

    try {
        Connection connection = Dbconn.dbconn.getConnection();
        String sql = "SELECT * FROM criminals WHERE aadhar = ?";

        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, aadharNumber);

            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    // Get the criminal ID and email
                    criminalId = resultSet.getInt("criminal_id");
                    criminalEmail = resultSet.getString("email");
                    
                    String updateSql = "UPDATE applicants SET passportstatus = 'active crime', criminal_email=? WHERE aadhar = ?";
                    try (PreparedStatement updateStatement = connection.prepareStatement(updateSql)) {
                        updateStatement.setString(1, criminalEmail);
                        updateStatement.setString(2, aadharNumber);
                        updateStatement.executeUpdate();
                    }

                    // Display SweetAlert when a criminal record is found
                    String successMessage = "Criminal Record Found!";
                    out.println("<script>");
                    out.println("Swal.fire({");
                    out.println("  icon: 'success',");
                    out.println("  title: 'Success',");
                    out.println("  text: '" + successMessage + "',");
                    out.println("}).then(function() { window.location.href = '" + currentURL + "?criminalId=" + criminalId + "&email=" + criminalEmail + "'; });");
                    out.println("</script>");
                } else {
                    String updateSql = "UPDATE applicants SET passportstatus = 'no crime' WHERE aadhar = ?";
                    try (PreparedStatement updateStatement = connection.prepareStatement(updateSql)) {
                        updateStatement.setString(1, aadharNumber);
                        updateStatement.executeUpdate();
                    }

                    String errorMessage = "No Criminal Record Found!";
                    out.println("<script>");
                    out.println("Swal.fire({");
                    out.println("  icon: 'error',");
                    out.println("  title: 'Error',");
                    out.println("  text: '" + errorMessage + "',");
                    out.println("}).then(function() { window.location.href = '" + currentURL + "'; });");
                    out.println("</script>");
                }
            }
        }
    } catch (SQLException e) {
        e.printStackTrace(); // Handle the exception appropriately
    }
%>
</body>
</html>
