<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/Header1.css">
	<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/reset.css">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/logout.js"></script>
</head>
<body>
	<div class="header">

		<div id='cssmenu'>

			<ul id="coolMenu">
				<li class='active has-sub'><a href='#'><span>Browse</span></a>
					<ul>
						<li><a href='#'><span>All Training</span></a></li>
						<li><a href='#'><span>Training By Category</span></a></li>
						<li><a href='#'><span>Training By Institute</span></a></li>
						<li><a href='#'><span>Training By Location</span></a></li>
					</ul></li>

				<li class='active has-sub'><a href='#'><span>About
							Us</span></a>
					<ul>
						<li><a href='#'><span>About Us</span></a></li>
						<li><a href='#'><span>Meet Our Team</span></a></li>
						<li><a href='#'><span>Training News</span></a></li>
						<li><a href='#'><span>Contact Us</span></a></li>
					</ul></li>
				<li class='active has-sub'><a href="javascript:void 0">Blog</a>
				</li>
			</ul>


		</div>
		<!-- <div class="welcome">
			<h2>Welcome,</h2>
		</div> -->
		<div class="main">
			<div class="user-icon">
				<img
					src="<%=request.getContextPath()%>/resources/images/user-icon.png"
					id="menu_opener" alt="ass" onclick="myFunction()" />
			</div>
			<div id="submenu">
				<div class="Pro-pic">
				<img alt="user" src="<%=request.getContextPath()%>/resources/images/user-icon.png">
				</div>
				<div class="u-info">
				<h1>Welcome,</h1>
				 <div class="u_name">
				<h2>ABC XYZ</h2>
				</div>
				<div class=u_mailid><h3>abcabcabc@gmail.com</h3>
				</div> 
				</div><br></br>
				 <div class="signout">
				 <a href="<c:url value="j_spring_security_logout" />" >Sign-Out</a> 
				</div> 
			</div>
		</div>
	</div>

</body>
</html>