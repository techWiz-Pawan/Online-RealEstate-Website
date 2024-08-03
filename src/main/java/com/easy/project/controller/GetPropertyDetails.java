package com.easy.project.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

public class GetPropertyDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
		
	private String jdbcURL = "jdbc:mysql://localhost:3306/realEstateDB?useSSl=false";
	private String username = "root";
	private String password = "root";
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String propertyId = request.getParameter("propertyId");
		
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(jdbcURL, username, password);
			
			String Query = "SELECT * FROM propertyDetails WHERE propertyId = ?";
			PreparedStatement pstmt = con.prepareStatement(Query);
			
			pstmt.setInt(1, Integer.parseInt(propertyId));
			
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				request.setAttribute("propertyId", rs.getInt("propertyId"));
				request.setAttribute("propertyName", rs.getString("propertyName"));
				request.setAttribute("area", rs.getDouble("area"));
				request.setAttribute("price", rs.getDouble("price"));
				
				request.setAttribute("bedrooms", rs.getInt("bedrooms"));
				request.setAttribute("bathrooms", rs.getInt("bathrooms"));
				
				request.setAttribute("locality", rs.getString("locality"));
				request.setAttribute("city", rs.getString("city"));
				request.setAttribute("state", rs.getString("state"));
				request.setAttribute("country", rs.getString("country"));
				request.setAttribute("description", rs.getString("description"));
				request.setAttribute("propertyType", rs.getString("propertyType"));
				request.setAttribute("rentOrSell", rs.getString("rentOrSell"));
				request.setAttribute("isAvailable", rs.getString("isAvailable"));
				request.setAttribute("imageData", rs.getBytes("imageData"));
				
				request.setAttribute("googleMapLink", rs.getString("googleMapLink"));
				System.out.println(rs.getString("googleMapsLink"));
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("/PropertyDetails.jsp").forward(request, response);
	}

}
