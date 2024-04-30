<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <title>Electricity Bill</title>
    
    <style>
    body {
    
    background-color: #f3f3f3;
    margin: 0;
    padding: 0;
}
.pay-container {
    display: inline-block;
 background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            text-align: center;
}

.message-container {
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
.header {
    text-align: center;
}

.header h1 {
    color: #333;
}

.bill-details {
    margin-top: 30px;
}

.bill-details h2 {
    color: #333;
}

table {
    width: 100%;
    border-collapse: collapse;
}

table td {
    padding: 10px;
    border-bottom: 1px solid #ddd;
}

table tr:last-child td {
    border-bottom: none;
}

table tr:nth-child(even) {
    background-color: #f9f9f9;
}

    
    </style>
    
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>Electricity Bill</h1>
        </div>
        <div class="bill-details">
            <h2>Bill Details</h2>
            <table>
                <tr>
                    <td>Customer Name:</td>
                    <td>${name}</td>
                </tr>
                <tr>
                    <td>Meter Number:</td>
                    <td>${metern}</td>
                </tr>
                <tr>
                    <td>Sector No:</td>
                    <td>${sectorno}</td>
                </tr>
           
                <tr>
                    <td>Previous Reading:</td>
                    <td>${oreading}</td>
                </tr>
                <tr>
                    <td>Current Reading:</td>
                    <td>${reading}</td>
                </tr>
                <tr>
                    <td>Total Usage:</td>
                    <td>${units}</td>
                </tr>
                <tr>
                    <td>Total Amount Due:</td>
                    <td>${due}</td>
                </tr>
            </table>
        </div>
    </div>
    
     <div class="pay-container">
     <h2>Bill Payment</h2>
        <button onclick="goTopaybill()">PayTM</button>
  
        <button onclick="goTopaybill()">PhonePe</button>
    </div>
    
    <div class="message-container">
        <button onclick="goToMainMenu()">Go Back to Main Menu</button>
    </div>
   <br>

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
