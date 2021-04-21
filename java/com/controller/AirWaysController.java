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
import java.util.ArrayList;


public class AirWaysController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		
		try {
			
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				
				Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/flyawaydb","root","basha");
				Statement st=conn.createStatement();
				
				ResultSet rs=st.executeQuery("select * from source_destiny"); 
				 out.println("<!DOCTYPE html>");
			       out.println("<html>");
			       out.println("<head>");
			       out.println("<title>Airways</title>");
			       out.println("</head>");
			       out.println("<body>");
			       out.println("<table>");
			       out.println("<tr>");
			       out.println("<th> S.No </th>");
			       out.println("<th> Source </th>");
			       out.println("<th> Destination </th>");
			       out.println("</tr>");
				int i=0;
				while(rs.next())
				{ 
					 i++;
					 out.println("<tr>");
					out.println("<td>" + i + "</td");
					out.println("<td>" + rs.getString("source") + "</td");
					out.println("<td>" + rs.getString("destination") + "</td");
					
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
