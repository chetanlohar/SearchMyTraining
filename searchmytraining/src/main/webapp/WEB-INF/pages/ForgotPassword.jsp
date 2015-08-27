<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Forgot Password</title>

	<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/jquery/jquery-1.10.2.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/jquery/jquery-migrate-1.2.1.min.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/pop-up.css"
	type="text/css">
<script src="<%=request.getContextPath()%>/resources/js/pop-up.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/popup-box.js"></script>

<link rel="stylesheet" href="./resources/css/combine.css" media="all"
	type="text/css">
<link rel="stylesheet" href="./resources/css/LogIn.css" media="all"
	type="text/css">
<script type="text/javascript">
	$(document).ready(function(e) {
		$("#otp").on('click', function(e) {

			$("#hidebar").slideDown();
			$("#otp").attr('value', 'Resend');
			$("#Femail").attr('disabled', 'disabled');

		});
		$("#edit").on('click', function(e) {

			$("#otp").attr('value', 'Send OTP');
			$("#hidebar").slideUp();
			$("#Femail").removeAttr('disabled');

		});
		
		function randString(x){
		    alert("fg");
			 var text = " ";

			    var charset = "QWERTYUIOPASDFGHJKLZXCVBNMabcdefghijklmnopqrstuvwxyz0123456789";

			    for( var i=0; i < x; i++ )
			        text += charset.charAt(Math.floor(Math.random() * charset.length));
			    
		           $(".Ccode").html(text);
			
				
			}

	});
</script>

</head>

<body onload="randString(5)">


	<%@include file="../layouts/Header.jsp"%>

	<!-- ================================================================================================= -->
	<div class="Fpass_wrapar">
		<div class="Fpass_container">
			<h1>FORGOT YOUR PASSWORD ?</h1>
			<h3>A verification code sent to Email Id</h3>
			<form action="#">
				<div class="email">
					<input type="email" id="Femail" name="email" autocomplete="off"
						placeholder="Email Id" required="" value="${username}"
						disabled="true" /> <input type="button" id="edit" value="Edit">
					<input type="button" id="otp" value="Send OTP">
					<p>Hint:Please Enter Registered Email Id</p>
				</div>

				<div class="hideable" id="hidebar">
					<div class="verifiaction">
						<input type="text" id="verfi" name="veryfi" value=""
							placeholder="verification Code">
						<p>Please Enter OTP From Your Email Id</p>

					</div>
					<div class="Npass">
						<input type="password" id="Newpass" name="Newpass" value=""
							placeholder="New Password" />
					</div>
					<div class="vsubmit">
						<input type="button" id="fsubmit" value="Submit" />
					</div>
				</div>
			</form>
		</div>

	</div>

	<%@include file="../layouts/footer.jsp"%>
</body>

</html>