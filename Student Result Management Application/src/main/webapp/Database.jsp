<%@ page import="java.io.*,java.util.*,jakarta.servlet.RequestDispatcher"%>
<%@ page import="jakarta.servlet.RequestDispatcher"%>
<%@ page import="java.io.*,java.util.*, jakarta.servlet.*"%>
<%@ page import="jakarta.servlet.http.*"%>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.SQLException"%>


<% 

        String studentName  = request.getParameter("StudentName");
        String studentID = request.getParameter("StudentID");
        String subject = request.getParameter("Subject");
        String examResult = request.getParameter("ExamResult");
        
        
        String jdbcUrl = "jdbc:mysql://localhost:3306/result";
        String dbuser = "root";
        String dbPassword = "Aspire@123";
        

       
        try {
            // JDBC URL, username, and password of MySQL server

     

            // Loading JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establishing a connection
            Connection conn = DriverManager.getConnection(jdbcUrl,dbuser,dbPassword );

            // SQL query to insert data
            String sql = "INSERT INTO students_results(studentName,studentID,subject,examResult) VALUES (?, ?, ?, ?)";
            try( PreparedStatement statement = conn.prepareStatement(sql)){
            	
            statement.setString(1,studentName );
            statement.setString(2,studentID );
            statement.setString(3,subject );
            statement.setString(4,examResult);
            statement.executeUpdate();

            }
            conn.close();

            
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            request.setAttribute("status","Error" +e.getMessage());
        }
	
      
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Welcome Content</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #4caf50;
      margin: 0;
      padding: 0;
      display: flex;
      align-items: center;
      justify-content: center;
      height: 100vh;
    }

    .welcome-container {
      text-align: center;
    }

    .welcome-text {
      font-size: 24px;
      color: #333;
    }

    .sub-text {
      font-size: 16px;
      color: #666;
    }
  </style>
</head>
<body>

  <div class="welcome-container">
    <h1 class="welcome-text">Successfully Entered Students Result.!</h1>
    <p class="sub-text">Thank You.</p>
  </div>

</body>
</html>