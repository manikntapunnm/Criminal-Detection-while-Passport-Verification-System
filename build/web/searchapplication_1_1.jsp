
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
            border: 2px solid red;
        }
    </style>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
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
   // String hash2 = null;
    boolean isFirstImage = true;
    try {
        boolean isMultipart = ServletFileUpload.isMultipartContent(request);
        if (isMultipart) {
            DiskFileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload upload = new ServletFileUpload(factory);
            List<FileItem> items = upload.parseRequest(request);
            InputStream itemImageStream = null;
            String fileName = null;
            byte[] firstImageBytes = null;

            for (FileItem item : items) {
//                if (item.isFormField() && "currentURL".equals(item.getFieldName())) {
//                    currentURL = item.getString();
//                } if (item.isFormField()) {
                    String fieldName = item.getFieldName();
                    if ("currentURL".equals(fieldName)) {
                        currentURL = item.getString();
                    } else if ("aadhar".equals(fieldName)) {
                        aadharNumber = item.getString();
                    }
else if (!item.isFormField() && "image".equals(item.getFieldName())) {
                    itemImageStream = item.getInputStream();
                    fileName = item.getName();
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
            <img src="data:image/png;base64,<%= base64EncodedImage %>" alt="Uploaded Image">
<%
    


  
            out.println(fileName);

            Connection connection = Dbconn.dbconn.getConnection();

            String sql = "SELECT criminal_id, image,email FROM criminals";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();

            boolean matched = false; // Flag to track if any match is found

            while (resultSet.next()) {
            String email = resultSet.getString("email"); 
                int criminalId = resultSet.getInt("criminal_id");
                
                Blob blob = resultSet.getBlob("image");

                byte[] itemImageBytes2 = blob.getBytes(1, (int) blob.length());
                String base64EncodedImage2 = Base64.encodeBase64String(itemImageBytes2);
                 String hash2 = computeHash(ImageIO.read(new ByteArrayInputStream(itemImageBytes2)));
  %>

                
                    <img src="data:image/png;base64,<%= base64EncodedImage2 %>" alt="Criminal Image" class="<%= Arrays.equals(firstImageBytes, itemImageBytes2) ? "highlight" : "" %>">

                    

    <%
                if (Arrays.equals(firstImageBytes, itemImageBytes2)) {
                    // Print the criminal ID only for matched images
                    out.println("<div>");
                    out.println("<img src='data:image/png;base64," + base64EncodedImage2 + "' alt='Criminal Image' class='highlight'>");
                    out.println("<p>Criminal ID: " + criminalId + "</p>");
                    out.println("</div>");
                    


//  String updateSql = "UPDATE applicants SET status = 'active crime', passportstatus='Rejected' WHERE aadhar = ?";
//                    try (PreparedStatement updateStatement = connection.prepareStatement(updateSql)) {
//                        updateStatement.setString(1, aadharNumber);
//                        updateStatement.executeUpdate();
//                    }
                    

String updateSql = "UPDATE applicants SET status = 'active crime', criminal_id=? WHERE aadhar = ?";
                    try (PreparedStatement updateStatement = connection.prepareStatement(updateSql)) {
                    updateStatement.setInt(1, criminalId);    
                    updateStatement.setString(2, aadharNumber);
        }
                  %>
                    <script>
                        Swal.fire({
                            title: 'Match Found!',
                            text: 'Criminal ID: <%= criminalId %>',
                            icon: 'success',
                            confirmButtonText: 'OK'
                        }).then(() => {
                            // Redirect to the specified URL with the criminal ID
                            window.location.href = '<%= currentURL %>?criminalId=<%= criminalId %>&email=<%=email%>&aadhar=<%=aadharNumber%>';
                        });
                    </script>
<%  
      if (hash1 != null && hash2 != null && hash1.equals(hash2)) {
                out.println("Both images are the same.");
            } else {
                out.println("Images are different.");
            }
                    matched = true; // Set the flag to true
                    break; // No need to check further, as we found a match
                }
            }

            if (!matched) {
                // Handle the case where no match is found
                
                out.println("<p>No matching criminal found.</p>");
                  String updateSql = "UPDATE applicants SET status = 'no crime', passportstatus='Verified' WHERE aadhar = ?";
                    try (PreparedStatement updateStatement = connection.prepareStatement(updateSql)) {
                        updateStatement.setString(1, aadharNumber);
                        updateStatement.executeUpdate();
                    }

 %>
                    <script>
                        Swal.fire({
                            title: 'No Match Found!',
                           
                            
                            confirmButtonText: 'OK'
                        }).then(() => {
                            // Redirect to the specified URL with the criminal ID
                            window.location.href = '<%= currentURL %>';
                        });
                    </script>
<%  

            }
        }
    } catch (FileUploadException e) {
        e.printStackTrace();
        out.println(e);
    } catch (IOException e) {
        e.printStackTrace();
        out.println(e);
    }
%>

</body>
</html>
