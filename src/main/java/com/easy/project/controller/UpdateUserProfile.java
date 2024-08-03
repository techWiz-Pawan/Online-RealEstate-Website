package com.easy.project.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.easy.project.model.User;

public class UpdateUserProfile extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve current session
        HttpSession session = request.getSession();
        User loggedInUser = (User) session.getAttribute("userDetails");

        if (loggedInUser == null) {
            // Redirect to login page if user is not logged in
            response.sendRedirect("login.jsp");
            return;
        }

        // Retrieve form data
        String name = request.getParameter("name");
        String email = loggedInUser.getEmailId(); // Use email from session
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String ageStr = request.getParameter("age");
        int age = 0;  // Default value for age

        // Validate and parse ageStr to integer
        if (ageStr != null && !ageStr.isEmpty()) {
            try {
                age = Integer.parseInt(ageStr);
            } catch (NumberFormatException e) {
                e.printStackTrace();
                request.setAttribute("errorMessage", "Invalid age format. Age must be a valid number.");
                request.getRequestDispatcher("UpdateUserProfile.jsp").forward(request, response);
                return; // Exit method if age parsing fails
            }
        } else {
            request.setAttribute("errorMessage", "Age parameter is missing.");
            request.getRequestDispatcher("UpdateUserProfile.jsp").forward(request, response);
            return; // Exit method if age parameter is missing
        }

        String gender = request.getParameter("gender");
        String mobile = request.getParameter("mobile");
        String address = request.getParameter("address");

        // Database connection details (replace with your database credentials)
        String jdbcURL = "jdbc:mysql://localhost:3306/easy?useSSL=false";
        String jdbcUsername = "root";
        String jdbcPassword = "password";

        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            // Establishing a database connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);

            // SQL query to update user profile
            String sql = "UPDATE user SET name=?, password=?, age=?, gender=?, mobile=?, address=? WHERE email=?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, password);
            preparedStatement.setInt(3, age);
            preparedStatement.setString(4, gender);
            preparedStatement.setString(5, mobile);
            preparedStatement.setString(6, address);
            preparedStatement.setString(7, email);

            // Execute the update statement
            int rowsUpdated = preparedStatement.executeUpdate();

            if (rowsUpdated > 0) {
                // Update successful
                response.sendRedirect("profileDisplay.jsp");
            } else {
                // Update failed
                request.setAttribute("errorMessage", "Failed to update profile");
                request.getRequestDispatcher("UpdateProfile.jsp").forward(request, response);
            }

        } catch (Exception e) {
            // Handle errors
            e.printStackTrace();
            request.setAttribute("errorMessage", "Database error: " + e.getMessage());
            request.getRequestDispatcher("UpdateProfile.jsp").forward(request, response);
        } finally {
            // Close resources
            try {
                if (preparedStatement != null) {
                    preparedStatement.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    }
}
