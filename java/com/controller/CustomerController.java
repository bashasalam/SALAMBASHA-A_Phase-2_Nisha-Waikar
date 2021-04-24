package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class CustomerController
 */
public class CustomerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession(false);
		PrintWriter out = response.getWriter();
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		
		String email = request.getParameter("email");
		
		String phoneNumber = request.getParameter("phoneNumber");
		String age = request.getParameter("age");
		
		String gender = request.getParameter("gender");
		
		String address = request.getParameter("address");
		
		session.setAttribute("firstName",firstName);
		session.setAttribute("lastName",lastName);
		session.setAttribute("email",email);
		session.setAttribute("phoneNumber",phoneNumber);
		session.setAttribute("age", age);
		session.setAttribute("gender", gender);
		session.setAttribute("address", address);
		
		//out.print(address);
	//	out.print("<h3>Customer Controller");
		//System.out.println("Customer controller");
		
		
		  Integer flightId = (Integer) session.getAttribute("flightId");
		    
		    String flightName = (String) session.getAttribute("flightName");
		    String source = (String)session.getAttribute("source");
		   // String flightDay =  (String) session.getAttribute("flightDay");
		   // System.out.println(" Alhamdhulillaah");
		    String flightTime =  (String) session.getAttribute("flightTime");
		    double ticketPrice=  (Double) session.getAttribute("ticketPrice");
		    int seats =  (Integer) session.getAttribute("seats");
			String destination = (String)session.getAttribute("destination");
	    	String flight_day = (String)session.getAttribute("flight_day");
	    	String day = (String)session.getAttribute("day");

	    	double totalPrice = seats * ticketPrice;
		 
	    	response.sendRedirect("flightDetails.jsp");
		   // System.out.println(ticketPrice);
		 //  out.println("Ticket price is "+ticketPrice);
		
		
		
		//SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		
		
		
		
		
	}

}
