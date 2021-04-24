<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FLYAWAY|| SEARCH FLIGHT</title>
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
    input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
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
      <li style="text-align:center;"  ><h3>FLYAWAY</h3></li>
         </ul>

<h3> SEARCH YOUR FLIGHT</h3>

<div>
  <form action="search" method = "post">
    <label for="source">Leaving From*</label>
        <select  id="source" name="source" required>
      <option value="India">India</option>
      <option value="Singapore">Singapore</option>
      <option value="Malasia">Malasia</option>
    </select>
    

    <label for="destination" id="destination" name="destination" >Arriving At*</label>
      <select id="destination" name="destination" required>
  <option value="India">India</option>
      <option value="Singapore">Singapore</option>
      <option value="USA">USA</option>
      <option value="UK">UK</option>
      <option value="Arabia">Arabia</option>
      <option value="Qatar">Qatar</option>
    </select>
    

    <label for="">Date*</label>
     <input type="date" name="date"  placeholder="mm/dd/yyyy" required>

    <label for=""> Total No Of Passengers*</label>
    <input type="number" id="quantity" name="quantity" min="1" max="5"  placeholder="Enter a number" required>
 
  
    <input type="submit" value="Search">
  </form>
</div>



</body>
</html>