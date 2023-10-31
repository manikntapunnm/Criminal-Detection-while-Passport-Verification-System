<%-- 
    Document   : add_po-action
    Created on : 06-Oct-2023, 3:40:20 pm
    Author     : manikanta


<%@page import="org.apache.commons.io.IOUtils"%>
<%@ page import="java.io.*,java.sql.*,java.util.*, org.apache.commons.fileupload.*, org.apache.commons.fileupload.disk.*, org.apache.commons.fileupload.servlet.*" %>
<%@ page import="java.util.Base64" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Item</title>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
</head>
<body>
<%
    // Check if the request is multipart/form-data
    boolean isMultipart = ServletFileUpload.isMultipartContent(request);

    if (isMultipart) {
        // Create a factory for disk-based file items
        DiskFileItemFactory factory = new DiskFileItemFactory();

        // Create a new file upload handler
        ServletFileUpload upload = new ServletFileUpload(factory);

        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            // Parse the multipart request
            List<FileItem> items = upload.parseRequest(request);

            List<String> base64Images = new ArrayList<>();

            String station = null;
            String badge = null;
            String officer= null;
            String email = null;
            String contact = null;
            String password = null;

            InputStream imageStream = null;
            byte[] imageBytes = null;

            
              String psIdQuery = "SELECT ps_id FROM police_station WHERE station = ?";
    PreparedStatement psIdStatement = connection.prepareStatement(psIdQuery);
    psIdStatement.setString(1, station);
    ResultSet psIdResultSet = psIdStatement.executeQuery();

    // Check if a matching record is found
    if (psIdResultSet.next()) {
        int psId = psIdResultSet.getInt("ps_id");

        // Set the retrieved ps_id on the main prepared statement
        preparedStatement.setInt(8, psId);
    
            
            
            
            
            // Create a prepared statement
            connection = Dbconn.dbconn.getConnection(); // Obtain a database connection
            String sql = "INSERT INTO police_officers (station, badge, officer, email,contact,password, image) VALUES (?, ?, ?, ?, ?, ?, ?)";
            preparedStatement = connection.prepareStatement(sql);

            for (FileItem item : items) {
                if (item.isFormField()) {
                    // Process form fields
                    if ("station".equals(item.getFieldName())) {
                        station = item.getString();
                    } else if ("badge".equals(item.getFieldName())) {
                        badge = item.getString();
                    } else if ("officer".equals(item.getFieldName())) {
                        officer  = item.getString();
                    } else if ("email".equals(item.getFieldName())) {
                        email = item.getString();
                    } else if ("contact".equals(item.getFieldName())) {
                        contact = item.getString();
                    } else if ("password".equals(item.getFieldName())) {
                        password  = item.getString();
                    }
                } else {
                    // Process the file field (item image)
                    imageStream = item.getInputStream();
                    imageBytes = IOUtils.toByteArray(imageStream);
                    String base64Image = Base64.getEncoder().encodeToString(imageBytes);
                    base64Images.add(base64Image);
                }
                
                
                 out.println(station);
                  out.println(badge);
                   out.println(officer);
                    out.println(email);
                     out.println(contact);
                      out.println(password);
            }
            
             
                   

            // Set values on the prepared statement
            preparedStatement.setString(1, station);
            preparedStatement.setString(2, badge);
            preparedStatement.setString(3, officer);
            preparedStatement.setString(4, email);
            preparedStatement.setString(5, contact);
            preparedStatement.setString(6, password);
            preparedStatement.setString(7, base64Images.get(0)); // Assuming there is at least one image

            // Execute the SQL statement to insert data
            int rowsAffected = preparedStatement.executeUpdate();

            // Rest of your code for showing success/error message
            if (rowsAffected > 0) {
                // Item added successfully
                String successMessage = "Added successfully.";
                out.println("<script>");
                out.println("Swal.fire({");
                out.println("  icon: 'success',");
                out.println("  title: 'Success',");
                out.println("  text: '" + successMessage + "',");
                out.println("}).then(function() { window.location.href = 'manage_po.jsp'; });");
                out.println("</script>");
            } else {
                // Failed to add the item
                String errorMessage = "No Item Added.";
                out.println("<script>");
                out.println("Swal.fire({");
                out.println("  icon: 'error',");
                out.println("  title: 'Error',");
                out.println("  text: '" + errorMessage + "',");
                out.println("}).then(function() { window.location.href = 'add_po.jsp'; });");
                out.println("</script>");
            }
            
            
         } else {
        // Handle the case where no matching record is found
        out.println("Invalid police station.");
        return; // Optionally, you may want to exit the request processing here
    }   
        } catch (Exception e) {
            e.printStackTrace();
            out.println("Error: " + e.getMessage());
        } finally {
            // Close database resources
            if (preparedStatement != null) {
                preparedStatement.close();
            }
            if (connection != null) {
                connection.close();
            }
        }
    } else {
        out.println("Invalid request.");
    }
