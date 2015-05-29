<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Training Provider Login</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/pop-up.css"
	type="text/css">
<script src="<%=request.getContextPath()%>/resources/js/pop-up.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/popup-box.js"></script>

</head>

<body>
	<div id="pop_up_box_5">
		<a class="b-close"><img
			src="<%=request.getContextPath()%>/resources/images/images.png"></a>
		<div class="reg_form">
			<div class="head">
				<img src="<%=request.getContextPath()%>/resources/images/cust.png"
					alt="register">
			</div>
			<form action="#" name="myform" onsubmit="return (validation());">
				<h2>Login</h2>
				   <div class="errormsg">
				   <span class="error_msg_auth" id="auth_err">your Password or Username is not correct</span>
				   </div>

				<div class="mailto">
					<input type="email" autocomplete="off" name="Email" value=""
						placeholder="Enter Username" required="">
				</div>
				<div class="password">
					<input type="password" autocomplete="off" name="Password" value=""
						placeholder="Enter Password" required="">
				</div>
				<div class="p-container">
					<label class="checkbox"><input type="checkbox"
						name="checkbox" checked><i></i>Remember Me</label>
						<a href="<%=request.getContextPath()%>/ForgotPass">Forgot Password??</a>
					<div class="clear"></div>
				</div>

				<div class="sign">
					<input type="submit" name="Submit" value="Login"> <input
						type="reset" name="Cancel" value="Cancel">
				</div>
				
			</form>
		</div>
	</div>
</body>
</html>