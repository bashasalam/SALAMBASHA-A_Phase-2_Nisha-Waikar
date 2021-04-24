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


public class FlightListController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	PrintWriter out = response.getWriter();
		
		try {
			
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				
				Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/flyawaydb","root","basha");
				Statement st=conn.createStatement();
				
				ResultSet rs=st.executeQuery("select * from flight_list"); 

			       
			       String pageName =request.getParameter("req");       
                   if(pageName==null){ 
                       pageName="header.jsp";// default page
                   }
                   request.getRequestDispatcher(pageName).include(request, response);

			       out.println("<table style='border:solid 1px black;width:75%;margin-left:auto;margin-right:auto;margin-top:20px;'>");
			       out.println("<tr style='border:solid 1px black;'>");
			       out.println("<th style='border:solid 1px black;width:5vw;'> S.No </th>");
			       out.println("<th style='border:solid 1px black;width:25vw;'> Flight Id </th>");
			       out.println("<th style='border:solid 1px black;width:25vw;'> Flight Name </th>");
			       out.println("<th style='border:solid 1px black;width:25vw;'> From </th>");
			       out.println("<th style='border:solid 1px black;width:25vw;'> Destination </th>");
			       out.println("<th style='border:solid 1px black;width:25vw;'> Flight Date </th>");
			       out.println("<th style='border:solid 1px black;width:25vw;'> Flight Time </th>");
			       out.println("<th style='border:solid 1px black;width:25vw;'> Ticket Price </th>");
			       out.println("</tr>");
				int i=0;
				while(rs.next())
				{ 
					
					
					
					 i++;
					 
					 int flightID = rs.getInt("flight_id");
					 String flightName = rs.getString("flight_name");
					 String source = rs.getString("source");
					 String destination = rs.getString("destination");
					 String flightDay = rs.getString("day");
					 String flightTime = rs.getString("time");
					 Double TicketPrice = rs.getDouble("ticket_price");
					// String destination = rs.getString("destination");
					 
					 
					 
					 out.println("<tr style='border:solid 1px black;'>");
					out.println("<td style='border:solid 1px black;'>" + i + "</td>");
					out.println("<td style='border:solid 1px black; width:25vw;'>" + flightID + "</td>");
					out.println("<td style='border:solid 1px black; width:25vw;'>" + flightName + "</td>");
					out.println("<td style='border:solid 1px black; width:25vw;'>" + source + "</td>");
					out.println("<td style='border:solid 1px black; width:25vw;'>" + destination + "</td>");
					out.println("<td style='border:solid 1px black; width:25vw;'>" + flightDay + "</td>");
					out.println("<td style='border:solid 1px black; width:25vw;'>" + flightTime + "</td>");
					out.println("<td style='border:solid 1px black; width:25vw;'>" + TicketPrice + "</td>");
					
					 out.println("</tr>");
										
				}
				
				out.print("</table>");
				
				out.println("<div>");
				
				out.print("<a href='adminPage.jsp'><button class = 'btn btn-primary'> Back </button> ");
				
				out.println("</div>");
				
				
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
