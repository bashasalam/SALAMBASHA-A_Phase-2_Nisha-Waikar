package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AirlinesController
 */
public class AirlinesController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		PrintWriter out = response.getWriter();
	try {
			
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				
				Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/flyawaydb","root","basha");
				Statement st=conn.createStatement();
				
				ResultSet rs=st.executeQuery("SELECT * from `airlines`"); 

			       
			       String pageName =request.getParameter("req");       
                   if(pageName==null){ 
                       pageName="header.jsp";// default page
                   }
                   request.getRequestDispatcher(pageName).include(request, response);

			       out.println("<table style='border:solid 1px black;width:50%;margin-left:auto;margin-right:auto;margin-top:20px;'>");
			       out.println("<tr style='border:solid 1px black;'>");
			       out.println("<th style='border:solid 1px black;width:5vw;'> S.No </th>");
			       out.println("<th style='border:solid 1px black;width:25vw;'> Flight Name </th>");
			   
			       out.println("</tr>");
				int i=0;
				while(rs.next())
				{ 
					
					
					
					 i++;
					 
					// String source = rs.getString("source");
					 String flightName = rs.getString("flight_name");
					 
					 
					 out.println("<tr style='border:solid 1px black;'>");
					out.println("<td style='border:solid 1px black;'>" + i + "</td>");
					
					out.println("<td style='border:solid 1px black; width:25vw;'>" + flightName + "</td>");
					
					 out.println("</tr>");
			
									
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
