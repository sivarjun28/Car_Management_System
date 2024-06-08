<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Car Dashboard</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f8f9fa;
        margin: 0;
        padding: 0;
    }

    .container {
        max-width: 600px;
        margin: 0 auto;
        padding: 20px;
        text-align: center;
    }

    h1 {
        color: #343a40;
        font-size: 32px;
        margin-bottom: 30px;
    }

    h2 {
        margin-top: 20px;
    }

    a {
        display: inline-block;
        text-decoration: none;
        color: #007bff;
        padding: 10px 20px;
        border: 2px solid #007bff;
        border-radius: 5px;
        font-size: 18px;
        transition: all 0.3s ease;
    }

    a:hover {
        background-color: #007bff;
        color: #fff;
    }
</style>
</head>
<body>
    <div class="container">
        <h1>Welcome to Car Dashboard!!</h1>
        <h2><a href="AddCar.jsp">ADD NEW CAR</a></h2>
        <h2><a href="displayAllCars">DISPLAY ALL CARS</a></h2>
    </div>
</body>
</html>
