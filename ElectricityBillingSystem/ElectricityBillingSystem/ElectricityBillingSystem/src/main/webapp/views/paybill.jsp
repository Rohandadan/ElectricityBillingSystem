<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    
</head>
<body>
<h2>Payment Successful</h2>
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
