<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
  
    <%@ include file = "header.jsp" %>
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


        <div id="content" style="margin-top:auto;margin-left: 150px;margin-right: 150px; height:50vh;">
  
              
                <div class="card">
             
                  <div class="card-body" style="margin-left: 250px; height:50vh">
               
                      <div class="col-lg-12  form-group">
                        
                          <div class="row">
                            <div id="reportrange" class="pull-center" style="cursor: pointer; width: 100%;">
                              <form class="" action="PasswordController" method="post" style="margin-left: 100px;">
                              <div style="text-align: center; display: flex; margin-top: 5px; margin-bottom: 5px; font-size: 16px;">
                                <!-- <label for="userName" >  Enter UserName: </label> -->
                             <input type="text" placeholder="Enter Username" name="userName" required style="margin-left: 20px; width:25vw; height: 25px;">

                              </div>
                              <div style="text-align: center; display: flex;  margin-top: 5px; margin-bottom: 5px;font-size: 16px;">
                                <!-- <label for="userName">    Current Password: </label> -->
                         <input type="password" placeholder="Enter Current Password" name="currentPassword" required style="margin-left: 20px; width:25vw; height: 25px;">
                              </div>
                              <div style="text-align: center;display: flex;  margin-top: 5px; margin-bottom: 5px;font-size: 16px;">
                                <!-- <label for="userName">    New Password: </label> -->
                             <input type="password" placeholder="Enter New Password" name="newPassword1" required style="margin-left: 20px; width:25vw; height: 25px;">
                              
                              </div>
                              <!-- <div style="text-align: center;display: flex;  margin-top: 5px; margin-bottom: 5px; font-size: 16px;">
                                 <label for="userName">  ReEnterPassword:</lab
                             <input type="password" placeholder="Re enter the new Password" name="newPassword2" required style="margin-left: 20px; width:25vw; height: 25px;">
                            </div> -->
                            <div style="text-align: center;display: flex;  margin-top: 5px; margin-bottom: 5px;" >
                              <button type="submit" class="btn btn-success" style="margin-left: 20px; width:25vw; height: 25px;">Save</button>
                            </div>
                            </form>
                            </div>
                          </div>
                        
                       
                      </div>
                
                   </div>
                </div>
       
         
        </div>





  