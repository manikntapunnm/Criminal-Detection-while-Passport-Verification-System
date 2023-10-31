<%-- 
    Document   : contact-action
    Created on : 07-Oct-2023, 2:49:46 pm
    Author     : manikanta
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.Properties"%>
<%@ page import="javax.mail.*"%>
<%@ page import="javax.mail.internet.*"%>
<%@ page import="Dbconn.dbconn"%>
<!DOCTYPE html>
<html>
<head>
    <title>Form Submission</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.min.css">
</head>
<body>
    <%
    Connection connection = null;
    PreparedStatement pstmt = null;
    ResultSet resultSet = null;

    try {
        // Get a database connection using your Dbconn class
        connection = new Dbconn.dbconn().getConnection(); // Remove the "dbconn." before "getConnection()"

        String name = request.getParameter("name");
        String fromemail = request.getParameter("email");
        String subject = request.getParameter("subject");
        String message = request.getParameter("message"); // Corrected variable name

        // Check if the email exists in the customers table
        String checkEmailQuery = "SELECT * FROM police_officers WHERE email = ?";
        pstmt = connection.prepareStatement(checkEmailQuery);
        pstmt.setString(1, fromemail);
        resultSet = pstmt.executeQuery();

        if (resultSet.next()) {
            // Email exists in the customers table
            //String insertQuery = "INSERT INTO query (customer-name, customer-email, customer-subject, customer-message) VALUES (?, ?, ?, ?)"; // Corrected column names
            String insertQuery = "INSERT INTO query (name, email, subject, message) VALUES (?, ?, ?, ?)";

            pstmt = connection.prepareStatement(insertQuery);
            pstmt.setString(1, name);
            pstmt.setString(2, fromemail);
            pstmt.setString(3, subject);
            pstmt.setString(4, message);

            // Execute the query to insert into the query table
            int rowsInserted = pstmt.executeUpdate();

            if (rowsInserted > 0) {
                final String ToEmail = "projects@codebook.in";
                final String senderPassword = "frwqvhawrnsxetyk";

                // Configure email properties
                Properties props = new Properties();
                props.put("mail.smtp.host", "smtp.gmail.com");
                props.put("mail.smtp.port", "587");
                props.put("mail.smtp.auth", "true");
                props.put("mail.smtp.starttls.enable", "true");
                props.put("mail.smtp.ssl.trust", "*");

                // Create a session for sending email
                Session esession = Session.getInstance(props, new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(ToEmail, senderPassword);
                    }
                });

                // Prepare the email message
                MimeMessage message1 = new MimeMessage(esession);
                message1.setFrom(new InternetAddress(fromemail));
                message1.setRecipients(Message.RecipientType.TO, InternetAddress.parse(ToEmail));
                message1.setSubject("Contact Query: " + subject);
                message1.setText("Name: " + name + "\n"
                   + "Email: " + fromemail + "\n"
                   + "Message: " + message);

                // Send the email
                Transport.send(message1);
                
                String successMessage = "You are Already Registered. An email has been sent Successfully .";
                %>
                
                
                
                
                      <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script>
            Swal.fire({
                icon: 'success',
                title: 'Success',
                text: '<%= successMessage%>'
            }).then(function () {
                window.location.href = 'contact.jsp';
            });
        </script>
                
                
                
                
                
                
                <%
                
                
                
     
               // response.sendRedirect("contact.jsp"); // Redirect to the contact page
            } else {

String failedMessage = "You are Already Registered. But email sending Failed .";
%>


                 <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
        
        <script>
            Swal.fire({
                icon: 'error',
                title: 'Failed',
                text: '<%= failedMessage%>'
            }).then(function () {
                window.location.href = 'contact.jsp';
            });
        </script>






<%




                //out.println("Error inserting data.");
            }
        } else {
            // Email does not exist in the customers table, insert into query table
            // Create the SQL query to insert into the query table
           // String insertQuery = "INSERT INTO query (customer-name, customer-email, customer-subject, customer-message) VALUES (?, ?, ?, ?)"; // Corrected column names
            String insertQuery = "INSERT INTO query (name, email, subject, message) VALUES (?, ?, ?, ?)";

pstmt = connection.prepareStatement(insertQuery);
            pstmt.setString(1, name);
            pstmt.setString(2, fromemail);
            pstmt.setString(3, subject);
            pstmt.setString(4, message);

            // Execute the query to insert into the query table
            int rowsInserted = pstmt.executeUpdate();

            if (rowsInserted > 0) {
                final String ToEmail = "projects@codebook.in";
                final String senderPassword = "frwqvhawrnsxetyk";

                // Configure email properties
                Properties props = new Properties();
                props.put("mail.smtp.host", "smtp.gmail.com");
                props.put("mail.smtp.port", "587");
                props.put("mail.smtp.auth", "true");
                props.put("mail.smtp.starttls.enable", "true");
                props.put("mail.smtp.ssl.trust", "*");

                // Create a session for sending email
                Session esession = Session.getInstance(props, new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(ToEmail, senderPassword);
                    }
                });

                // Prepare the email message
                MimeMessage message2 = new MimeMessage(esession);
                message2.setFrom(new InternetAddress(fromemail));
                message2.setRecipients(Message.RecipientType.TO, InternetAddress.parse(ToEmail));
                message2.setSubject("Contact Query: " + subject);
                message2.setText("Name: " + name + "\n"
                   + "Email: " + fromemail + "\n"
                   + "Message: " + message2);

                // Send the email
                Transport.send(message2);
                String successMessage1 = "You are not Registered.But email sent Successfully .";


%>


                  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script>
            Swal.fire({
                icon: 'success',
                title: 'Success',
                text: '<%= successMessage1%>'
            }).then(function () {
                window.location.href = 'contact.jsp';
            });
        </script>





<%



                //response.sendRedirect("contact.jsp"); // Redirect to the contact page
            } else {
  String failedMessage1 = "You are not Registered.Email sending Failed .";


%>



                 <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
        
        <script>
            Swal.fire({
                icon: 'error',
                title: 'Failed',
                text: '<%= failedMessage1%>'
            }).then(function () {
                window.location.href = 'contact.jsp';
            });
        </script>


<%
               // out.println("Error inserting data.");
            }
        }
    } catch (Exception e) {
        out.println("Exception: " + e.getMessage());
    } finally {
        // Close resources
        if (resultSet != null) {
            resultSet.close();
        }
        if (pstmt != null) {
            pstmt.close();
        }
        if (connection != null) {
            connection.close();
        }
    }
    %>
</body>
</html>
