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

public class UserRegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private String jdbcURL = "jdbc:mysql://localhost:3306/realEstateDB?useSSL=false";
	private String username = "root";
	private String password = "root";
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User user = new User();
		user.setEmailId(request.getParameter("userEmail"));
		user.setPassword(request.getParameter("password"));
		
		String confirmPassword = request.getParameter("confirmPassword");
		
		user.setName(request.getParameter("userName"));
		user.setAge(Integer.parseInt(request.getParameter("age")));
		user.setGender(request.getParameter("gender"));
		user.setMobile(request.getParameter("userPhone"));
		user.setAddress(request.getParameter("address"));
		user.setRoleId(Integer.parseInt(request.getParameter("roleId")));
		
		String userRole = null;
		if(Integer.parseInt(request.getParameter("roleId")) == 1) {
			userRole = "Admin";
		}else if (Integer.parseInt(request.getParameter("roleId")) == 2) {
			userRole = "Buyer";
		} else if(Integer.parseInt(request.getParameter("roleId")) == 3) {
			userRole = "Seller";
		}
		
		String targetPage = "";
		String textMessage = null;
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(jdbcURL, username, password);
			
			if(!user.getPassword().equals(confirmPassword)) {
				targetPage = "/SignUp.jsp";
				textMessage = "Password Mismatched";
			}else if(isUserExist(con, user)) {
				targetPage = "/SignUp.jsp";
				textMessage = "Email Id already exists...";
			}else {
				addUser(con, user);
				HttpSession session = request.getSession();
				session.setAttribute("userDetails", user);
				
				textMessage = null;
				targetPage = "/index.jsp";
			}
		}catch(SQLException e) {
			e.printStackTrace();
			textMessage = "Database Error : " + e.getMessage();
			targetPage = "/SignUp.jsp";
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
			textMessage = "JDBC Driver not found: " + e.getMessage();
			targetPage = "/SignUp.jsp";
		}
		
		if(userRole.equals("Admin")) {
			targetPage = "/Admin.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(targetPage);
			response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
			response.setDateHeader("Expires", 0);
			response.setHeader("Pragma", "no-cache");
			
			request.setAttribute("errorMessage", textMessage);
			dispatcher.forward(request, response);
		}else {
			
			RequestDispatcher dispatcher = request.getRequestDispatcher(targetPage);
			response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
			response.setDateHeader("Expires", 0);
			response.setHeader("Pragma", "no-cache");
			
			request.setAttribute("errorMessage", textMessage);
			dispatcher.forward(request, response);
		}
		
	}
	
	private boolean isUserExist(Connection con, User user) throws SQLException {
		String query = "Select * from user WHERE email = ?";
		PreparedStatement pstmt = con.prepareStatement(query);
		
		pstmt.setString(1, user.getEmailId());
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()) {
			user.setName(rs.getString("name"));
			user.setAge(rs.getInt("age"));
			user.setGender(rs.getString("gender"));
			user.setAddress(rs.getString("address"));
			
			return true;
		}
		return false;
	}
	
	private void addUser(Connection con, User user) throws SQLException {
		String query = "INSERT into user (email, password, name, age, gender, address, mobile, roleId) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
		
		PreparedStatement pstmt = con.prepareStatement(query);
		pstmt.setString(1, user.getEmailId());
		pstmt.setString(2, user.getPassword());
		pstmt.setString(3, user.getName());
		pstmt.setInt(4, user.getAge());
		pstmt.setString(5, user.getGender());
		pstmt.setString(6, user.getAddress());
		pstmt.setString(7, user.getMobile());
		pstmt.setInt(8, user.getRoleId());
		
		pstmt.executeUpdate();
		
	}

}






















