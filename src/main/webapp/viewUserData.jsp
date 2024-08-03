<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.easy.project.model.User"%>
<!DOCTYPE html>
<html>
<head>
    <title>Seller Details</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h2>User Details</h2>
        <%
            User user = (User) request.getAttribute("user");
            if (user != null) {
        %>
        <table class="table table-bordered">
            <tr>
                <th>Email</th>
                <td><%= user.getEmailId() %></td>
            </tr>
            <tr>
                <th>Name</th>
                <td><%= user.getName() %></td>
            </tr>
            <tr>
                <th>Age</th>
                <td><%= user.getAge() %></td>
            </tr>
            <tr>
                <th>Gender</th>
                <td><%= user.getGender() %></td>
            </tr>
            <tr>
                <th>Address</th>
                <td><%= user.getAddress() %></td>
            </tr>
            <tr>
                <th>Mobile</th>
                <td><%= user.getMobile() %></td>
            </tr>
            
        </table>
        <%
            } else {
        %>
        <p>No user details found.</p>
        <%
            }
        %>
    </div>
</body>
</html>
