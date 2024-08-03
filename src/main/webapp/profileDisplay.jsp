<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Profile</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        .profile-container {
            padding: 20px;
            background-color: #171921;
            color: #fff;
        }
        .profile-card {
            background-color: #1d1f27;
            color: #f8f9fa;
        }
        .profile-header {
            text-align: center;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="container profile-container">
        <div class="card profile-card">
            <div class="card-body">
                <div class="profile-header">
                    <h2>User Profile</h2>
                </div>
                <%
                    HttpSession sessionn = request.getSession();
                    String userEmail = (String) sessionn.getAttribute("userEmail");

                    if (userEmail == null) {
                        response.sendRedirect("login.jsp");
                    } else {
                        Connection connection = null;
                        PreparedStatement statement = null;
                        ResultSet resultSet = null;

                        try {
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/yourDatabaseName", "yourUsername", "yourPassword");

                            String query = "SELECT name, email, age, gender, mobile, address FROM users WHERE email = ?";
                            statement = connection.prepareStatement(query);
                            statement.setString(1, userEmail);
                            resultSet = statement.executeQuery();

                            if (resultSet.next()) {
                                String name = resultSet.getString("name");
                                String email = resultSet.getString("email");
                                int age = resultSet.getInt("age");
                                String gender = resultSet.getString("gender");
                                String mobile = resultSet.getString("mobile");
                                String address = resultSet.getString("address");
                %>
                                <p><strong>Name:</strong> <%= name %></p>
                                <p><strong>Email:</strong> <%= email %></p>
                                <p><strong>Age:</strong> <%= age %></p>
                                <p><strong>Gender:</strong> <%= gender %></p>
                                <p><strong>Mobile:</strong> <%= mobile %></p>
                                <p><strong>Address:</strong> <%= address %></p>
                <%
                            } else {
                                out.println("<p>Error retrieving user details.</p>");
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                            out.println("<p>Error: " + e.getMessage() + "</p>");
                        } finally {
                            try {
                                if (resultSet != null) resultSet.close();
                                if (statement != null) statement.close();
                                if (connection != null) connection.close();
                            } catch (SQLException e) {
                                e.printStackTrace();
                            }
                        }
                    }
                %>
                <div class="text-center">
                    <a href="updateProfile.jsp" class="btn btn-primary">Edit Profile</a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
