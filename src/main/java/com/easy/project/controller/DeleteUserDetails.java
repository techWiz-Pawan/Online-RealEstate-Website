package com.easy.project.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

public class DeleteUserDetails extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");

        String JDBC_URL = "jdbc:mysql://localhost:3306/realEstateDB?useSSL=false";
        String USERNAME = "root";
        String PASSWORD = "root";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection con = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);
                 PreparedStatement pstmt = con.prepareStatement("DELETE FROM user WHERE email = ?")) {
                 
                pstmt.setString(1, email);
                int affected = pstmt.executeUpdate();

                if (affected > 0) {
                    response.sendRedirect("users.jsp?"); // Redirect to the users.jsp with a success parameter
                } else {
                    response.sendRedirect("404.jsp"); // Redirect to a 404 page if no user was deleted
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp"); // Redirect to a generic error page in case of exception
        }
    }
}
