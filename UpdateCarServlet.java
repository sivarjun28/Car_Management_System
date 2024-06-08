 package com.jsp.carmanagementsystem;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/UpdateCar")
public class UpdateCarServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int carId = Integer.parseInt(req.getParameter("carId"));

		Connection conn = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet_cardb?user=root&password=root");
			PreparedStatement pst = conn.prepareStatement("SELECT * FROM car WHERE carId=? ");
			pst.setInt(1, carId);

			ResultSet rs = pst.executeQuery();

			req.setAttribute("car", rs);
			RequestDispatcher rd = req.getRequestDispatcher("updateCar.jsp");
			rd.forward(req, resp);
			
			//when we use include it will go to jsp and it will come back to the the same file

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		finally {
			if(conn!=null) {
				
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}

}
