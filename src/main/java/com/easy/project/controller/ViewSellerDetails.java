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

import com.easy.project.model.User;

public class ViewSellerDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		User user = null;

		String JDBC_url = "jdbc:mysql://localhost:3306/realEstateDB?useSSL=false";
		String username = "root";
		String password = "root";
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(JDBC_url, username, password);
			
			String query = "SELECT * FROM user WHERE email = ?";
			PreparedStatement pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, email);
			
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				user = new User();
				user.setEmailId(rs.getString("email"));
				user.setName(rs.getString("name"));
				user.setAddress(rs.getString("address"));
				user.setAge(rs.getInt("age"));
				user.setGender(rs.getString("gender"));
				user.setMobile(rs.getString("mobile"));
				user.setPassword(rs.getString("password"));
			}else {
				response.sendRedirect("404.jsp");
			}
			
			rs.close();
			pstmt.close();
			con.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		request.setAttribute("user", user);
		request.getRequestDispatcher("viewUserData.jsp").forward(request, response);
		
	}

}
