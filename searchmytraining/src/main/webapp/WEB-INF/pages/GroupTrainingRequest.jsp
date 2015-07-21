<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Group Training Request</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/pop-up.css"
	type="text/css">
<script src="<%=request.getContextPath()%>/resources/js/pop-up.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/popup-box.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/Validations/Gvalidation.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/work/trainingenquiry.js"></script>
</head>
<body>
	<div id="pop_up_box_1">
		<a href="#" class="b-close close1"><img
			src="<%=request.getContextPath()%>/resources/images/images.png"></a>
		<div class="reg_form">
			<div class="head">
				<img
					src="<%=request.getContextPath()%>/resources/images/User group.png"
					alt="register">
			</div>
			<form action="<%=request.getContextPath()%>/requesttraining"
				id="GroupTrainingRequest" name="myform" method="post"
				onsubmit="return (validation());">
				<h2>Group Training</h2>
				<div class="name">
					<input type="text" id="name21" autocomplete="off" name="name"
						placeholder="Name" autofocus >
				</div>
				<div class="clr"></div>
				<span id="error21" class="errorm"><text>.</text></span>
				<div class="cmpnyname">
					<input type="text" autocomplete="off" id="companyName21"
						name="companyName" placeholder="Company Name" >
				</div>
				<span id="error22" class="errorm"><text>.</text></span>
				<div class="coursetitle">
					<input type="text" id="title21" name="title"
						placeholder="Course Title" >
				</div>
				<span id="error23" class="errorm"><text>.</text></span>
				<div class="mailto">
					<input type="text" id="Email21" autocomplete="off" name="Email"
						placeholder="Email Id">
				</div>
				<span id="error24" class="errorm"><text>.</text></span>
				<div class="contact">
					<input type="text" id="contact21" name="contact"
						placeholder="Contact No." onkeypress="return Gvalidate(event)" >
				</div>
				<span id="error25" class="errorm"><text>.</text></span>
				<div class="contact">
					<input type="text" id="participents21" name="participents" placeholder="Approx No of Participents" onkeypress="return Gvalidate(event)">
				</div>
				<span id="error26" class="errorm"><text>.</text></span>
				<div class="city">
					<!-- <input type="text" id="city21" name="city" value=""
						placeholder="City" > -->
					<select id="city21">
						<option value="0" selected>--Select--</option>
						<c:forEach var="city" items="${cities}">
							<option value="${city.cityId}">${city.cityName}</option>
						</c:forEach>
					</select>
				</div>
				<span id="error27" class="errorm"><text>.</text></span>
				<div class="req">
					<textarea id="requirements21" name="requirements" class="require"
						placeholder="Training Requirement Description"></textarea>
						<h3> (Max 250 Characters)</h3>
				</div>
				<div class="sign">
					<input type="submit" name="Send" value="Send" onclick="groupEnquiry('${pageContext.request.contextPath}/request/trainingenquiry');"> 
					<input type="reset" name="Cancel" value="Reset" class="cancel close1">
				</div>
			</form>
		</div>
	</div>
</body>
</html>