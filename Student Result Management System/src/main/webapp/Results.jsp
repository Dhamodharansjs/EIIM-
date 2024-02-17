<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Result Entry</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
        }

        .container {
            width: 80%;
            margin: auto;
            overflow: hidden;
        }

        header {
            background: #333;
            color: white;
            padding-top: 30px;
            min-height: 70px;
            border-bottom: #bbb 1px solid;
        }

        header a {
            color: white;
            text-decoration: none;
            text-transform: uppercase;
            font-size: 16px;
        }

        header ul {
            padding: 0;
            margin: 0;
            list-style: none;
            overflow: hidden;
        }

        header #branding {
            float: left;
        }

        header #branding h1 {
            margin: 0;
        }

        header #branding h1 span {
            color: #3498db;
        }

        header a,
        header #branding a,
        header #branding a:hover {
            text-decoration: none;
            color: white;
        }

        header nav {
            float: right;
            margin-top: 10px;
        }

        header .highlight,
        header a:hover {
            color: #3498db;
            font-weight: bold;
        }

        header a:hover {
            color: #3498db;
        }

        main {
            padding: 20px 0;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 50%;
            margin: auto;
        }

        form label,
        form input {
            display: block;
            margin-bottom: 15px;
        }

        form input {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
        }

        form button {
            background-color: #3498db;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        form button:hover {
            background-color: #2980b9;
        }
    </style>
</head>

<body>
    <header>
        <div class="container">
            <div id="branding">
                <h1><span>Student</span> Result Entry</h1>
            </div>
            
        </div>
    </header>

    <div class="container">
        <main>
            <form action="Database.jsp" method="post" id="resultForm">
                <label for="StudentName">Student Name:</label>
                <input type="text" id="StudentName" name="StudentName" required>

                <label for="StudentID">Student ID:</label>
                <input type="text" id="StudentID" name="StudentID" required>

                <label for="Tamil">Tamil (%):</label>
                <input type="number" id="Tamil" name="Tamil" min="0" max="100" required>
                
                <label for="English">English (%):</label>
                <input type="number" id="English" name="English" min="0" max="100" required>
                
                <label for="Maths">Maths (%):</label>
                <input type="number" id="Maths " name="Maths" min="0" max="100" required>
                
                <label for="Chemistry">Chemistry (%):</label>
                <input type="number" id="Chemistry" name="Chemistry" min="0" max="100" required>
                
                <label for="Physics ">Physics (%):</label>
                <input type="number" id="Physics" name="Physics" min="0" max="100" required>
                
                <label for="Biology">Biology (%):</label>
                <input type="number" id="Biology" name="Biology" min="0" max="100" required>

                <button type="submit">Submit Result</button>
            </form>
        </main>
    </div>
</body>

</html>