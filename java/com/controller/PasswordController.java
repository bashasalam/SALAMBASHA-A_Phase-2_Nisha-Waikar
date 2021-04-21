package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PasswordController
 */
public class PasswordController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userName=request.getParameter("userName");
		String currentPassword=request.getParameter("currentPassword");
		String newPassword1=request.getParameter("newPassword1");
		//String newPassword2=request.getParameter("newPassword2");
		
		PrintWriter out = response.getWriter();
		
//		out.println(" username is " + userName);
//		out.println(" currentPassword is " + currentPassword);
		//out.println(" newPassword1 is " + newPassword1);
		//out.println(" newPassword2 is " + newPassword2);
		
		try {
			
		
			try {
				Class.forName("com.mysql.jdbc.Driver");
				
				
				Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/flyawaydb","root","basha");
				Statement st=conn.createStatement();
				
				ResultSet rs=st.executeQuery("select * from admin_table where user_name='"+userName+"' and password='"+currentPassword+"'");
				
			
				
				
				if(rs.next())
				{
					//out.print(rs.);
					try{
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/flyawaydb","root","basha");
												
						PreparedStatement ps=con.prepareStatement("update admin_table set password='"+newPassword1+"' WHERE user_name ='"+userName+"'");
						ps.executeUpdate();
						
							out.println("<div style='margin:100px; height=200px; width:200px;backgroun-color:#F0F0F0;'>");
							
							out.println("<h3 style='color:green;'>PassWord Updated Successfully</h3>");				
							
							
							out.print("</div>");
							
							out.println("<a href='adminPage.jsp'> <button class='btn btn-primary'> AdminPage</button></a>");
							
							
						
					}catch(SQLException e){
						e.printStackTrace();
					}
					
				
					
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


