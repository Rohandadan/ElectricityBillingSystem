<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Records</title>
</head>
<body>
    <h2>Records</h2>
    <form action="#" th:action="@{/}" th:object="${Account}" method="post">
        <label for="sectorno">Select Sector:</label>
<select id="sectorno" name="sectorno" onchange="this.form.submit()">
    <option value="">Select Sector Number</option>
    <option th:each="sectorNumber : ${sectorNumbers}" th:value="${sectorNumber}" th:text="${'Sector ' + sectorNumber}">Sector ${sectorNumber}</option>
</select>


    </form>
    
    <table border="1">
        <tr>
            <th>Name</th>
            <th>Phone Number</th>
            <th>Due</th>
            <th>meterno</th>
            <th>Sector No</th>
        </tr>
        <tr th:each="account : ${accounts}" th:if="${account.sectorno == sectorno}">
            <td th:text="${account.name}"></td>
            <td th:text="${account.phoneno}"></td>
            <td th:text="${account.due}"></td>
            <td th:text="${account.meterno}"></td>
            <td th:text="${account.sectorno}"></td>
        </tr>
    </table>
</body>
</html>
