package com.easy.project.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

public class SignOutController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		if(session != null) {
			session.removeAttribute("userDetails");
			session.invalidate();
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("SignIn.jsp");
		
		/*
		 * 		These lines ensure that the browser does not cache the logout response, 
		 * forcing it to get a fresh copy of the login page:
		 */
		
		// Forces caches to obtain a new copy of the page from the origin server
		response.setHeader("Cache-Control", "no-cache");
		
		// Directs caches not to store the page under any circumstance
		response.setHeader("Cache-Control", "no-store");
		
		// This tells the browser that the response is already expired.
		response.setDateHeader("Expires", 0);	
		
		// his is an HTTP/1.0 backward-compatible header for controlling caching. (for older version)
		response.setHeader("Pragma", "no-cache");
		
		request.setAttribute("errorMessage", "You have successfully logged out.");
		dispatcher.forward(request, response);
	}

}
