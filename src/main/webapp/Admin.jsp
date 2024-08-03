<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.easy.project.model.User" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>
        /* Custom styles */
        body {
            padding-top: 4.5rem; /* Adjust based on your navbar height */
        }

        .sidebar {
            position: fixed;
            top: 0;
            bottom: 0;
            left: 0;
            z-index: 100;
            padding: 48px 0 0;
            box-shadow: inset -1px 0 0 rgba(0, 0, 0, .1);
        }

        .sidebar-sticky {
            position: relative;
            top: 0;
            height: calc(100vh - 48px);
            padding-top: .5rem;
            overflow-x: hidden;
            overflow-y: auto;
            /* Scrollable contents if viewport is shorter than content. */
        }

        .dashboard-section {
            margin-bottom: 20px;
        }

        .admin-footer {
            position: absolute;
            bottom: 0;
            left: 20px;
        }
    </style>
</head>
<body>

<%
    Object userDetailsObj = session.getAttribute("userDetails");
    User adminUser = null; // Initialize outside the if block

    if (userDetailsObj instanceof User) {
        adminUser = (User) userDetailsObj;
    }
%>

<!-- Navigation bar -->
<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
    <a class="navbar-brand" href="#">Admin Dashboard</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#navbarCollapse" aria-controls="navbarCollapse"
            aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item"><a class="nav-link" href="SignOutController">Logout</a></li>
        </ul>
    </div>
</nav>

<div class="container-fluid">
    <div class="row">
        <!-- Sidebar -->
        <nav class="col-md-3 col-lg-2 d-md-block bg-light sidebar">
            <div class="sidebar-sticky">
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link active" href="Admin.jsp">Dashboard</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="FetchAdminData?email=<%= adminUser.getEmailId() %>">Admin Profile</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ViewAllUsersController">User Details</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ViewAllSellersController">Seller Details</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ShowProperties.jsp">Property Details</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="SellProperty.jsp">Sell Property</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ViewAllMessagesServlet">View Messages</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="todo.jsp">To-Do List</a>
                    </li>
                </ul>
                
                <!-- Admin Info -->
                <div class="admin-info admin-footer">
                    <h5>
                        Welcome,
                        <%= adminUser != null ? adminUser.getName() : "Guest" %>
                    </h5>
                </div>
                
            </div>
        </nav>

        <!-- Main content area -->
        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                <h1 class="h2">Dashboard</h1>
            </div>

            <!-- Management Sections -->
            <div class="row dashboard-section">
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Create Role</h5>
                            <p class="card-text">Create new roles for users.</p>
                            <a href="createRole.jsp" class="btn btn-primary">Create Role</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Manage Transactions</h5>
                            <p class="card-text">View and manage transactions.</p>
                            <a href="manageTransactions.jsp" class="btn btn-primary">Manage Transactions</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Vendor Details</h5>
                            <p class="card-text">Manage vendor details.</p>
                            <a href="manageVendors.jsp" class="btn btn-primary">Vendor Details</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row dashboard-section">
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Manage Users</h5>
                            <p class="card-text">View and manage user details.</p>
                            <br /> <a href="manageUsers.jsp" class="btn btn-primary">Manage Users</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Update Contact Info</h5>
                            <p class="card-text">Change contact information such as name, company, and phone number.</p>
                            <a href="updateContactInfo.jsp" class="btn btn-primary">Update Contact Info</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Manage Properties</h5>
                            <p class="card-text">View and manage property details.</p>
                            <a href="manageProperties.jsp" class="btn btn-primary">Manage Properties</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row dashboard-section">
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Buy Property</h5>
                            <p class="card-text">Buy properties listed for sale.</p>
                            <a href="buyProperty.jsp" class="btn btn-primary">Buy Property</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Contact Us</h5>
                            <p class="card-text">Get in touch with support.</p>
                            <a href="contactUs.jsp" class="btn btn-primary">Contact Us</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Recent Activity -->
            <div class="row dashboard-section">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Recent Activity</h5>
                            <p class="card-text">List recent activities and changes here.</p>
                            <!-- Example activity list -->
                            <ul>
                                <li>User John Doe registered.</li>
                                <li>Property "Sunny Apartment" was added.</li>
                                <!-- Add more activities as needed -->
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
