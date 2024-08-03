package com.easy.project.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.easy.project.model.User;

public class ViewAllSellersController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> sellers = new ArrayList<>();
        
        String url = "jdbc:mysql://localhost:3306/realEstateDB?useSSL=false";
        String username = "root";
        String password = "root";
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, username, password);
            String query = "SELECT email, name FROM user WHERE roleId = 3";
            
            PreparedStatement pstmt = con.prepareStatement(query);
            ResultSet rs = pstmt.executeQuery();
            
            while (rs.next()) {
                String email = rs.getString("email");
                String name = rs.getString("name");
                
                User type_seller = new User();
                type_seller.setEmailId(email);
                type_seller.setName(name);
                
                sellers.add(type_seller);
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        request.setAttribute("sellerList", sellers);
        request.getRequestDispatcher("Sellers.jsp").forward(request, response);
    }
}
