<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%
   // import javax.servlet.http.HttpSession;
  //  HttpSession session = request.getSession(false); // To avoid new session creation to continue with the same session.
	
 // if((String) session.getAttribute("userName") == "Admin"){
    
    %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> FLYAWAY || ADMIN</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href=”bootstrap/css/bootstrap.min.css” rel=”stylesheet” type=”text/css” />
<script type=”text/javascript” src=”bootstrap/js/bootstrap.min.js”></script>

<style>
    ul {
      list-style-type: none;
      margin: 0;
      padding: 0;
      overflow: hidden;
      background-color:#aebde1;
    }
    
 
    
    li:last-child {
      border-right: none;
    }
    
    li a {
      display: block;
      color: white;
      text-align: center;
      padding: 14px 16px;
      text-decoration: none;

    }
    
    li a:hover:not(.active) {
      background-color: #111;
    }
    #background{
        background-image: url('salambasha.png');
  background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size: cover;
    position: fixed;
    width: 100%;
    max-width: 400px !important;
    
        margin-left: 700px;
    margin-top: 200px;
    
    word-break: break-word;

    }
  
    </style>
    </head>
    <body>
    
    <%-- <ul>
      <li style="float: left;"  ><h3><a  href="adminPage.jsp">FLYAWAY</a></h3></li>
      <li style="float:right"><a href="index.jsp"><button class="btn btn-danger">Logout</button></a></li>
      <li style="float:right"><a href="changePassword.jsp"><button class="btn btn-warning">Change Password</button></a></li>
      <li style="float:right"><a href="AirWaysController"><button class="btn btn-primary">AirWays</button></a></li>
      <li style="float:right"><a href="adminPage.jsp?places=countries"><button class="btn btn-primary">Country List</button></a></li>
     <li style="float:right"><a href="FlightListController"><button class="btn btn-primary">Flight List</button></a></li>
      <li style="float:right"><a href="adminPage.jsp?flighthandling=handlingflight"><button class="btn btn-primary">Add/Cancel Flight</button></a></li>

    </ul> --%>
       <ul>
      <li style="float: left;"  ><h3><a  href="adminPage.jsp">FLYAWAY</a></h3></li>
      <li style="float:right"><a href="index.jsp"><button class="btn btn-danger">Logout</button></a></li>
      <li style="float:right"><a href="changePassword.jsp"><button class="btn btn-warning">Change Password</button></a></li>
      <li style="float:right"><a href="airways"><button class="btn btn-primary">airways</button></a></li>
      <li style="float:right"><a href="airlines"><button class="btn btn-primary">airlines</button></a></li> 
      <%-- <li style="float:right"><a href="adminPage.jsp?places=countries"><button class="btn btn-primary">Country List</button></a></li> --%>
     <li style="float:right"><form action="flightList"><button type="submit" class="btn btn-primary">Flight Schedule</button></form></li>
      <%-- <li style="float:right"><a href="adminPage.jsp?flighthandling=handlingflight"><button class="btn btn-primary">Add/Cancel Flight</button></a></li> --%>

     </ul>



<%

  if( (request.getParameter("airways") != null) ){
	  
      out.println("<table>");
      out.println("<tr>");
      out.println("<th> S.No </th>");
      out.println("<th> Source </th>");
      out.println("<th> Destination </th>");
      out.println("</tr>");
	int i=0;
	    try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/flyawaydb","root","basha");
			Statement st=conn.createStatement();
			
			ResultSet rs=st.executeQuery("select * from source_destiny"); 
			
			while(rs.next()){  i++;  %>
				
				<tr>
				  <td> { i } </td>
				    <td> { rs.getString("Source")} </td>
				      <td> { rs.getString("Destination") } </td>
				
				
		<% }
			
			
	  }catch(Exception e){
		  e.printStackTrace();
		 
		  
	  
	  } %>

<div>
  <h1> Alhamdhulillah this is airways page</h1>
</div>
<%	  }
	  %>

<%

  if( (request.getParameter("places") != null) ){

	  %>
<div>
  <h1> Alhamdhulillah this is Countries page</h1>
</div>


<% 
} %>
<%
  if( (request.getParameter("flighthandling") != null) ){

	  %>
<div>
  <h1> Alhamdhulillah this is handlingflight page</h1>
</div>


<% 
} %>

<%
  if( (request.getParameter("flightList") != null) ){

	  %>
<div>
  <h1> Alhamdhulillah this is flightList page</h1>
</div>

<%} %>







    <!-- <h1>Assallaamu alaikkum</h1> -->

  
    </body>
    </html>
 