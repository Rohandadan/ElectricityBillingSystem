<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account Created</title>
    <style>
    .pay-container {
    display: inline-block;
 background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            text-align: center;
}
.container {
    width: 80%;
    margin: 20px auto;
    background-color: #fff;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .message-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            text-align: center;
        }
        h1 {
            color: #333;
        }
        button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 20px;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="message-container">
        <h1>Bill Successfully Generated!</h1>
        <h3>Your Due is ${due} Rupees</h3>
        <p>Pay Before due Date</p>
         <div class="pay-container">
     <h2>Bill Payment</h2>
        <button onclick="goTopaybill()">PayTM</button>
  
        <button onclick="goTopaybill()">PhonePe</button>
    </div>
    <br>
        <button onclick="goToMainMenu()">Go Back to Main Menu</button>
    </div>
    
    
    <script>
        function goToMainMenu() {
            location.href = "/home";
        }
        function goTopaybill() {
            location.href = "/paybill";
        }
        
    </script>
</body>
</html>
    