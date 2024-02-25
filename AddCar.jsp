<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Enter Car Details</title>
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

    form {
        max-width: 400px;
        margin: 20px auto;
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

    ::placeholder {
        color: #ccc;
    }
</style>
</head>
<body>
    <h1>Enter Car Details</h1>
    <form action="addCar" method="post">
        <input type="number" placeholder="Enter Car ID" name="carId"><br>
        <input type="text" placeholder="Enter Car Model" name="carModel"><br>
        <input type="text" placeholder="Enter Car Brand" name="carBrand"><br>
        <input type="number" placeholder="Enter Car Price" name="carPrice"><br>
        <input type="submit" value="ADD">
    </form>
</body>
</html>
