
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.FileUploadException"%>
<%@ page import="org.apache.commons.fileupload.FileItem"%>
<%@ page import="java.awt.image.BufferedImage"%>
<%@ page import="javax.imageio.ImageIO"%>
<%@ page import="java.security.MessageDigest"%>
<%@ page import="java.math.BigInteger"%>
<%@ page import="java.awt.image.DataBufferByte"%>
<%@ page import="org.apache.commons.codec.binary.Base64"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <style>
        .highlight {
            border: 3px solid red;
            padding: 5px;
        }
         .highlight2 {
            border: 2px solid green;
        }
    </style>
     <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <%! 
    // Method to compute MD5 hash of an image
    String computeHash(BufferedImage image) throws Exception {
        MessageDigest md = MessageDigest.getInstance("MD5");
        byte[] pixels = ((DataBufferByte) image.getRaster().getDataBuffer()).getData();
        md.update(pixels);
        byte[] digest = md.digest();
        return new BigInteger(1, digest).toString(16);
    }
%>
    <%
        
     String currentURL = "";
    String aadharNumber = "";
    String hash1 = null;
    String email= null;
    
    boolean isFirstImage = true;
    
    try {
        boolean isMultipart = ServletFileUpload.isMultipartContent(request);
        if (isMultipart) {
            DiskFileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload upload = new ServletFileUpload(factory);
            List<FileItem> items = upload.parseRequest(request);
            byte[] firstImageBytes = null;

            for (FileItem item : items) {
                String fieldName = item.getFieldName();
                if ("currentURL".equals(fieldName)) {
                    currentURL = item.getString();
                } else if ("aadhar".equals(fieldName)) {
                    aadharNumber = item.getString();
                } else if (!item.isFormField() && "image".equals(item.getFieldName())) {
                    InputStream itemImageStream = item.getInputStream();
                    BufferedImage inputImage = ImageIO.read(itemImageStream);
                    hash1 = computeHash(inputImage);
                    firstImageBytes = org.apache.commons.io.IOUtils.toByteArray(itemImageStream);
                    
                    
                      itemImageStream = item.getInputStream();
                  
                    if (isFirstImage) {
                        firstImageBytes = org.apache.commons.io.IOUtils.toByteArray(itemImageStream);
                        isFirstImage = false;
        }
                }
            }
            
             BufferedImage inputImage = ImageIO.read(new ByteArrayInputStream(firstImageBytes));
           hash1 = computeHash(inputImage);
          

            String base64EncodedImage = Base64.encodeBase64String(firstImageBytes);
%>

<%
            Connection connection = Dbconn.dbconn.getConnection();
            String sql = "SELECT criminal_id, image, email FROM criminals";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();
            
            boolean matched = false;

            while (resultSet.next()) {
                email= resultSet.getString("email");
                int criminalId = resultSet.getInt("criminal_id");
                Blob blob = resultSet.getBlob("image");
                byte[] itemImageBytes2 = blob.getBytes(1, (int) blob.length());
                String hash2 = computeHash(ImageIO.read(new ByteArrayInputStream(itemImageBytes2)));
%>


<div class="container d-flex justify-content-center align-items-center ">
    
  <div class="row highlight2" >
    <div class="col-md-6 " id="card1">
      <div class="card mb-3 " style="width: 210px; margin: 0 auto; position: relative; top: 50%;" >
        <div class="text-center highlight2">
          <div class="d-flex flex-column align-items-center">
            <img src="data:image/png;base64,<%= base64EncodedImage %>" alt="Uploaded Image">
          </div>
        </div>
      </div>
    </div>

    <div class="col-md-6" id="card2">
      <div class="card mb-3" style="width: 210px; margin: 0 auto; position: relative; top: 50%;">
        <div class="text-center">
          <div class="d-flex flex-column align-items-center <%= Arrays.equals(firstImageBytes, itemImageBytes2) ? "highlight" : "" %>">
            <img src="data:image/png;base64,<%= Base64.encodeBase64String(itemImageBytes2) %>"
              alt="Criminal Image" class="<%= Arrays.equals(firstImageBytes, itemImageBytes2) ? "highlight2" : "" %>">
             
          </div>
              
        </div>
              
      </div><p  style="color:red; margin: auto; position: relative; top: 80%;"> Criminal Id :<%=criminalId%></p> 
    </div>
              
          
  </div>
</div>

          

      


<%
                if (Arrays.equals(firstImageBytes, itemImageBytes2)) {
                
                %>

<%
                    String updateSql = "UPDATE applicants SET passportstatus = 'active crime', criminal_email=? WHERE aadhar = ?";
                    try (PreparedStatement updateStatement = connection.prepareStatement(updateSql)) {
                        updateStatement.setString(1, email);  
                        updateStatement.setString(2, aadharNumber);
                        updateStatement.executeUpdate();
                    }


out.println("<script>");
out.println("Swal.fire({");
out.println("  icon: 'success',");
out.println("  html: '<h4 style=\"text-align: center; color:green\">Match Found</h4>' +"); // Add the heading
out.println("        '<div style=\"display: flex; align-items: center;\">' +");
out.println("        '<div style=\"flex: 1;\"><img src=\"data:image/png;base64," + Base64.encodeBase64String(firstImageBytes) + "\" alt=\"Uploaded Image\" class=\"highlight2\"></div>' +");
out.println("        '<div style=\"flex: 1;\"><img src=\"data:image/png;base64," + Base64.encodeBase64String(itemImageBytes2) + "\" alt=\"Criminal Image\"  class=\"highlight\"></div>' +");
out.println("        '</div>' +");
out.println("        '<p style=\"color: red;\">Criminal Id:"+criminalId+"</p>',");
out.println("  showConfirmButton: true,");
out.println("}).then(function() { window.location.href = 'Search_criminal.jsp?criminalId=" + criminalId + "&email=" + email + "&aadhar=" + aadharNumber + "'; });");
out.println("</script>");

                        matched = true;
                        break;
                }
            }

            if (!matched) {
                out.println("<p>No matching criminal found.</p>");
                String updateSql = "UPDATE applicants SET passportstatus = 'no crime', doi=?,doe=? WHERE aadhar = ?";
                try (PreparedStatement updateStatement = connection.prepareStatement(updateSql)) {
                    
  java.sql.Date currentDate = new java.sql.Date(new java.util.Date().getTime());
        updateStatement.setDate(1, currentDate);

 Calendar calendar = Calendar.getInstance();
        calendar.setTime(new java.util.Date());
        calendar.add(Calendar.YEAR, 10);
        java.sql.Date expiryDate = new java.sql.Date(calendar.getTimeInMillis());
        updateStatement.setDate(2, expiryDate);

updateStatement.setString(3, aadharNumber);

                    updateStatement.executeUpdate();
                }

String errorMessage = "No Match Found!";
out.println("<script>");
out.println("Swal.fire({");
out.println("  icon: 'error',");
out.println("  html: '<p style=\"color:green\">" + errorMessage + "</p><img src=\"data:image/png;base64," + Base64.encodeBase64String(firstImageBytes) + "\" alt=\"Uploaded Image\" class=\"highlight2\">',");
out.println("}).then(function() { window.location.href = 'Search_criminal.jsp'; });");
out.println("</script>");

            }
        }
    } catch (FileUploadException e) {
        e.printStackTrace();
        out.println(e);
    } catch (IOException e) {
        e.printStackTrace();
        out.println(e);
    } catch (Exception e) {
        e.printStackTrace();
        out.println(e);
    }
%>
         <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.min.js"></script>
</body>
</html>
