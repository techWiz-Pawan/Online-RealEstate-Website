package com.easy.project.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;
import java.io.InputStream;
import java.sql.*;


@MultipartConfig
public class SellPropertyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	// MySQL database connection details
		private String jdbcURL = "jdbc:mysql://localhost:3306/realEstateDB?useSSL=false";
		private String username = "root";
		private String password = "root";
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Retrieve property details from 'Sell property form'
		 
		 String propertyName = request.getParameter("propertyName");
		 double area = Double.parseDouble(request.getParameter("Area"));
		 double price = Double.parseDouble(request.getParameter("Price"));
		 int bedrooms = Integer.parseInt(request.getParameter("bedrooms"));
		 int bathrooms = Integer.parseInt(request.getParameter("bathrooms"));
		 String locality = request.getParameter("locality");
		 String city = request.getParameter("city");
		 String state = request.getParameter("state");
		 String country = request.getParameter("country");
		 String description = request.getParameter("description");
		 String PropertyType = request.getParameter("type");
		 String rentOrSell = request.getParameter("rentOrSell");
		 String isAvailable = request.getParameter("isAvailable"); 
		 
		 // Process uploaded images
		 Part filePart = request.getPart("images");
		 InputStream imageInputStream = filePart.getInputStream();
		 byte[] imageData = imageInputStream.readAllBytes();
		 
		 String googleMapLink = request.getParameter("mapSrc");
		 
		 
		 // Construct the SQL queries
		 String query = "INSERT into propertyDetails " 
				 		+ "(propertyName, area, price, bedrooms, bathrooms, locality, city, state, country, description, propertyType, rentOrSell, isAvailable, imageData, googleMapLink) "
				 		+ " values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		 Connection con = null;
		 try {
			 Class.forName("com.mysql.cj.jdbc.Driver");
			 con = DriverManager.getConnection(jdbcURL, username, password);
			 
			// Create prepared statement with auto-generated keys for retrieving propertyId
			 PreparedStatement pstmt = con.prepareStatement(query, PreparedStatement.RETURN_GENERATED_KEYS);
			 
			 // set parameters
			 pstmt.setString(1, propertyName);
			 pstmt.setDouble(2, area);
			 pstmt.setDouble(3, price);
			 
			 pstmt.setInt(4, bedrooms);
			 pstmt.setInt(5, bathrooms);
			 
			 pstmt.setString(6, locality);
			 pstmt.setString(7, city);
			 pstmt.setString(8, state);
			 pstmt.setString(9, country);
			 pstmt.setString(10, description);
			 pstmt.setString(11, PropertyType);
			 pstmt.setString(12, rentOrSell);
			 pstmt.setString(13, isAvailable);
			 pstmt.setBytes(14, imageData);
			 
			 pstmt.setString(15, googleMapLink);
			 
			 
			 // execute the insert query
			 int rowAffected = pstmt.executeUpdate();
			 if(rowAffected > 0) {
				 ResultSet rs = pstmt.getGeneratedKeys();
				 if(rs.next()) {
					 int propertyId = rs.getInt(1);
					 response.sendRedirect(request.getContextPath() + "/GetPropertyDetails?propertyId=" + propertyId);
				 }
			 }else {
				 response.getWriter().println("Failed to insert property details.");
			 }
			 
			 
		 }catch(Exception e) {
			 e.printStackTrace();
		 }
	 
	}

}


















