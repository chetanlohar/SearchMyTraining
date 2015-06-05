<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/reset.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/aboutus.css">
<title>Contact Us</title>
</head>
<body>
<%@include file="../../layouts/Header.jsp"%>
<div id="contact">
<div class="contact_banner">
<img alt="banner" src="<%=request.getContextPath()%>/resources/images/contact-us.png">
</div>
<h1>contact us</h1>
<div class="contact_info">
<div class="contact_form">
<input id="firstname" class="firstname" type="text" placeholder="* First Name" title="First Name">
<input id="lastname" class="lastname" type="text" placeholder="* Last Name" title="Last Name">
<input id="email" class="email" type="text" placeholder="* Email" title="Email">
<textarea rows="5" cols="65" placeholder="* Write a message"></textarea>
<input type="button" value="SEND MESSAGE">
</div>

<div class="address_info">
<p>
<span>SearchMyTraining</span>
<br>

 </p>
</div>
</div>
</div>
<%@include file="../../layouts/footer.jsp"%>
</body>
</html>