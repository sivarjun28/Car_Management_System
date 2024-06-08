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

@WebServlet("/SaveUpdateCar")
public class SaveUpdatedCarServlet extends HttpServlet{
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
			
			//Updating the car details 
			PreparedStatement pst1 = conn.prepareStatement("UPDATE car SET carModel= ?,carBrand=?,carPrice=? WHERE carId=?");
			pst1.setString(1, carModel);
			pst1.setString(2, carBrand);
			pst1.setInt(3, carPrice);
			pst1.setInt(4, carId);
			pst1.executeUpdate();
			
			//Display All Updated Cars
			PreparedStatement pst2 = conn.prepareStatement("SELECT * FROM car");
			ResultSet rs = pst2.executeQuery();
			
			
			req.setAttribute("carList", rs);
			RequestDispatcher rd = req.getRequestDispatcher("DisplayAllCars.jsp");
			rd.forward(req, resp);
			
			
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		finally {
			if(conn!=null) {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}

	}
}
