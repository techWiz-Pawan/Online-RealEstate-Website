	package com.easy.project.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.sql.DriverManager;

public class PropertyDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	String url = "jdbc:mysql://localhost:3306/realEstateDB?useSSL=false";
	String username = "root";
	String password = "root";

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int propertyId = Integer.parseInt(request.getParameter("propertyId"));
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			String query = "SELECT * FROM propertyDetails WHERE propertyId = ?";
			
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setInt(1, propertyId);
			
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
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
                
                RequestDispatcher dispatcher = request.getRequestDispatcher("PropertyDetails.jsp");
                dispatcher.include(request, response);
                
                rs.close();
                pstmt.close();
                con.close();
                
			}else {
				response.sendRedirect("404.jsp");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
