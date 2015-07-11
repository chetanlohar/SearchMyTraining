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
  $(document).ready(function(e){
	  $("#otp").on('click',function(e){
       
		  $("#hidebar").slideDown();
		  $("#otp").attr('value', 'Resend');
		  $("#Femail").attr('disabled','disabled');   

  }); 
	  $("#edit").on('click',function(e){
		  
		  $("#otp").attr('value', 'Send OTP');
		  $("#hidebar").slideUp();
		  $("#Femail").removeAttr('disabled');
		  
		  
		  
  });   
	  
  });
	
	</script>

</head>

<body>


	<%@include file="../layouts/Header.jsp"%>
	
	<!-- ================================================================================================= -->
	<div class="Fpass_wrapar">
		<div class="Fpass_container">
			<h1>FORGOT YOUR PASSWORD ?</h1>
			<h3>A verification code sent to Email Id</h3>
			<form action="#">
			   <div class="email">
			   <input type="text" id="Femail" name="email" autocomplete="off" placeholder="Email Id" required="" value="${username}" disabled="true" />
			   <input type="button" id="edit" value="Edit">
			   <input type="button" id="otp" value="Send OTP">
			   <p>Hint:Please Enter Registered Email Id</p>
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
			    <div class="hideable" id="hidebar">
			    <div class="verifiaction">
			    <input type="text" id="verfi" name="veryfi" value="" placeholder="verification Code" >
			    <p>Please Enter OTP From Your Email Id</p>
			    
			    </div>
			    <div class="Npass">
			    <input type="text" id="Newpass" name="Newpass" value="" placeholder="New Password"/>
			    </div>
			    <div class="vsubmit">
			     <input type="button" id="fsubmit" value="Submit"/>
			    </div>
			</div>
			</form>
		</div>

	</div>

	<%@include file="../layouts/footer.jsp"%>
</body>

</html>