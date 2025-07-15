package com.pizza.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pizza.dao.DBConnection;


public class RegisterServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String contact = request.getParameter("contact");
		String address = request.getParameter("address");

		try (Connection conn = DBConnection.getConnection()) {
			String sql = "INSERT INTO users (name, email, password, contact, address) VALUES (?, ?, ?, ?, ?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, password);
			ps.setString(4, contact);
			ps.setString(5, address);

			int rows = ps.executeUpdate();
			if (rows > 0) {
				response.sendRedirect("jsp/login.jsp");
			} else {
				response.sendRedirect("register.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("register.jsp");
		}
	}
}
