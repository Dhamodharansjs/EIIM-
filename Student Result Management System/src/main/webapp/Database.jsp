<%@ page import="java.io.*,java.util.*,jakarta.servlet.RequestDispatcher"%>
<%@ page import="jakarta.servlet.RequestDispatcher"%>
<%@ page import="java.io.*,java.util.*, jakarta.servlet.*"%>
<%@ page import="jakarta.servlet.http.*"%>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.SQLException"%>


<% 

        String StudentName  = request.getParameter("StudentName");
        String StudentID = request.getParameter("StudentID");
        String Tamil = request.getParameter("Tamil");
        String English = request.getParameter("English");
        String Maths = request.getParameter("Maths");
        String Chemistry = request.getParameter("Chemistry");
        String Physics = request.getParameter("Physics");
        String Biology = request.getParameter("Biology");
        
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
            String sql = "INSERT INTO students_results(StudentName,StudentID,Tamil,English,Maths,Chemistry,Physics,Biology ) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            try( PreparedStatement statement = conn.prepareStatement(sql)){
            	
            statement.setString(1,StudentName );
            statement.setString(2,StudentID );
            statement.setString(3,Tamil );
            statement.setString(4,English);
            statement.setString(5,Maths);
            statement.setString(6,Chemistry);
            statement.setString(7,Physics);
            statement.setString(8,Biology);
            statement.executeUpdate();

            }
            conn.close();

            
        } catch (ClassNotFoundException | SQLException e) {
        	PrintWriter pw = response.getWriter();
        	pw.println(e);
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