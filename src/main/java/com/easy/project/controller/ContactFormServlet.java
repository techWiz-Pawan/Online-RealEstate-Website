package com.easy.project.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ContactFormServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    String url = "jdbc:mysql://localhost:3306/realEstateDB?useSSL=false";
    String username = "root";
    String password = "root";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int propertyId = Integer.parseInt(request.getParameter("propertyId"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String mobile = request.getParameter("mobile");
        String message = request.getParameter("message");

        Connection con = null;
        PreparedStatement pstmt = null;
        PreparedStatement Upstmt = null;
        ResultSet rs = null;
        ResultSet Urs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, username, password);

            // Retrieve property details
            String query = "SELECT * FROM propertyDetails WHERE propertyId = ?";
            pstmt = con.prepareStatement(query);
            pstmt.setInt(1, propertyId);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                request.setAttribute("propertyId", rs.getInt("propertyId"));
                request.setAttribute("propertyName", rs.getString("propertyName"));
                request.setAttribute("price", rs.getDouble("price"));
                request.setAttribute("area", rs.getDouble("area"));
                request.setAttribute("bedrooms", rs.getInt("bedrooms"));
                request.setAttribute("bathrooms", rs.getInt("bathrooms"));
                request.setAttribute("rentOrSell", rs.getString("rentOrSell"));
                request.setAttribute("propertyType", rs.getString("propertyType"));
                request.setAttribute("description", rs.getString("description"));
                request.setAttribute("locality", rs.getString("locality"));
                request.setAttribute("city", rs.getString("city"));
                request.setAttribute("state", rs.getString("state"));
                request.setAttribute("country", rs.getString("country"));
                request.setAttribute("googleMapLink", rs.getString("googleMapLink"));
            } else {
                response.sendRedirect("404.jsp");
                return;
            }

            // Retrieve user details
            String Uquery = "SELECT * FROM user WHERE email = ?";
            Upstmt = con.prepareStatement(Uquery);
            Upstmt.setString(1, email);
            Urs = Upstmt.executeQuery();

            if (Urs.next()) {
                request.setAttribute("name", Urs.getString("name"));
                request.setAttribute("email", Urs.getString("email"));
                request.setAttribute("mobile", Urs.getString("mobile"));
                request.setAttribute("address", Urs.getString("address"));
                request.setAttribute("message", message);

                RequestDispatcher dispatcher = request.getRequestDispatcher("userMessage.jsp");
                dispatcher.include(request, response);
            } else {
                response.sendRedirect("404.jsp");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        } finally {
            try {
                if (rs != null) rs.close();
                if (Urs != null) Urs.close();
                if (pstmt != null) pstmt.close();
                if (Upstmt != null) Upstmt.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
