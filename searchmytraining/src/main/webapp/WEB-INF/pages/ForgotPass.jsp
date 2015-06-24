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
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/combine.css"
	media="all" type="text/css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/LogIn.css"
	media="all" type="text/css">
<script type="text/javascript">
	function randString(x) {

		var text = " ";

		var charset = "QWERTYUIOPASDFGHJKLZXCVBNMabcdefghijklmnopqrstuvwxyz0123456789";

		for (var i = 0; i < x; i++)
			text += charset.charAt(Math.floor(Math.random() * charset.length));

		$(".Ccode").html(text);

	}
</script>
</head>

<body>


	<%@include file="../layouts/Header.jsp"%>
	<%@include file="../pages/Trainee/TraineeRegistration.jsp"%>
	<%@include
		file="../pages/TrainingProvider/TrainingProviderRegistration.jsp"%>
	<%@include file="../pages/FreeLancer/FreelancerResistration.jsp"%>
	<%@include file="../pages/TrainingEnquiry.jsp"%>
	<%@include file="../pages/GroupTrainingRequest.jsp"%>
	<%@include file="../pages/Sign-In.jsp"%>
	<%@include file="../pages/AdvSearch.jsp"%>
	<!-- ================================================================================================= -->
	<div class="Fpass_wrapar">
		<div class="Fpass_container">
			<div class="title">
				<h1>Forgot PassWord ?</h1>
			</div>
			<div class="textmsg">
				<p>Please Enter Your Email Below And We'll Send You New Password
					On Your Email Id.</p>
			</div>
			<form action="#">
				<div class="Containt">
					<label for="Email" class="remail"><em style="color: red;">*</em>Email
						Address:</label> <input type="email" class="Femail" placeholder="Email Id">

				</div>
				<div class="Gpass">
					<input type="button" name="" value="Submit" id="Spass">
				</div>
			</form>
			<span><a href="<%=request.getContextPath()%>/index"> Go
					Back</a></span>
		</div>

	</div>

	<%@include file="../layouts/footer.jsp"%>
</body>

</html>