%>
</body>
</html>


--%>


<%--
    Document   : add_po-action
    Created on : 06-Oct-2023, 3:40:20 pm
    Author     : manikanta
--%>







<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Session"%>
<%@page import="org.apache.commons.io.IOUtils"%>
<%@ page import="java.io.*,java.sql.*,java.util.*, org.apache.commons.fileupload.*, org.apache.commons.fileupload.disk.*, org.apache.commons.fileupload.servlet.*" %>
<%@ page import="java.util.Base64" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Item</title>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
</head>
<body>
<%
    Connection connection = null;
    PreparedStatement preparedStatement = null;
    ResultSet psIdResultSet = null;

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

            List<String> base64Images = new ArrayList<>();

            String branch = null; // Corrected variable name from branch
            String badge = null;
            String officer = null;
            String email = null;
            String contact = null;
            String password = null;
            InputStream itemImageStream = null;
            byte[] imageBytes = null;

            for (FileItem item : items) {
                if (item.isFormField()) {
                    // Process form fields
                    if ("branch".equals(item.getFieldName())) { // Corrected field name from branch_name
                        branch = item.getString();
                    } else if ("badge".equals(item.getFieldName())) {
                        badge = item.getString();
                    } else if ("officer".equals(item.getFieldName())) {
                        officer = item.getString();
                    } else if ("email".equals(item.getFieldName())) {
                        email = item.getString();
                    } else if ("contact".equals(item.getFieldName())) {
                        contact = item.getString();
                    } else if ("password".equals(item.getFieldName())) {
                        password = item.getString();
                    }
                } else {
                    itemImageStream = item.getInputStream();
                    
                }
    }
