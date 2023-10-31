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
    String aadharNumber = "";
    String hash1 = null;
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
                String fieldName = item.getFieldName();
                if ("aadhar".equals(fieldName)) {
                    aadharNumber = item.getString();
                } else if (!item.isFormField() && "image".equals(item.getFieldName())) {
                    itemImageStream = item.getInputStream();
                    fileName = item.getName();
                    if (isFirstImage) {
                        firstImageBytes = org.apache.commons.io.IOUtils.toByteArray(itemImageStream);
                        out.
                        isFirstImage = false;
                    }
                }
            }
            out.println("Aadhar Number: " + aadharNumber);

            BufferedImage inputImage = ImageIO.read(new ByteArrayInputStream(firstImageBytes));
            hash1 = computeHash(inputImage);
            out.println(hash1);
            String base64EncodedImage = Base64.encodeBase64String(firstImageBytes);
%>

<img src="data:image/png;base64,<%= base64EncodedImage %>" alt="Uploaded Image">
<%
        }
    } catch (Exception e) {
        e.printStackTrace(); // Handle exceptions appropriately in your application
    }
%>
</body>
</html>
