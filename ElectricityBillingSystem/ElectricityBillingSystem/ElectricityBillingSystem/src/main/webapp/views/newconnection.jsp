<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Information Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('aaa.jpeg');
            background-repeat: no-repeat;
            background-size: 100% 100%;
            background-attachment: fixed;
            margin: 0;
            padding: 20px;
        }
        label {
            display: block;
            margin-bottom: 10px;
        }
        input[type="text"],
        input[type="number"] {
            width: 100px;
            height: 25px;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        .error{
            color:red;
        }
    </style>
</head>
<body>
    <h2>User Information Form</h2>
    <form:form action="/new_connection" method="post" modelAttribute="account">
        <label for="name">Name:</label>
        <form:input type="text" path="name" /><br>
        <form:errors path="name" class="error" />

        <label for="sectorno">Sector Number:</label>
        <form:input type="number" path="sectorno" /><br>
        <form:errors path="sectorno"  class="error"/>

        <label for="phoneno">Phone Number:</label>
        <form:input type="text" path="phoneno" /><br>
        <form:errors path="phoneno"  class="error" />

        <input type="submit" value="Submit">
    </form:form>
</body>
</html>
