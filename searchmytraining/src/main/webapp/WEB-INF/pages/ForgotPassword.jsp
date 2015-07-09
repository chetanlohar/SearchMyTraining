<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Forgot Password</title>
<script type="text/javascript"
	src="./resources/js/jquery/jquery-1.10.2.js"></script>

<link rel="stylesheet"
	href="./resources/css/combine.css"
	media="all" type="text/css">
<link rel="stylesheet"
	href="./resources/css/LogIn.css"
	media="all" type="text/css">
	<script type="text/javascript">
    function recoveryoption1() {
    	
    	$("#r2").attr('checked', false);
			$("#hiden-box1").slideDown();
			$("#hiden-box2").slideUp();
		};
		
		function recoveryoption() {
	    	
	    	$("#r1").attr('checked', false);
			
				$("#hiden-box1").slideUp();
			};

	
	</script>

</head>

<body>


	<%@include file="../layouts/Header.jsp"%>
	
	<!-- ================================================================================================= -->
	<div class="Fpass_wrapar">
		<div class="Fpass_container">
			<h1>Forgot your Password ?</h1>
			<h3>A verification code sent to Email Id</h3>
			<form action="#">
			   <div class="email">
			   <input type="text" id="Femail" name="email" placeholder="Email Id" required="" value="${username}"/>
			   <p></p>
			   </div>
			  <!--  <p><strong>Get a Verification Code On</strong></p>
			    <div class="radio-option">
			       <input type="radio" name="r1" value="1" id="r1" onclick="recoveryoption1();">
			       <label for="r1">Phone</label>
			        <div class="hide-wrapar" id="hiden-box1">
			            <input type="text" id="frphone" name="frphone" value="" >
			            <p>Hint:Enter Your Registred Phone Number<p>
			        </div>
			    </div>
			     <div class="radio-option">
			       <input type="radio" name="r2" value="2" id="r2" onclick="recoveryoption();">
			       <label for="r1">Email</label>
			       
			    </div> -->
			    <div class="verifiaction">
			    <input type="text" id="verfi" name="veryfi" value="" placeholder="verification Code" >
			    <input type="button" id="verfi1" value="Resend"/>
			    
			    </div>
			    <div class="Npass">
			    <input type="text" id="Newpass" name="Newpass" value="" placeholder="New Password"/>
			    </div>
			    <div class="vsubmit">
			     <input type="button" id="fsubmit" value="Submit"/>
			    </div>
			
			</form>
		</div>

	</div>

	<%@include file="../layouts/footer.jsp"%>
</body>

</html>