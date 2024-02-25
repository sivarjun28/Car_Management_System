<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>All Car Details</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f8f9fa;
        margin: 0;
        padding: 0;
    }

    h1 {
        color: #333;
        text-align: center;
        margin-top: 20px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }

    th, td {
        padding: 10px;
        border: 1px solid #ccc;
        text-align: left;
    }

    th {
        background-color: #007bff;
        color: #fff;
        font-weight: bold;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:hover {
        background-color: #e2e2e2;
    }

    a.button {
        display: inline-block;
        text-decoration: none;
        color: #fff;
        background-color: #007bff;
        padding: 8px 20px;
        border-radius: 4px;
        transition: background-color 0.3s ease;
    }

    a.button:hover {
        background-color: #0056b3;
    }

    h2 {
        text-align: center;
        margin-top: 20px;
    }
</style>
</head>
<body>
    <h1>All Car Details</h1>

    <% ResultSet rs = (ResultSet) request.getAttribute("carList"); %>

    <table>
        <tr>
            <th>Car ID</th>
            <th>Car Model</th>
            <th>Car Brand</th>
            <th>Car Price</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>

        <% while (rs.next()) {%>
        <tr>
            <td><%= rs.getInt(1)%></td>
            <td><%= rs.getString(2) %></td>
            <td><%= rs.getString(3) %></td>
            <td>&#8377; <%= rs.getString(4) %></td>
            <td><a href="UpdateCar?carId=<%=rs.getInt(1)%>" class="button">UPDATE</a></td>
            <td><a href="DeleteCar?carId=<%=rs.getInt(1)%>" class="button">DELETE</a></td>
        </tr>
        <% } %>
    </table>
    
    <h2><a href="index.jsp" class="button">Go back to the Car Dashboard</a></h2>
</body>
</html>
