<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="org.apache.commons.fileupload.FileItem" %>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory" %>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>
<%@ page import="java.io.File" %>
<%@ page import="java.io.FileInputStream" %>

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
    String passport = "";
    String name = "";
    String email = "";
     String aadhar = "";
    String phone = "";
    String address = "";
    String dob = "";
//    String doi = "";
//    String doe = "";
    String serverFilePath1 = "";
    String fileName1 = "";
    String serverFilePath2 = "";
    String fileName2 = "";

    boolean emailExists = false;

    if (ServletFileUpload.isMultipartContent(request)) {
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        upload.setSizeMax(5600456); // Adjust the size limit as needed

        List<FileItem> items = upload.parseRequest(request);

        for (FileItem item : items) {
            if (!item.isFormField()) {
                String originalFileName = new File(item.getName()).getName();
                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmssSSS");
                String timeStamp = dateFormat.format(new Date());
                String truncatedTimeStamp = timeStamp.substring(8, 13);
                String uniqueFileName = truncatedTimeStamp + "_" + originalFileName;
                
                if (serverFilePath1.isEmpty()) {
                    serverFilePath1 = "C:\\Users\\manikanta\\OneDrive\\Documents\\NetBeansProjects\\passport-verify\\web\\applicants\\" + uniqueFileName;
                    item.write(new File(serverFilePath1));
                    fileName1 = uniqueFileName;
                } else {
                    serverFilePath2 = "C:\\Users\\manikanta\\OneDrive\\Documents\\NetBeansProjects\\passport-verify\\web\\applicants\\" + uniqueFileName;
                    item.write(new File(serverFilePath2));
                    fileName2 = uniqueFileName;
                }
            } else {
                String fieldName = item.getFieldName();
                String fieldValue = item.getString();
                if ("passport".equals(fieldName)) {
                    passport = fieldValue;
                } else if ("name".equals(fieldName)) {
                    name = fieldValue;
                } else if ("email".equals(fieldName)) {
                    email = fieldValue;
                } else if ("phone".equals(fieldName)) {
                    phone = fieldValue;
                } else if ("address".equals(fieldName)) {
                    address = fieldValue;
                } else if ("dob".equals(fieldName)) {
                    dob = fieldValue;
                } 
                
//                else if ("doi".equals(fieldName)) {
//                    doi = fieldValue;
//                } else if ("doe".equals(fieldName)) {
//                    doe = fieldValue;
                //}
                else if ("aadhar".equals(fieldName)) {
                    aadhar = fieldValue;
                }
            }
        }

        Connection connection = new Dbconn.dbconn().getConnection();
        
        
                     String checkExistingQuery = "SELECT * FROM applicants WHERE email = ? OR aadhar = ? OR phone = ?";
            PreparedStatement checkExistingStatement = connection.prepareStatement(checkExistingQuery);
            checkExistingStatement.setString(1, email);
            checkExistingStatement.setString(2, aadhar);
            checkExistingStatement.setString(3, phone);
            ResultSet existingResultSet = checkExistingStatement.executeQuery();

            if (existingResultSet.next()) {
                int existingApplicantId = existingResultSet.getInt("applicants_id");
                //int existingOfficerStationId = existingResultSet.getInt("station_id");
                
                
               
                    String errorMessage = "Applicant already exists with this Email and Aadhar.";
                    out.println("<script>");
                    out.println("Swal.fire({");
                    out.println("  icon: 'error',");
                    out.println("  title: 'Error',");
                    out.println("  text: '" + errorMessage + "',");
                    out.println("}).then(function() { window.location.href = 'applicants_details.jsp?applicantid=" + existingApplicantId + "&email=" + email + "'; });");

                    out.println("</script>");
                    
            } else {
            
            
        
        
        String sql = "INSERT INTO applicants (passport, name, email, phone, address, dob, aadhar, image1, imagename1, image2, imagename2) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try (
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            preparedStatement.setString(1, passport);
            preparedStatement.setString(2, name);
            preparedStatement.setString(3, email);
            preparedStatement.setString(4, phone);
            preparedStatement.setString(5, address);
            preparedStatement.setString(6, dob);
       
            preparedStatement.setString(7, aadhar);
            
            FileInputStream input1 = new FileInputStream(serverFilePath1);
            preparedStatement.setBinaryStream(8, input1);
            preparedStatement.setString(9, fileName1);

            FileInputStream input2 = new FileInputStream(serverFilePath2);
            preparedStatement.setBinaryStream(10, input2);
            preparedStatement.setString(11, fileName2);

            int rowsInserted = preparedStatement.executeUpdate();

            if (rowsInserted > 0) {
                String successMessage = "Added Successfully.";
                out.println("<script>");
                out.println("Swal.fire({");
                out.println("  icon: 'success',");
                out.println("  title: 'Success',");
                out.println("  text: '" + successMessage + "',");
                out.println("}).then(function() { window.location.href = 'manage_applicant.jsp'; });");
                out.println("</script>");
            } else {
                String errorMessage = "Update failed.";
                out.println("<script>");
                out.println("Swal.fire({");
                out.println("  icon: 'error',");
                out.println("  title: 'Error',");
                out.println("  text: '" + errorMessage + "',");
                out.println("}).then(function() { window.location.href = 'add_applicant.jsp'; });");
                out.println("</script>"); // Redirect to an error page
            }
            
            
    
        } catch (Exception e) {
            out.print(e);
        }
    }
    }
} catch (Exception e) {
    out.print(e);
}
%>

</body>

</html>
