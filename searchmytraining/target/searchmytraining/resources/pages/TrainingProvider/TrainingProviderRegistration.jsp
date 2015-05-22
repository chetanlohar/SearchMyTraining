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

</head>

<body>
	<div id="pop_up_box_4">
		<a class="b-close"><img
			src="<%=request.getContextPath()%>/resources/images/images.png"></a>
		<div class="reg_form">
			<div class="head">
				<img
					src="<%=request.getContextPath()%>/resources/images/register2.png"
					alt="register">
			</div>
			<form action="<%=request.getContextPath()%>/trainingprovider_reg"
				name="myform" method="post" onsubmit="return (validation());">
				<h2>Registration</h2>
				<div class="name">
					<input type="text" autocomplete="off" name="Name" value=""
						placeholder="Organization Name" required="">
				</div>
				<div class="city">
					<input type="text" name="city" value="" placeholder="City"
						required="">
				</div>
				<!-- <div class="name">
					<input type="text" autocomplete="off" name="training_type" value=""
						placeholder="Training Type" required="">
				</div> -->
				<div class="contact">
					<input type="text" name="contact" value=""
						placeholder="Contact No." required="">
				</div>
				<div class="mailto">
					<input type="text" autocomplete="off" name="Email" value=""
						placeholder="Enter Email Id" required="">
				</div>
				<div class="password">
					<input type="password" autocomplete="off" name="Password" value=""
						placeholder="Enter Password" required="">
				</div>
				<div class="password">
					<input type="password" autocomplete="off" name="CnfmPassword"
						value="" placeholder="Confirm Password" required="">
				</div>
				<div class="sign">
					<input type="submit" name="Submit" value="Submit"> 
					<input type="reset" name="Cancel" value="Cancel">
				</div>

			</form>
		</div>
	</div>
</body>
</html>