//            
//                    String checkEQuery = "SELECT * FROM police_officers WHERE email = ?";
//            PreparedStatement checkEStatement = connection.prepareStatement(checkEQuery);
//            checkEStatement.setString(1, email);
//            ResultSet eResultSet = checkEStatement.executeQuery();
//
//            if (eResultSet.next()) {
//                // Officer already exists
//               
//                      String errorMessage = "Officer already exists.";
//                    out.println("<script>");
//                    out.println("Swal.fire({");
//                    out.println("  icon: 'error',");
//                    out.println("  title: 'Error',");
//                    out.println("  text: '" + errorMessage + "',");
//                    out.println("}).then(function() { window.location.href = 'add_po.jsp'; });");
//                    out.println("</script>");
//            } else {
//
//            
            
            String checkExistingQuery = "SELECT * FROM police_officers WHERE email = ? OR badge = ? OR contact = ?";
            PreparedStatement checkExistingStatement = connection.prepareStatement(checkExistingQuery);
            checkExistingStatement.setString(1, email);
            checkExistingStatement.setString(2, badge);
            checkExistingStatement.setString(3, contact);
            ResultSet existingResultSet = checkExistingStatement.executeQuery();

            if (existingResultSet.next()) {
                int existingOfficerId = existingResultSet.getInt("officer_id");
                int existingOfficerStationId = existingResultSet.getInt("station_id");
                
                
                //response.sendRedirect("update_po.jsp?error=uniqueViolation");
                    String errorMessage = "Officer already exists with this Email and Badge.";
                    out.println("<script>");
                    out.println("Swal.fire({");
                    out.println("  icon: 'error',");
                    out.println("  title: 'Error',");
                    out.println("  text: '" + errorMessage + "',");
                    out.println("}).then(function() { window.location.href = 'officer_details.jsp?officerid=" + existingOfficerId + "&stationid=" + existingOfficerStationId + "'; });");

                    out.println("</script>");
            } else {
            
            
            // Retrieve ps_id based on the police station
            String psIdQuery = "SELECT * FROM police_station WHERE branch_name = ?";
            PreparedStatement psIdStatement = connection.prepareStatement(psIdQuery);
            psIdStatement.setString(1, branch);
            psIdResultSet = psIdStatement.executeQuery();
            
            
            
            
            

            String sql = "INSERT INTO police_officers (station_id, badge, officer_name, email, contact, password, image) VALUES (?, ?, ?, ?, ?, ?, ?)";
            preparedStatement = connection.prepareStatement(sql);

            // Check if a matching record is found
            if (psIdResultSet.next()) {
                int psId = psIdResultSet.getInt("ps_id");

                preparedStatement.setInt(1, psId);
                preparedStatement.setString(2, badge);
                preparedStatement.setString(3, officer);
                preparedStatement.setString(4, email);
                preparedStatement.setString(5, contact);
                preparedStatement.setString(6, password);

                if (itemImageStream != null) {
                // Set the item_image column with the input stream
                preparedStatement.setBlob(7, itemImageStream);
            }

                // Execute the SQL statement to insert data
                int rowsAffected = preparedStatement.executeUpdate();

                // Show success/error message
                if (rowsAffected > 0) {
                
                
                                               final String senderEmail = "projects@codebook.in";
                                final String senderPassword = "frwqvhawrnsxetyk";

                                Properties props = new Properties();
                                props.put("mail.smtp.host", "smtp.gmail.com");
                                props.put("mail.smtp.port", "587");
                                props.put("mail.smtp.auth", "true");
                                props.put("mail.smtp.starttls.enable", "true");

                                Session esession = Session.getInstance(props, new javax.mail.Authenticator() {
                                    protected PasswordAuthentication getPasswordAuthentication() {
                                        return new PasswordAuthentication(senderEmail, senderPassword);
                                    }
                                });

                                MimeMessage message = new MimeMessage(esession);
                                message.setFrom(new InternetAddress(senderEmail));
                                message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
                                message.setSubject("Registration Successful");
                                message.setText("Dear " + officer + ",\n\nThank you for registering. Your account details are:\nUser ID: " + badge + "\nPassword: " + password);

                                Transport.send(message);
                
                
                
                    // Item added successfully
                    String successMessage = "Added successfully Details send to Email Address.";
                    out.println("<script>");
                    out.println("Swal.fire({");
                    out.println("  icon: 'success',");
                    out.println("  title: 'Success',");
                    out.println("  text: '" + successMessage + "',");
                    out.println("}).then(function() { window.location.href = 'manage_po.jsp'; });");
                    out.println("</script>");
                } else {
                    // Failed to add the item
                    String errorMessage = "No Item Added.";
                    out.println("<script>");
                    out.println("Swal.fire({");
                    out.println("  icon: 'error',");
                    out.println("  title: 'Error',");
                    out.println("  text: '" + errorMessage + "',");
                    out.println("}).then(function() { window.location.href = 'add_po.jsp'; });");
                    out.println("</script>");
                }
                
    
            } else {
                // Handle the case where no matching record is found
                out.println("Invalid police station.");
                return; // Optionally, you may want to exit the request processing here
            }
         
    }
      } else {
            out.println("Invalid request.");
        }
    } catch (FileUploadException e) {
        e.printStackTrace();
        out.println("File upload error: " + e.getMessage());
        return; // Optionally, you may want to exit the request processing here
    } catch (Exception e) {
        e.printStackTrace();
        out.println("Error: " + e.getMessage());
    } finally {
        // Close database resources
        try {
            if (preparedStatement != null) {
                preparedStatement.close();
            }
            if (psIdResultSet != null) {
                psIdResultSet.close();
            }
            if (connection != null) {
                connection.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
            out.println("Error closing resources: " + e.getMessage());
        }
    }
%>
</body>
</html>
