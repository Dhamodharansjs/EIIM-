<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exam Grade Rules</title>
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

        article {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #333;
        }

        p {
            font-size: 18px;
            line-height: 1.6em;
            color: #666;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th,
        td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #3498db;
            color: white;
        }

        td {
            background-color: #fff;
        }
    </style>
</head>

<body>
    

    <div class="container">
        <main>
            <article>
                <h2>Grade Rules</h2>
                <p>Below are the standard grade rules for this exam:</p>
                <table>
                    <thead>
                        <tr>
                            <th>Score Range (%)</th>
                            <th>Grade</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>90 - 100</td>
                            <td>A+</td>
                        </tr>
                        <tr>
                            <td>80 - 89</td>
                            <td>A</td>
                        </tr>
                        <tr>
                            <td>70 - 79</td>
                            <td>B</td>
                        </tr>
                        <tr>
                            <td>60 - 69</td>
                            <td>C</td>
                        </tr>
                        <tr>
                            <td>50 - 59</td>
                            <td>D</td>
                        </tr>
                        <tr>
                            <td>0 - 49</td>
                            <td>F</td>
                        </tr>
                    </tbody>
                </table>
            </article>
        </main>
    </div>
</body>

</html>