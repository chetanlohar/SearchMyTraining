<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Training Provider Registration</title>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/pop-up.css"
	type="text/css">
<script src="<%=request.getContextPath()%>/resources/js/pop-up.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/popup-box.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/Validations/Rvalidation.js"></script>

</head>
<script type="text/javascript">
	
</script>

<body onload="randString(5);">
	<div id="pop_up_box_4">
		<a class="b-close"><img
			src="<%=request.getContextPath()%>/resources/images/images.png"></a>
		<div class="reg_form">
			<div class="head">
				<img
					src="<%=request.getContextPath()%>/resources/images/register2.png"
					alt="register">
			</div>
			<form id="trainerRegistartionForm" name="myform" method="post"
				onsubmit="return (validation());">
				<h2>Registration</h2>
				<div class="name">
					<input id="org_name" type="text" autocomplete="off" name="org_name"
						value="" placeholder="Organization Name" required=""> <span
						id="error1"></span>

				</div>
				<select id="cityid">
					<option value="0">Select City</option>
					<option value="Pune">Pune</option>
					<option value="Mumbai">Mumbai</option>
					<option value="Nagpur">Nagpur</option>
					<option value="Solapur">Solapur</option>
				</select> <span id="error2"></span>
				<div class="contact">
					<input id="contact1" type="text" autocomplete="off" name="contact"
						value="" placeholder="Contact No." required=""
						onkeypress="return validate(event)"> <span id="error3"></span>
				</div>
				<div class="mailto">
					<input id="email1" type="text" autocomplete="off" name="email"
						value="" placeholder="Enter Email Id" required=""> 
					<span id="error4"></span>
				</div>
				<div class="password">
					<input id="password" class="pass" type="password"
						autocomplete="off" name="password" value=""
						placeholder="Enter Password" required="">
				</div>
			<div id="Pass-chek"><div id="meter1"></div><div id="meter2"></div><div id="meter3"></div>
				</div>
				<div class="password">
					<input id="cnfpassword" type="password" autocomplete="off"
						name="cnfpassword" value="" placeholder="Confirm Password"
						required="">
				</div>
				
				<span id="error5"></span>
				<div class="rcpatcha1">
			
			<input style="margin: 0 auto;" type="text" id="prcaptch" name="" placeholder="Enter Captch">
			
			</div>
				
				<div class="cpatcha1">
			
			<div class="Ccode" id="captch"></div>
			<div class="refresh1">
			<input type="button" id="refreshc" onclick='randString(5);' /> 
			
			</div>
			
			</div>
			
				
				<div class="sign">
					<input type="button" name="Submit" value="Submit" onclick="trainerRegistration('<%=request.getContextPath()%>'); " />
					<input type="reset" name="Cancel" value="Cancel" class="cancel">
				</div>

			</form>
		</div>
	</div>
</body>
</html>