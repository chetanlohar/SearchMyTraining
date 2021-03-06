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
<script type="text/javascript">
$(document).ready(function(){
	$("#forgetpasslinkid").click(function(e){
		var email = $('#emailid').val();
		$('#formemailid').val(email);
		var email1 = $('#formemailid').val();
		if(email == ""){
			$("#emailid").focus();
			$("#auth_error_div_emailreq").html('Email Id Required');
		}
		else
			$("#hiddenform").submit();
		});
});
</script>
</head>

<body>
<form id="hiddenform" action="./forgotpassword" method="POST" style="height:0px; ">
	<input id="formemailid" type="hidden" name="username"/>
</form>

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
				
				<div class="errormsg">
				<span
						class="error_msg_auth" id="auth_error_div_emailreq"></span>
				</div>

				<div class="mailto">
					<input id="emailid" type="email" autocomplete="off" name="username"
						placeholder="Enter Username" required="">
				</div>
				<div class="password">
					<input type="password" autocomplete="off" name="password" value=""
						placeholder="Enter Password" required="">
				</div>
				<div class="p-container">
				<label for="remember"><input type="checkbox" id="test2" checked="checked" />  Remember Me</label>
				
                      
                        <a id="forgetpasslinkid" href="#">Forgot Password </a>
				</div>

				<div class="sign">
					<input type="submit" id="login" name="Submit" value="Login">
					<input type="reset" name="Cancel" value="Cancel">
				</div>

			</form>
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
		var username =  $("#emailid").val();
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
						/* $.post("${ctx}/searchmytraining" + data.page,{ username: $("#emailid").val()},function(data){
							alert(data);
							loadHTML(data);
						}); */
						/* location.href = "${ctx}/searchmytraining" + data.page+"?username="+username; */
						$('#url').val(username);
						$("#loginformhidden").attr("action", "${ctx}/searchmytraining" + data.page);
						$('#loginformhidden').submit();
					}
				}
			},
			error : loginFailed
		});
	});
</script>
<script type="text/javascript">
	function updateProfile(url)
	{
		$.ajax({
			  type: "POST",
			  url: url,
			  data: {
				  username: $("#emailid").value()
			  },
			  success: function(){
				  location.href = "${ctx}/searchmytraining" + data.page;
			  },
			});
	}
</script>
<form id="loginformhidden" style="display: hidden; height:0px; " method="POST" >
  <input type="hidden" id="url" name="username" value="" style="height:0"/>
</form>
</html>