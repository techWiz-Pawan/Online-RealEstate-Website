package com.easy.project.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.*;

import com.easy.project.model.User;

public class SignInController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private String jdbcURL = "jdbc:mysql://localhost:3306/realEstateDB?useSSL=false";
    private String username = "root";
    private String password = "root";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = new User();
        user.setEmailId(request.getParameter("loginEmail"));
        user.setPassword(request.getParameter("loginPassword"));

        String roleParam = request.getParameter("role");
        System.out.println("role : " + roleParam);

        try {
            user.setRoleId(Integer.parseInt(roleParam));
        } catch (NumberFormatException | NullPointerException e) {
            request.setAttribute("errorMessage", "Invalid role selection.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/SignIn.jsp");
            dispatcher.forward(request, response);
            return;
        }

        String targetPage = "";
        String messageText = null;

        try {
            if (isUserExist(user)) {
                HttpSession session = request.getSession();
                session.setAttribute("userDetails", user);  // Store the user details in the session

                // Determine the target page based on the role
                if (roleParam.equals("1")) {
                    targetPage = "/Admin.jsp";
                } else {
                    targetPage = "/index.jsp";  // Adjust the target page for non-admin roles
                }
            } else {
                messageText = "Sorry! EmailId or Password does not match.";
                targetPage = "/SignIn.jsp";
            }
        } catch (Exception e) {
            e.printStackTrace();
            messageText = "Database error occurred. Please try again later.";
            targetPage = "/SignIn.jsp";
        }

        request.setAttribute("errorMessage", messageText);
        RequestDispatcher dispatcher = request.getRequestDispatcher(targetPage);
        dispatcher.forward(request, response);
    }

    private boolean isUserExist(User user) throws SQLException {
        boolean userFound = false;
        Connection con = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(jdbcURL, username, password);

            String query = "SELECT * FROM user WHERE email = ? AND password = ? AND roleId = ?";
            PreparedStatement pstmt = con.prepareStatement(query);

            pstmt.setString(1, user.getEmailId());
            pstmt.setString(2, user.getPassword());
            pstmt.setInt(3, user.getRoleId());

            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                user.setName(rs.getString("name"));
                user.setAge(rs.getInt("age"));
                user.setGender(rs.getString("gender"));
                user.setAddress(rs.getString("address"));
                user.setMobile(rs.getString("mobile"));
                userFound = true;  // User is found and data is populated
            }

            rs.close();
            pstmt.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return userFound;
    }
}
