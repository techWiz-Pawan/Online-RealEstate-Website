package com.easy.project.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.easy.project.model.Message;

public class ViewAllMessagesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static final String JDBC_URL = "jdbc:mysql://localhost:3306/realEstateDB?useSSL=false";
	private static final String JDBC_USER = "root";
	private static final String JDBC_PASSWORD = "root";

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<Message> messageList = new ArrayList<>();

        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
            stmt = conn.createStatement();
            String sql = "SELECT name, email, mobile, message FROM messages";
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                String name = rs.getString("name");
                String email = rs.getString("email");
                String mobile = rs.getString("mobile");
                String message = rs.getString("message");
                Message msg = new Message(name, email, mobile, message);
                messageList.add(msg);
            }

            request.setAttribute("messageList", messageList);

            RequestDispatcher dispatcher = request.getRequestDispatcher("ViewAllMessages.jsp");
            dispatcher.forward(request, response);

        } catch (ClassNotFoundException | SQLException ex) {
            ex.printStackTrace(); // Handle the exception in a proper way
        } finally {
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
		
	}

}
