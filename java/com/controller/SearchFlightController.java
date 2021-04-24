package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.FlightList;

import java.util.Date;

/**
 * Servlet implementation class SearchFlightController
 */
public class SearchFlightController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String source = request.getParameter("source");
		String destination = request.getParameter("destination");
		
		String date = (String) request.getParameter("date");
		
		int seats = Integer.parseInt(request.getParameter("quantity"));
		
		//SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		
		
		Date date1 = null;
		String flightDay = null;
		
	    try {
//			out.print(source);
//			out.print(destination);
//			out.print(date);
//			out.print(noOfPersons);
		date1 = new SimpleDateFormat("MM/dd/yyyy").parse(date);
		int day = date1.getDay();
	//	out.print(date1.getDate());
		//out.print("Assalaamu alaikkum");
		//out.print(day);
		
				
		 switch (day) {
	      case 1:
	        System.out.println("Monday");
	        flightDay = "Monday";
	        break;
	      case 2:
	        System.out.println("Tuesday");
	        flightDay = "Tuesday";
	        break;
	      case 3:
	        System.out.println("Wednesday");
	        flightDay = "Wednesday";
	        
	        break;
	      case 4:
	        System.out.println("Thursday");
	        flightDay = "Thursday";
	        break;
	      case 5:
	        System.out.println("Friday");
	        flightDay = "Friday";
	        break;
	      case 6:
	        System.out.println("Saturday");
	        flightDay = "Saturday";
	        break;
	      case 7:
	        System.out.println("Sunday");
	        flightDay = "Sunday";
	        break;
	    }
		 
		 try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/flyawaydb","root","basha");
			Statement st=conn.createStatement();
			
			ResultSet rs=st.executeQuery("SELECT * from `flight_list` WHERE  `source`= '"+source+"' and "
					+ "`destination`='"+destination+"'");
			
//	int i = 0;
			//if(rs.next()) {
			while(rs.next()) {
			//	i++;
				 int flightId = rs.getInt("flight_id");
				 String flightName = rs.getString("flight_name");
				String flight_day = rs.getString("day");
				 String flightTime = rs.getString("time");
				 Double ticketPrice = rs.getDouble("ticket_price");
				 
				 System.out.println("Ticket price is "+ticketPrice);
				 System.out.println("flight_day is "+flight_day);
			
				 
				HttpSession session=request.getSession();
				
				session.setAttribute("source",source);
				session.setAttribute("destination",destination);
				session.setAttribute("day",flightDay);
				session.setAttribute("date1",date1);
				session.setAttribute("date1", date1);
				session.setAttribute("flightId", flightId);
				session.setAttribute("flightName", flightName);
				session.setAttribute("flight_day", flight_day);
				session.setAttribute("flightTime", flightTime);
				session.setAttribute("ticketPrice", ticketPrice);
				session.setAttribute("seats", seats);
				//session.setAttribute("S.no", i);
				
				response.sendRedirect("flightBooking.jsp");
				
				//response.sendRedirect("flightBooking.jsp?flightId=" + flightId +'&'+"flightName="+flightName+'&'+"flightday="+flight_day+'&'+"flightTime="+flightTime+'&'+"ticket_price="+ticketPrice+'&'+"seats="+noOfPersons);
				
			}
	//		}else {
				
	//			out.print("<h3> Flights not available Kindly check for another route</h3>");
	//			out.print("<a href='searchFlight.jsp'><button class = 'btn btn-warning'> Back </button></a>");
	//		}
			
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
				
				 

			 
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

			
			
		}

	}	
			
//			
//			
//			String pageName =request.getParameter("req");       
//            if(pageName==null){ 
//                pageName="header.jsp";// default page
//            }
//            request.getRequestDispatcher(pageName).include(request, response);
//
//            out.print("<h3>Available Flights</h3>");
//		       
//			int i=0;
//			
//			
//			while(rs.next())
//			{ 
//						
//				
//				 i++;
//				 
//				 int flightID = rs.getInt("flight_id");
//				 String flightName = rs.getString("flight_name");
//				String flight_day = rs.getString("day");
//				 String flightTime = rs.getString("time");
//				 Double TicketPrice = rs.getDouble("ticket_price");
//				// String destination = rs.getString("destination");
//				 
//				 
//				 
//	
//				
//				 out.println("</tr>");
//									
//			}
//		 
//			out.print("</table>");
//
