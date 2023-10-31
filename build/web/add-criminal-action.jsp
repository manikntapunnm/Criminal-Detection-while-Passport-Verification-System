<%@page import="org.apache.commons.io.IOUtils"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory" %>
<%@ page import="org.apache.commons.fileupload.FileUploadException" %>
<%@ page import="org.apache.commons.fileupload.FileItem" %>
<%@page import="java.io.IOException" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
</head>
<body>
<%
    Connection connection = null;
    PreparedStatement preparedStatement = null;
    ResultSet generatedKeys = null;

    try {
        // Initialize the connection
        connection = Dbconn.dbconn.getConnection();

        // Check if the request is multipart/form-data
        boolean isMultipart = ServletFileUpload.isMultipartContent(request);

        if (isMultipart) {
            // Create a factory for disk-based file items
            DiskFileItemFactory factory = new DiskFileItemFactory();

            // Create a new file upload handler
            ServletFileUpload upload = new ServletFileUpload(factory);

            // Parse the multipart request
            List<FileItem> items = upload.parseRequest(request);
            
            List<String> fileNames = new ArrayList<>();
        
            
            List<String> base64Images = new ArrayList<>();
            String aadhar = null;
            String name = null;
            String email = null;
            String phone = null;
            String crimeType = null;
            String message = null;
            InputStream imageStream = null;
            String fileName = null;

            for (FileItem item : items) {
                if (item.isFormField()) {
                    // Process regular form field (input type="text")
                    String fieldName = item.getFieldName();
                    String fieldValue = item.getString();

                    if ("aadhar".equals(fieldName)) {
                        aadhar = fieldValue;
                    } else if ("name".equals(fieldName)) {
                        name = fieldValue;
                    } else if ("email".equals(fieldName)) {
                        email = fieldValue;
                    } else if ("phone".equals(fieldName)) {
                        phone = fieldValue;
                    } else if ("crimeType".equals(fieldName)) {
                        crimeType = fieldValue;
                    } else if ("message".equals(fieldName)) {
                        message = fieldValue;
                    }
                } else {
//                    itemImageStream = item.getInputStream();
//                    fileName = item.getName();

                 imageStream = item.getInputStream();
                    byte[] imageBytes = IOUtils.toByteArray(imageStream);
                    String base64Image = Base64.getEncoder().encodeToString(imageBytes);
                    base64Images.add(base64Image);
                    fileNames.add(item.getName());
                }
            }
            
            request.setAttribute("base64Images", base64Images);
            
            out.println(aadhar);
            out.println(name);
            out.println(email);
            out.println(phone);
            out.println(crimeType);
            out.println(message);

            
            
            
            
            
            
                     String checkExistingQuery = "SELECT * FROM criminals WHERE email = ? OR aadhar = ? OR crime_type = ?";
            PreparedStatement checkExistingStatement = connection.prepareStatement(checkExistingQuery);
            checkExistingStatement.setString(1, email);
            checkExistingStatement.setString(2, aadhar);
            checkExistingStatement.setString(3, crimeType);
            ResultSet existingResultSet = checkExistingStatement.executeQuery();

            if (existingResultSet.next()) {
                int existingCriminalId = existingResultSet.getInt("criminal_id");
                //int existingOfficerStationId = existingResultSet.getInt("station_id");
                
                
               
                    String errorMessage = "Criminal already exists with this Email and Aadhar.";
                    out.println("<script>");
                    out.println("Swal.fire({");
                    out.println("  icon: 'error',");
                    out.println("  title: 'Error',");
                    out.println("  text: '" + errorMessage + "',");
                    out.println("}).then(function() { window.location.href = 'criminal_details.jsp?officerid=" + existingCriminalId + "&email=" + email + "'; });");

                    out.println("</script>");
                    
            } else {
            
            
            
            
            
            
            // Perform database insertion
          String sql = "INSERT INTO criminals (aadhar, name, email, phone, crime_type, message, image, image2, image3, imagename, imagename2, imagename3) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
preparedStatement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

preparedStatement.setString(1, aadhar);
preparedStatement.setString(2, name);
preparedStatement.setString(3, email);
preparedStatement.setString(4, phone);
preparedStatement.setString(5, crimeType);
preparedStatement.setString(6, message);

for (int i = 0; i < base64Images.size(); i++) {
    byte[] imageBytes = Base64.getDecoder().decode(base64Images.get(i));
    preparedStatement.setBytes(7 + i, imageBytes);
    preparedStatement.setString(10 + i, fileNames.get(i));
}


            int rowsInserted = preparedStatement.executeUpdate();

            generatedKeys = preparedStatement.getGeneratedKeys();
            int criminalid = -1;
            if (generatedKeys.next()) {
                criminalid = generatedKeys.getInt(1);
            }

            if (criminalid != -1) {
                String crimesql = "INSERT INTO crimes (crime_type, description, criminal_id) VALUES (?, ?, ?)";
                preparedStatement = connection.prepareStatement(crimesql);

                preparedStatement.setString(1, crimeType);
                preparedStatement.setString(2, message);
                preparedStatement.setInt(3, criminalid);

                int rowsAffected = preparedStatement.executeUpdate();

                if (rowsInserted > 0 && rowsAffected > 0) {
                    String successMessage = "Added Successfully.";
                    out.println("<script>");
                    out.println("Swal.fire({");
                    out.println("  icon: 'success',");
                    out.println("  title: 'Success',");
                    out.println("  text: '" + successMessage + "',");
                    out.println("}).then(function() { window.location.href = 'manage_criminal.jsp'; });");
                    out.println("</script>");
                } else {
                    String errorMessage = "Update failed.";
                    out.println("<script>");
                    out.println("Swal.fire({");
                    out.println("  icon: 'error',");
                    out.println("  title: 'Error',");
                    out.println("  text: '" + errorMessage + "',");
                    out.println("}).then(function() { window.location.href = 'add_criminal.jsp'; });");
                    out.println("</script>");
                }
            } else {
                out.println("Error retrieving criminal id.");
            }
            
    }
        } else {
            // Handle the case where no matching record is found
            out.println("Invalid police station.");
            return; // Optionally, you may want to exit the request processing here
        }
    } catch (FileUploadException e) {
        e.printStackTrace();
        out.println(e);
    } catch (Exception e) {
        e.printStackTrace();
        out.println(e);
    } finally {
        try {
            if (generatedKeys != null) {
                generatedKeys.close();
            }
            if (preparedStatement != null) {
                preparedStatement.close();
            }
            if (connection != null) {
                connection.close();
            }
           
        } catch (SQLException e) {
            e.printStackTrace();
            out.println(e);
        }
    }
%>

</body>
</html>
