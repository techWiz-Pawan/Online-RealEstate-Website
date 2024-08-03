package com.easy.project.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.sql.*;

import com.easy.project.model.Property;

public class SearchPropertyController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String locality = request.getParameter("locality");
        String rentOrSell = request.getParameter("rentOrSell");
        String propertyType = request.getParameter("propertyType");

        List<Property> propertyList = new ArrayList<>();

        String JDBC_url = "jdbc:mysql://localhost:3306/realEstateDB?useSSL=false";
        String username = "root";
        String password = "root";

        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(JDBC_url, username, password);

            String query = "SELECT * FROM propertyDetails WHERE locality = ? AND rentOrSell = ? AND propertyType = ?";
            pstmt = con.prepareStatement(query);

            pstmt.setString(1, locality);
            pstmt.setString(2, rentOrSell);
            pstmt.setString(3, propertyType);

            rs = pstmt.executeQuery();

            while (rs.next()) {
                Property property = new Property();
                property.setPropertyId(rs.getString("propertyId"));
                property.setPropertyName(rs.getString("propertyName"));
                property.setLocality(rs.getString("locality"));
                property.setCity(rs.getString("city"));
                property.setState(rs.getString("state"));
                property.setCountry(rs.getString("country"));
                property.setArea(rs.getDouble("area"));
                property.setPrice(rs.getDouble("price"));
                property.setPropertyType(rs.getString("propertyType"));
                property.setIsAvailable(rs.getString("isAvailable"));
                property.setDescription(rs.getString("description"));
                Blob blob = rs.getBlob("imageData");
                if (blob != null) {
                    property.addImage(blob.getBytes(1, (int) blob.length()));
                }
                propertyList.add(property);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        request.setAttribute("propertyList", propertyList);
        request.getRequestDispatcher("seePropertyList.jsp").forward(request, response);
    }
}
