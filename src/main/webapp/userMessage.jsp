<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />

<style>
    body {
        font-family: Arial, sans-serif;
    }
    .user-section, .property-section, .message-section {
        border: 2px solid #ccc;
        border-radius: 10px;
        margin-bottom: 20px;
        padding: 20px;
    }
    .user-section {
        background-color: #f8f9fa;
    }
    .property-section {
        background-color: #e9ecef;
    }
    .message-section {
        background-color: #dee2e6;
    }
    h3 {
        margin-bottom: 20px;
    }
    p {
        font-size: 1.1rem;
    }
    .header {
        background-color: #343a40;
        color: white;
        padding: 10px;
        text-align: center;
        margin-bottom: 30px;
    }
</style>

<title>User and Property Details</title>
</head>
<body>

<div class="header">
    <h1>User and Property Details</h1>
</div>

<div class="container">
    <!-- User Details Section -->
    <div class="user-section">
        <h3>User Details</h3>
        <p><strong>Name:</strong> <%= request.getAttribute("name") %></p>
        <p><strong>Email:</strong> <%= request.getAttribute("email") %></p>
        <p><strong>Mobile:</strong> <%= request.getAttribute("mobile") %></p>
        <p><strong>Address:</strong> <%= request.getAttribute("address") %></p>
    </div>

    <!-- Property Details Section -->
    <div class="property-section">
        <h3>Property Details</h3>
        <p><strong>Property ID:</strong> <%= request.getAttribute("propertyId") %></p>
        <p><strong>Property Name:</strong> <%= request.getAttribute("propertyName") %></p>
        <p><strong>Price:</strong> ₹<%= request.getAttribute("price") %></p>
        <p><strong>Area:</strong> <%= request.getAttribute("area") %> sq ft</p>
        <p><strong>Bedrooms:</strong> <%= request.getAttribute("bedrooms") %></p>
        <p><strong>Bathrooms:</strong> <%= request.getAttribute("bathrooms") %></p>
        <p><strong>Rent or Sell:</strong> <%= request.getAttribute("rentOrSell") %></p>
        <p><strong>Property Type:</strong> <%= request.getAttribute("propertyType") %></p>
        <p><strong>Description:</strong> <%= request.getAttribute("description") %></p>
        <p><strong>Locality:</strong> <%= request.getAttribute("locality") %></p>
        <p><strong>City:</strong> <%= request.getAttribute("city") %></p>
        <p><strong>State:</strong> <%= request.getAttribute("state") %></p>
        <p><strong>Country:</strong> <%= request.getAttribute("country") %></p>
        <p><strong>Google Map Link:</strong> <a href="<%= request.getAttribute("googleMapLink") %>" target="_blank">View Map</a></p>
    </div>

    <!-- Message Section -->
    <div class="message-section">
        <h3>Message</h3>
        <p><strong>Message:</strong> <%= request.getAttribute("message") %></p>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>
	