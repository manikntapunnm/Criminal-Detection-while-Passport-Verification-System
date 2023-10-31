<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.IOException"%>
<%@page import="javax.servlet.ServletException"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
<% 
    String officer = request.getParameter("officer");
    String email = request.getParameter("email");
    String applicantidStr = request.getParameter("applicantid");
    
    out.println(applicantidStr);
    
    int applicantid = Integer.parseInt(applicantidStr);

    try (Connection conn = new Dbconn.dbconn().getConnection()) {
        String updateSql = "UPDATE applicants SET officer = ? WHERE applicants_id = ?";
        try (PreparedStatement updateStatement = conn.prepareStatement(updateSql)) {
            updateStatement.setString(1, officer);
            updateStatement.setInt(2, applicantid);

            int rowsUpdated = updateStatement.executeUpdate();

            if (rowsUpdated > 0) {
                // Only redirect if the row is updated successfully
                response.sendRedirect("applicants_details.jsp?email="+email+"");
            } else {
                out.println("Failed to update the row.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Log or handle the exception appropriately
            out.println("Failed to execute update: " + e.getMessage());
        }
    } catch (SQLException e) {
        e.printStackTrace();
        // Log or handle the exception appropriately
        out.println("Failed to establish database connection: " + e.getMessage());
    }
%>
</body>
</html>
