package com.easy.project.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.*;

public class ViewMessageController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static final String JDBC_URL = "jdbc:mysql://localhost:3306/realEstateDB?useSSL=false";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "root";
	
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
        // Get parameters from the form submission
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String mobile = request.getParameter("mobile");
        String message = request.getParameter("message");

        // Validate input (You can add more validation as per your requirements)

        // Save the data to the database
        Connection conn = null;
        PreparedStatement pstmt = null;
        try {
            // Connect to MySQL database
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);

            // SQL query to insert data into messages table
            String sql = "INSERT INTO messages (name, email, mobile, message) VALUES (?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, name);
            pstmt.setString(2, email);
            pstmt.setString(3, mobile);
            pstmt.setString(4, message);

            // Execute the query
            int rowsAffected = pstmt.executeUpdate();
            if (rowsAffected > 0) {
                // Data inserted successfully, forward to viewMessage.jsp
                request.setAttribute("name", name);
                request.setAttribute("email", email);
                request.setAttribute("mobile", mobile);
                request.setAttribute("message", message);

                RequestDispatcher dispatcher = request.getRequestDispatcher("viewMessage.jsp");
                dispatcher.forward(request, response);
            } else {
                // Error handling, redirect to an error page or display a message
                response.sendRedirect("error.jsp");
            }
        } catch (ClassNotFoundException | SQLException ex) {
            ex.printStackTrace(); // Handle the exception in a proper way
        } finally {
            // Close PreparedStatement and Connection
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    }

}
