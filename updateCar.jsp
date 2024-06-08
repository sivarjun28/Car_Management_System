<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Update Car Details</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f8f9fa;
        margin: 0;
        padding: 0;
    }

    form {
        max-width: 400px;
        margin: 50px auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    input[type="number"],
    input[type="text"],
    input[type="submit"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
        font-size: 16px;
    }

    input[type="submit"] {
        background-color: #007bff;
        color: #fff;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
    <%  
        ResultSet rs = (ResultSet)request.getAttribute("car");
        rs.next();
    %>
    <form action="SaveUpdateCar" method="post">
        <input type="number" value="<%=rs.getInt(1)%>" name="carId" readonly="readonly"><br>
        <input type="text"  value="<%=rs.getString(2)%>" name="carModel"><br>
        <input type="text"  value="<%=rs.getString(3)%>" name="carBrand"><br>
        <input type="number"  value="<%=rs.getInt(4)%>" name="carPrice"><br>
        <input type="submit" value="Update">
    </form>
</body>
</html>
