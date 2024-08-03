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


public class FetchAdminData extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");

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
			if (rs.next()) {
				request.setAttribute("email", rs.getString("email"));
				request.setAttribute("password", rs.getString("password"));
				request.setAttribute("name", rs.getString("name"));
				request.setAttribute("mobile", rs.getString("mobile"));
				request.setAttribute("gender", rs.getString("gender"));
				request.setAttribute("age", rs.getString("age"));
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("admProfile.jsp");
                dispatcher.include(request, response);
                
                rs.close();
                pstmt.close();
                con.close();

			} else {
				response.sendRedirect("404.jsp");
			}

			rs.close();
			pstmt.close();
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
