package com.easy.project.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.sql.DriverManager;
import java.util.ArrayList;
import java.util.List;

import com.easy.project.model.User;

public class ViewAllUsersController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<User> users = new ArrayList<>();
		
		String url = "jdbc:mysql://localhost:3306/realEstateDB?useSSL=false";
		String username = "root";
		String password = "root";
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			String query = "SELECT * FROM user WHERE roleId = 2";
			
			PreparedStatement pstmt = con.prepareStatement(query);
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String email = rs.getString("email");
				String name = rs.getString("name");
				User type_user = new User();
				type_user.setEmailId(email);
				type_user.setName(name);
				
				users.add(type_user);
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		request.setAttribute("userList", users);
		request.getRequestDispatcher("users.jsp").forward(request, response);
		
	}

}
