<%-- 
    Document   : officer_details-action2
    Created on : 07-Oct-2023, 12:04:50 pm
    Author     : manikanta
--%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
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
try {
  String criminalid = request.getParameter("criminalid");
    String role = request.getParameter("role");
    String email = "";
    String serverFilePath = "";
    String fileName = "";

    String updateFields = "";

    // Check if the request contains multipart data
    if (ServletFileUpload.isMultipartContent(request)) {
        // Create a factory for disk-based file items
        DiskFileItemFactory factory = new DiskFileItemFactory();

        // Create a new file upload handler
        ServletFileUpload upload = new ServletFileUpload(factory);

        // Set the maximum allowed file size (in bytes)
        upload.setSizeMax(5600456); // Adjust the size limit as needed

        List<FileItem> items = upload.parseRequest(request);

        for (FileItem item : items) {
            if (!item.isFormField()) {
                // Handle file upload
                String originalFileName = new File(item.getName()).getName();
                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmssSSS");
                String timeStamp = dateFormat.format(new Date());
                String truncatedTimeStamp = timeStamp.substring(8, 13); // Extract 5 digits from the timestamp
                String uniqueFileName = truncatedTimeStamp + "_" + originalFileName;
                serverFilePath = "C:\\Users\\manikanta\\OneDrive\\Documents\\NetBeansProjects\\D-LICIOUS\\build\\web\\img\\" + uniqueFileName;
                item.write(new File(serverFilePath));
                fileName = uniqueFileName;
            } else {
                // Handle form fields
                String fieldName = item.getFieldName();
                String fieldValue = item.getString();
                 if ("email".equals(fieldName)) {
                    email = fieldValue;
                }
             
            }
        }
out.println(email);


        
               try (   Connection connection = new Dbconn.dbconn().getConnection();) {
            
            List<Object> updateValues = new ArrayList<>(); 

     

            // Check if an image was uploaded
            if (!fileName.isEmpty()) {
                updateFields += "image=?, imagename=?, ";
                updateValues.add(new FileInputStream(serverFilePath));
                updateValues.add(fileName);
            }

            // Remove the trailing comma and space from the updateFields string
            if (!updateFields.isEmpty()) {
                updateFields = updateFields.substring(0, updateFields.length() - 2);
            }

          String sql = "UPDATE criminals SET " + updateFields + " WHERE criminal_id=?";
            updateValues.add(criminalid);

          try (PreparedStatement statement = connection.prepareStatement(sql)) {
                for (int i = 0; i < updateValues.size(); i++) {
                    statement.setObject(i + 1, updateValues.get(i));
                }

                // Execute the update statement
                int rowsAffected = statement.executeUpdate();

                if (rowsAffected > 0) {
                    // Update successful
                    
 
                    
                           String successMessage = "Updated successfully.";
                    out.println("<script>");
                    out.println("Swal.fire({");
                    out.println("  icon: 'success',");
                    out.println("  title: 'Success',");
                    out.println("  text: '" + successMessage + "',");
                    out.println("}).then(function() { window.location.href = 'criminal_details.jsp?email=" + email + "'; });");
                    out.println("</script>");
                    
                    
                    
                } else {
                   

         String ErrorMessage = "Updated Failed.";
                    out.println("<script>");
                    out.println("Swal.fire({");
                    out.println("  icon: 'Error',");
                    out.println("  title: 'Error',");
                    out.println("  text: '" + ErrorMessage + "',");
                    out.println("}).then(function() { window.location.href = 'criminal_details.jsp?email=" + email + "'; });");
                    out.println("</script>");

                    
 
                }
            } catch (SQLException e) {
                e.printStackTrace();
                out.println("<p>Error executing database update: " + e.getMessage() + "</p>");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            out.println("<p>Error connecting to database: " + e.getMessage() + "</p>");
        }
    }
} catch (FileUploadException e) {
    e.printStackTrace();
    out.println("<p>Error parsing file upload: " + e.getMessage() + "</p>");
} catch (Exception e) {
    e.printStackTrace();
    out.println("<p>Unexpected error: " + e.getMessage() + "</p>");
}
%>
</body>
</html>
