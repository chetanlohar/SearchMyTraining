<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login</title>

<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/Admin.css" type="text/css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/reset.css" type="text/css">
</head>
<body>
<div class="head">
<h1>SearchMyTraining</h1>
</div>
 <div class="container">
 <!-- <div class="header"><h1>SearchMyTraining</h1></div> -->
     <div class="Apanel">
      <!--  <div class="AdminTitle">
          <h1>Administration</h1>
       </div> -->
       <div class="logcontainer">
      
          <div class="Subhead">
           <h1>Administration Login</h1>
          </div>
       
            <img style="margin-left: 30px;" alt="Admin-Login" src="<%=request.getContextPath()%>/resources/images/adminlogin.png"/>
         
       <div class="logbar"  >
       <div class="panel">
       <form action="">
          
          <input type="text"  id="auser" value="" placeholder="UserName" >
       
          <input type="password"  id="apass" value="" placeholder="Password" >
          <input type="submit" value="Log In">
       
       </form>     
       </div>      
       </div>  
       </div>   
     </div>  
 </div>
 <br>
 <%@include file="../layouts/footer.jsp"%>


</body>
</html>