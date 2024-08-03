<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<%@ page import="com.easy.project.model.User"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <title>Seller List</title>
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
        <h2>Seller List (Role ID: 3)</h2>
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
                    List<User> sellers = (List<User>) request.getAttribute("sellerList");
                    for (User seller : sellers) {
                %>
                <tr>
                    <td><%= seller.getEmailId() %></td>
                    <td><%= seller.getName() %></td>
                    <td><a href="ViewSellerDetails?email=<%= seller.getEmailId() %>" class="btn btn-primary btn-sm">View</a></td>
                    <td><a href="DeleteSellerDetails?email=<%= seller.getEmailId() %>" class="btn btn-danger btn-sm">Delete</a></td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</body>
</html>
