package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AdminController
 */
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doPost(request,response);
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userName=request.getParameter("userName");
		String password=request.getParameter("password");
		HttpSession session=request.getSession();
		session.setAttribute("userName", userName);
		
		
		try {
		
			try {
				Class.forName("com.mysql.jdbc.Driver");
				//Connection con=DriverManager.getConnection("jdbc:mysql://aa1y1ghile0p7t1.cv2uqxokjyuy.us-east-1.rds.amazonaws.com:3306/flayawaydb","root","basha");
				
				Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/flyawaydb","root","basha");
				Statement st=conn.createStatement();
				ResultSet rs=st.executeQuery("select * from `admin_table` where `user_name`='"+userName+"' and `password`='"+password+"'");
				
				
				if(rs.next())
				{
					
					response.sendRedirect("adminPage.jsp");
					
				}
				else
				{
					response.sendRedirect("admin.jsp?credencials=invalid");
				}
				
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		
		
	}

}
