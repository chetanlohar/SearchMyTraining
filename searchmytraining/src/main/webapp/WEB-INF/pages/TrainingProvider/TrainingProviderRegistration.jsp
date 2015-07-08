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
<script type="text/javascript">
function trainerRegistration(path) {
	if (validation(path)) {
		try {
			$
					.ajax({
						url : './trainingprovider_reg',
						type : 'post',
						dataType : 'json',
						data : JSON.stringify({
							"org_name" : $('#org_name').val(),
							"city" : $('#cityid').val(),
							"contact" : $('#contact1').val(),
							"email" : $('#email1').val(),
							"password" : $('#password').val(),
							"cnfpassword" : $('#cnfpassword').val()
						}),
						contentType : "application/json",
						success : function(response) {
							/* alert(response.validation_error); */
							if (response.errorMsg) {

								$.map(response.errorMsg, function(val, key) {
									if (key == "org_name")
										$('#error1').text(val);
									else if (key == "city")
										$('#error2').text(val);
									else if (key == "contact")
										$('#error3').text(val);
									else if (key == "email")
										$('#error4').text(val);
									else if (key == "password")
										$('#error5').text(val);
									else if (key == "cnfpassword")
										$('#error6').text(val);
								});

							} else {
								alert("Thank you for Your Registration, Please Update Your Profile: SMT");
								doLogin(path);
								/*window.location.href = path	+ "/trainingprovider_updateprofile";*/
							}

						}
					});
		} catch (ex) {

			alert(ex);
		}
	}
}

function doLogin(path)
{
	console.log("in doLogin()... :-)");
	var username = $('#email1').val();
	var credentials = {username:$('#email1').val(),password:$('#password').val()};
	$.ajax({
		url : "${ctx}/searchmytraining/j_spring_security_check",
		type : "POST",
		//contentType : "application/json",
		beforeSend : function(xhr) {
			xhr.withCredentials = true;
		},
		data : credentials,
		success : function(data, status) {
			if (data != null) {
				if (data.success == false) {
					$('#auth_error_mesg').html(data.message);
					$("#auth_error_div").show();
				} else if (data.success == true) {
					console.log("in j_spring_security_check success");
					/* location.href = path + data.page; */
					location.href = "${ctx}/searchmytraining" + data.page+"?username="+username;
					/* $('#url').val(username);
					$("#loginformhidden").attr("action", "${ctx}/searchmytraining" + data.page);
					$('#loginformhidden').submit(); */
				}
			}
		},
		error : loginFailed
	});
}
</script>
</head>

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
						value="" placeholder="Organization Name"  autofocus/> <span
						id="error1"><text>.</text></span>

				</div>
				<select id="cityid">
					<option value="0">Select City</option>
					<option value="Pune">Pune</option>
					<option value="Mumbai">Mumbai</option>
					<option value="Nagpur">Nagpur</option>
					<option value="Solapur">Solapur</option>
					<option value="Nashik">Nashik</option>
					<option value="Bangalore">Bangalore</option>
					<option value="Delhi">Delhi</option>
					<option value="Kolkata">Kolkata</option>
					<option value="Chennai">Chennai</option>
					<option value="Goa">Goa</option>
					<option value="Indore">Indore</option>
					<option value="Noida">Noida</option>
					<option value="Hydrabad">Hydrabad</option>
					<option value="Gurgaon">Gurgaon</option>
					<option value="Chandigarh">Chandigarh</option>
					<option value="Jaipur">Jaipur</option>
					<option value="Baroda">Baroda</option>
					<option value="Ahmedabad">Ahmedabad</option>
					<option value="Lucknow">Lucknow</option>
					
				</select> <span id="error2"><text>.</text></span>
				<div class="contact">
					<input id="contact1" type="text" autocomplete="off" name="contact"
						value="" placeholder="Contact No." required=""
						onkeypress="return validate(event)"> <span id="error3"><text>.</text></span>
				</div>
				<div class="mailto">
					<input id="email1" type="text" autocomplete="off" name="email"
						value="" placeholder="Enter Email Id" required=""> 
					<span id="error4"><text>.</text></span>
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
				
				<span id="error5"><text>.</text></span>
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
<form id="loginformhidden" style="display: hidden" method="POST">
  <input type="hidden" id="url" name="username" value=""/>
</form>
</body>
</html>