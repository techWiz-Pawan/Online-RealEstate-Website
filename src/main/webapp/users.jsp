<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<%@ page import="com.easy.project.model.User"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <title>User List</title>
    <link rel="stylesheet" href="path/to/bootstrap.css">
    <style>
        /* Custom CSS for table */
        .container {
            margin-top: 50px;
        }
        .table-buttons {
            width: 150px; /* Adjust width as needed */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>User List (Role ID: 2)</h2>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Email</th>
                    <th>Name</th>
                    <th>View Details</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<User> users = (List<User>) request.getAttribute("userList");
                    if (users != null) {
                        for (User user : users) {
                %>
                <tr>
                    <td><%= user.getEmailId() %></td>
                    <td><%= user.getName() %></td>
                    <td><a href="ViewUserDetails?email=<%= user.getEmailId() %>" class="btn btn-primary btn-sm">View</a></td>
                    <td><a href="DeleteUserDetails?email=<%= user.getEmailId() %>" class="btn btn-danger btn-sm">Delete</a></td>
                </tr>
                <% 
                        }
                    } else { 
                %>
                <tr>
                    <td colspan="4">No users found</td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</body>
</html>
