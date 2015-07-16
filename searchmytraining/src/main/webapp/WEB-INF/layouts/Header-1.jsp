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
	 <link
	href="<%=request.getContextPath()%>/resources/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">  
</head>

<body>
	<div class="header">

		<div id='cssmenu'>

			<ul id="coolMenu">
			<li class='active has-sub'><a href="javascript:void 0"><i class="fa fa-home fa-1x"></i></a>
				</li>
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
				<c:if test="${!empty flProfEntity.photograph}">
				 	<img src="${pageContext.request.contextPath}/freelancer/downloadFLPhotograph/${flProfEntity.user.userId}" id="menu_opener" alt="ass"/>
				 </c:if>
				 <c:if test="${empty flProfEntity.photograph}">
				 	<img src="${pageContext.request.contextPath}/resources/images/user-icon.png" id="menu_opener" alt="ass"/>
				 </c:if>	
			</div>
			<div id="submenu">
				<div class="Pro-pic">
					<c:if test="${!empty flProfEntity.photograph}">
				 		<img src="${pageContext.request.contextPath}/freelancer/downloadFLPhotograph/${flProfEntity.user.userId}" id="profilepic" name="profilepic" width="98" height="98" border="0" alt="PROFILE PICTURE" onError="this.src= ${pageContext.request.contextPath}/resources/images/avtar.jpg ;" />
				 	</c:if>
				 	<c:if test="${empty flProfEntity.photograph}">
				 		<img alt="user" src="${pageContext.request.contextPath}/resources/images/user-icon.png">
				 	</c:if>
				</div>
				<div class="u-info">
				<h1>Welcome,</h1>
				 <div class="u_name">
				<h2>${trainer.org_name}${flProfEntity.fullname}${trainee.fullName}</h2>
				</div>
				<div class=u_mailid><h3>${trainer.email}${flProfEntity.email}${trainee.emailid}</h3>
				</div> 
				</div><br></br>
				 <div class="signout">
				 <a href="<c:url value="${pageContext.request.contextPath}/j_spring_security_logout"/>" >Sign-Out</a> 
				</div> 
			</div>
		</div>
	</div>

</body>
</html>