package com.jsp.carmanagementsystem;

import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/addCar")
public class AddCarServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int carId = Integer.parseInt(req.getParameter("carId"));
		String carModel = req.getParameter("carModel");
		String carBrand = req.getParameter("carBrand");
		int carPrice = Integer.parseInt(req.getParameter("carPrice"));


		Connection conn = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet_cardb?user=root&password=root");

			PreparedStatement pst = conn.prepareStatement("INSERT INTO car VALUES(?,?,?,?)");
			pst.setInt(1, carId);
			pst.setString(2, carModel);
			pst.setString(3, carBrand);
			pst.setInt(4, carPrice);

			pst.execute();

			resp.sendRedirect("index.jsp");




		} catch (ClassNotFoundException | SQLException e) {

			e.printStackTrace();
		}
		finally {
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {

					e.printStackTrace(); 
				}
			}
		}

	} 

}
