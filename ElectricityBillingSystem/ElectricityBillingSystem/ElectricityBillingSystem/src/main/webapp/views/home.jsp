<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Electricity Billing System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url("bulb.jpg");
            background-repeat: no-repeat;
            background-size: 100% 100%;
            background-attachment: fixed;
            margin: 0;
            padding: 0;
        }
        h1 {
            text-align: left;
            color: #fff;
        }
        p {
            text-align: left;
            color: #fff;
        }
        ol {
            list-style-type: none;
            padding: 0;
            margin: 0 ;
            max-width: 400px;
        
        }
        li {
            margin-bottom: 10px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        a {
            display: block;
            padding: 15px;
            text-align: center;
            color: #333;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }
        a:hover {
            background-color: #f0f0f0;
        }
        
    </style>
</head>
<body>
    <h1>Electricity Billing System</h1>
    <p>Please choose a function to proceed</p>
    <ol>
        <li><a href="new_connection">New Connection</a></li>
        <li><a href="add_reading">Add Reading</a></li>
        <li><a href="sector_connections">View Connections</a></li>
        <li><a href="generate_bill">Generate Bill</a></li>
        <li><a href="Know_your_bill">Know Your Due</a></li>
        <li><a href="askUpdate">Update Details</a></li>
        <li><a href="Delete_Connection">Delete Connection</a></li>
    </ol>
</body>
</html>
