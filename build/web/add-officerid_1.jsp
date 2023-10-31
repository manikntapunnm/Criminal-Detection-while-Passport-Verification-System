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
    String criminalStr = request.getParameter("criminalid");
    out.println(officer);
    out.println(email);
    
    
    
    
    
    
    int criminalid = Integer.parseInt(criminalStr);
out.println(criminalid);
    try (Connection conn = new Dbconn.dbconn().getConnection()) {
        String updateSql = "UPDATE criminals SET officer = ? WHERE criminal_id = ?";
        try (PreparedStatement updateStatement = conn.prepareStatement(updateSql)) {
            updateStatement.setString(1, officer);
            updateStatement.setInt(2,criminalid);

            int rowsUpdated = updateStatement.executeUpdate();

            if (rowsUpdated > 0) {
                // Only redirect if the row is updated successfully
                response.sendRedirect("criminal_details.jsp?email="+email+"");
            } else {
                out.println("Failed to update the row.");
            }
        } catch (SQLException e) {
           
            // Log or handle the exception appropriately
            out.println("Failed to execute update: " + e);
        }
    } catch (SQLException e) {
       
        // Log or handle the exception appropriately
        out.println("Failed to establish database connection: " + e);
    }
%>
</body>
</html>
