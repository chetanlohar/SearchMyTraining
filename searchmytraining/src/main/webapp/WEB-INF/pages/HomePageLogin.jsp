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
			<form action="#" name="myform" id="loginForm"
				onsubmit="return (validation());">
				<h2>Login</h2>
				<div class="errormsg" id="auth_error_div">
					Your login attempt was not successful, try again. Caused : <span
						class="error_msg_auth" id="auth_error_mesg"></span>
				</div>

				<div class="mailto">
					<input type="email" autocomplete="off" name="username" value=""
						placeholder="Enter Username" required="">
				</div>
				<div class="password">
					<input type="password" autocomplete="off" name="password" value=""
						placeholder="Enter Password" required="">
				</div>
				<div class="p-container">
					<label class="checkbox"><input type="checkbox"
						name="rememberMe" checked><i></i>Remember Me</label> <a
						href="<%=request.getContextPath()%>/ForgotPass">Forgot
						Password??</a>
					<div class="clear"></div>
				</div>

				<div class="sign">
					<input type="submit" id="login" name="Submit" value="Login">
					<input type="reset" name="Cancel" value="Cancel">
				</div>

			</form>
		</div>
	</div>
</body>
<script type="text/javascript">
	$(document).ready(function() {
		console.log("ready!");
		$("#auth_error_div").hide();

	});
	var loginFailed = function(data, status) {
		$("#auth_error_div").show();
		$('#auth_error_mesg').html(data);
	};
	$("#login").click(function(e) {
		// e.preventDefault();
		$.ajax({
			url : "${ctx}/searchmytraining/j_spring_security_check",
			type : "POST",
			//contentType : "application/json",
			beforeSend : function(xhr) {
				xhr.withCredentials = true;
			},
			data : $("#loginForm").serialize(),
			success : function(data, status) {
				if (data != null) {
					if (data.success == false) {
						$('#auth_error_mesg').html(data.message);
						$("#auth_error_div").show();
					} else if (data.success == true) {

						location.href = "${ctx}/searchmytraining" + data.page;
					}
				}
			},
			error : loginFailed
		});
	});
</script>
</html>