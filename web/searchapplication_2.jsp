<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="org.opencv.core.DMatch"%>
<%@ page import="org.opencv.features2d.ORB"%>
<%@ page import="org.opencv.core.Mat"%>
<%@ page import="org.opencv.core.MatOfByte"%>
<%@ page import="org.opencv.core.MatOfDMatch"%>
<%@ page import="org.opencv.core.MatOfKeyPoint"%>
<%@ page import="org.opencv.core.Rect"%>
<%@ page import="org.opencv.core.Size"%>
<%@ page import="org.opencv.features2d.BFMatcher"%>
<%@ page import="org.opencv.imgcodecs.Imgcodecs"%>
<%@ page import="org.opencv.core.Core"%>
<%@ page import="org.apache.commons.codec.binary.Base64"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="org.apache.commons.fileupload.disk.*"%>
<%@ page import="org.apache.commons.fileupload.servlet.*"%>
<%@ page import="java.io.InputStream" %>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>

<%
String currentURL = request.getParameter("currentURL");
//out.println(currentURL);
String serverFilePath = "";
String fileName = "";
Connection connection = null;
PreparedStatement preparedStatement = null;
ResultSet psIdResultSet = null;

Mat uploadedImage = null; // Declare the Mat variable outside the try block
InputStream itemImageStream = null; // Declare the InputStream variable outside the try block

try {
    // Initialize the connection
    connection = Dbconn.dbconn.getConnection();
    boolean isMultipart = ServletFileUpload.isMultipartContent(request);

    if (isMultipart) {
        // Create a factory for disk-based file items
        DiskFileItemFactory factory = new DiskFileItemFactory();

        // Create a new file upload handler
        ServletFileUpload upload = new ServletFileUpload(factory);

        // Parse the multipart request
        List<FileItem> items = upload.parseRequest(request);

        List<String> base64Images = new ArrayList<>();

        for (FileItem item : items) {
            if (item.isFormField()) {
                // Handle form fields if needed
            } else {
                itemImageStream = item.getInputStream();
                fileName = item.getName();
                 
            }
         
        }
           out.println("Server File Path: " + serverFilePath);
        out.println("File Name: " + fileName);
  // Convert InputStream to byte array
        byte[] itemImageBytes = org.apache.commons.io.IOUtils.toByteArray(itemImageStream);

        // Print Base64 encoded representation of the byte array
        String base64EncodedImageStream = Base64.encodeBase64String(itemImageBytes);
        out.println("Base64 Encoded Image InputStream: " + base64EncodedImageStream);
        // Convert InputStream to Mat
        MatOfByte matOfByte = new MatOfByte();
        uploadedImage = Imgcodecs.imdecode(new MatOfByte(org.apache.commons.io.IOUtils.toByteArray(itemImageStream)), Imgcodecs.IMREAD_UNCHANGED);

        // Extract features from the uploaded image
        MatOfKeyPoint keypoints1 = new MatOfKeyPoint();
        Mat descriptors1 = new Mat();
        // Use appropriate feature extraction method based on your needs
        // For example, use ORB for simplicity
        ORB orb = ORB.create();
        orb.detectAndCompute(uploadedImage, new Mat(), keypoints1, descriptors1);

        String sql = "SELECT * FROM criminals";

        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                // Convert the stored image from the database to Mat
                byte[] storedImageBytes = resultSet.getBytes("image");
                Mat storedImage = Imgcodecs.imdecode(new MatOfByte(storedImageBytes), Imgcodecs.IMREAD_UNCHANGED);

                // Extract features from the stored image
                MatOfKeyPoint keypoints2 = new MatOfKeyPoint();
                Mat descriptors2 = new Mat();
                orb.detectAndCompute(storedImage, new Mat(), keypoints2, descriptors2);

                // Match features using a simple matcher (you might need to use a more sophisticated matcher depending on your requirements)
                BFMatcher matcher = BFMatcher.create();
                MatOfDMatch matches = new MatOfDMatch();
                matcher.match(descriptors1, descriptors2, matches);

                // Filter good matches based on a threshold (adjust as needed)
                double max_dist = 0;
                double min_dist = 100;
                List<DMatch> matchesList = matches.toList();
                for (int i = 0; i < descriptors1.rows(); i++) {
                    double dist = matchesList.get(i).distance;
                    if (dist < min_dist) min_dist = dist;
                    if (dist > max_dist) max_dist = dist;
                }

                // Only consider good matches
                List<DMatch> goodMatches = new ArrayList<>();
                for (int i = 0; i < descriptors1.rows(); i++) {
                    if (matchesList.get(i).distance < 2 * min_dist) {
                        goodMatches.add(matchesList.get(i));
                    }
                }

                // Display or store the results based on goodMatches
                for (DMatch match : goodMatches) {
                    // Convert the matched image to Base64
                    Mat matchedImage = new Mat();
                    Rect roi = new Rect(keypoints2.toList().get(match.trainIdx).pt, new Size(20, 20));
                    Mat submat = new Mat(storedImage, roi);
                    MatOfByte mob = new MatOfByte();
                    Imgcodecs.imencode(".png", submat, mob);
                    byte[] byteArray = mob.toArray();
                    //String base64Image = Base64.encodeBase64String(byteArray);
                    String base64Image = java.util.Base64.getEncoder().encodeToString(byteArray);
                    // Print the image tag with Base64 encoded image
                    out.println("<img src=\"data:image/png;base64," + base64Image + "\" alt=\"Matched Image\">");
                }

                // Clean up resources
                storedImage.release();
            }
        }
    }

    connection.close();
} catch (Exception e) {
    e.printStackTrace();
} finally {
    // Clean up resources
    if (uploadedImage != null) {
        uploadedImage.release();
    }

    if (itemImageStream != null) {
        itemImageStream.close();
    }
}
%>
</body>
</html>
