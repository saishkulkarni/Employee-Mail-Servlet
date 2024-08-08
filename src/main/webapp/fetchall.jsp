<%@page import="employee_mail.dto.Employee"%>
<%@page import="org.apache.commons.codec.binary.Base64"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 0;
            padding: 20px;
            background-color: #f4f4f4;
        }
        h1 {
            color: #333;
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: #fff;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }
        th, td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
            font-weight: bold;
            color: #333;
        }
        tr:hover {
            background-color: #f5f5f5;
        }
        .btn {
            display: inline-block;
            padding: 8px 12px;
            background-color: #dc3545;
            color: #fff;
            text-decoration: none;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }
        .btn:hover {
            background-color: #c82333;
        }
        iframe {
            border: none;
            width: 100%;
            height: 300px;
        }
    </style>
</head>
<body>
    <h1>List Of All Employees</h1>
    
    <% List<Employee> list = (List<Employee>) session.getAttribute("list"); %>
    
    <table>
        <thead>
            <tr>
                <th>Full Name</th>
                <th>Email</th>
                <th>Mobile</th>
                <th>Resume</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <% for (Employee employee : list) { %>
            <tr>
                <td><%= employee.getName() %></td>
                <td><%= employee.getEmail() %></td>
                <td><%= employee.getMobile() %></td>
                <td>
                    <% String base64 = Base64.encodeBase64String(employee.getResume()); %>
                    <iframe src="data:application/pdf;base64,<%= base64 %>"></iframe>
                </td>
                <td>
                    <a href="delete?id=<%= employee.getId() %>" class="btn">Delete</a>
                </td>
            </tr>
            <% } %>
        </tbody>
    </table>
    <a href="/employee_mail"><button>Back</button></a>
</body>
</html>
