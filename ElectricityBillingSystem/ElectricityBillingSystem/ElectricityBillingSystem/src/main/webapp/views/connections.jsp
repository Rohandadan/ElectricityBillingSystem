<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Connections in Sector</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 20px;
        }
        h2 {
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ccc;
            text-align: left;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        a {
            display: inline-block;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border-radius: 5px;
            text-decoration: none;
        }
        a:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h2>Connections in Sector: ${param.sectorno}</h2>
    <table>
        <tr>
            <th>Meter Number</th>
            <th>Name</th>
            <th>Sector Number</th>
            <th>Due</th>
            <th>Action</th>
        </tr>
        <c:forEach var="account" items="${accounts}">
        <tr>
            <td>${account.meterno}</td>
            <td>${account.name}</td>
            <td>${account.sectorno}</td>
            <td>${account.due}</td>
            <td><a href="Know_your_bill">Pay Bill Here</a></td>
        </tr>
        </c:forEach>
    </table>
</body>
</html>
