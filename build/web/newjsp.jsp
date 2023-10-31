
<%-- 
    Document   : newjsp
    Created on : 12-Oct-2023, 1:34:33 pm
    Author     : manikanta
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.security.MessageDigest" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page import="java.security.NoSuchAlgorithmException" %>

<%
// Function to calculate SHA-256 hash
String calculateSHA256Hash(byte[] data) {
    try {
        MessageDigest digest = MessageDigest.getInstance("SHA-256");
        byte[] hash = digest.digest(data);
        StringBuilder hexString = new StringBuilder();

        for (byte b : hash) {
            String hex = Integer.toHexString(0xff & b);
            if (hex.length() == 1) {
                hexString.append('0');
            }
            hexString.append(hex);
        }

        return hexString.toString();
    } catch (NoSuchAlgorithmException e) {
        e.printStackTrace();
        return null;
    }
}

String aadhar = request.getParameter("aadhar");
boolean matchFound = false;

try {
    Connection connection = Dbconn.dbconn.getConnection();
    if (connection != null) {
        String sql = "SELECT * FROM applicants WHERE aadhar=?";

        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, aadhar);

            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    byte[] applicantImageBytes = resultSet.getBytes("image1");
                    if (applicantImageBytes != null) {
                        String applicantHash = calculateSHA256Hash(applicantImageBytes);

                        String sql2 = "SELECT * FROM criminals";

                        try (PreparedStatement statement2 = connection.prepareStatement(sql2);
                             ResultSet resultSet2 = statement2.executeQuery()) {

                            while (resultSet2.next()) {
                                byte[] criminalImageBytes = resultSet2.getBytes("image");
                                if (criminalImageBytes != null) {
                                    String criminalHash = calculateSHA256Hash(criminalImageBytes);

                                    // Compare the hash values
                                    if (applicantHash.equals(criminalHash)) {
                                        matchFound = true;
                                        break;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }
} catch (SQLException e) {
    e.printStackTrace();
}

if (matchFound) {
%>
    <h2>Match Found!</h2>
    <!-- Additional HTML or logic for displaying the matched images or other details -->
<%
}
%>

</body>
</html>
