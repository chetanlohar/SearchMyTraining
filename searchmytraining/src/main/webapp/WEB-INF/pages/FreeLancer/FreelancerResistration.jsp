<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Freelancer Registration</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/pop-up.css"
	type="text/css">
<script src="<%=request.getContextPath()%>/resources/js/pop-up.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/popup-box.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/js/Validations/Fvalidation.js"></script>

</head>

<script type="text/javascript">
	function freelancerRegistration(path) {
		var flag = validation12();
		//alert('flag '+flag);
		if (flag) {

			try {

				$
						.ajax({

							url : path + '/freelaancer_reg',

							type : 'post',

							dataType : 'json',

							data : JSON.stringify({

								"name12" : $('#name12').val(),

								"city12" : $('#city12').val(),

								"contact12" : $('#contact12').val(),

								"email12" : $('#email12').val(),

								"password12" : $('#password12').val(),

								"cnfpassword12" : $('#cnfpassword12').val()

							}),

							contentType : "application/json",

							success : function(response) {
								alert("Thank you for Your Registration, Please Update Your Profile:");
								/* window.location.href="./freelancer_updateprofile"; */
								doLogin(path);

							}
						});

			} catch (ex) {

				alert(ex);

			}

		}

	}
	function doLogin(path) {
		console.log("in doLogin()... :-)");
		var username = $('#email12').val();
		var credentials = {
			username : $('#email12').val(),
			password : $('#password12').val()
		};
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
						alert("data.page value: " + data.page);
						/* location.href = "${ctx}/searchmytraining" + data.page+"?username="+username; */
						$('#url').val(username);
						$("#loginformhidden").attr("action","${ctx}/searchmytraining" + data.page);
						$('#loginformhidden').submit();
					}
				}
			},
			error : loginFailed
		});
	}
</script>
<body>
	<div id="pop_up_box_8">
		<a class="b-close"><img
			src="<%=request.getContextPath()%>/resources/images/images.png"></a>
		<div class="reg_form">
			<div class="head">
				<img
					src="<%=request.getContextPath()%>/resources/images/register2.png"
					alt="register">
			</div>
			<form id="FreelancerRegistration" name="myform" method="post"
				onsubmit="return (validation12());">
				<h2>Registration</h2>
				<div class="name">
					<input type="text" autocomplete="off" name="name" id="name12"
						placeholder="Full Name" autofocus />
				</div>
				<span id="error11"><text>.</text></span> <select id="City_name12">
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
				</select> <span id="error12"><text>.</text></span>
				<!--  <div class="name">
                        <input type="text" autocomplete="off" name="training_type" value="" placeholder="Training Type" required="">
                    </div> -->
				<div class="contact">
					<input type="text" name="contact" autocomplete="off" id="contact12"
						placeholder="Contact No." onkeypress="return validate12(event)">
				</div>
				<span id="error13"><text>.</text></span>
				<div class="mailto">
					<input type="text" autocomplete="off" name="email" id="email12"
						placeholder="Enter Email Id">
				</div>
				<span id="error14"><text>.</text></span>
				<div class="password">
					<input type="password" autocomplete="off" name="password"
						id="password12" placeholder="Enter Password">
				</div>
				<div id="Pass-chek12">
					<div id="meter12"></div>
					<div id="meter13"></div>
					<div id="meter14"></div>
				</div>


				<div class="password">
					<input type="password" autocomplete="off" name="cnfpassword"
						id="cnfpassword12" placeholder="Confirm Password">
				</div>
				<span id="error15"><text>.</text></span>
				<div class="rcpatcha1">

					<input style="margin: 0 auto;" type="text" id="frcapch" name=""
						placeholder="Enter Captch">

				</div>
				<div class="cpatcha1">

					<div class="Ccode" id="captchf"></div>
					<div class="refresh1">
						<input type="button" id="refreshc" onclick='randString(5);' />

					</div>

				</div>

				<div class="sign">
					<!-- <input type="button" name="Submit" value="Submit" onclick="freelancerRegistration();validation12();"> -->
					<input type="button" name="Submit" value="Submit"
						onclick="freelancerRegistration('<%=request.getContextPath()%>');">
					<input type="reset" name="Cancel" value="Cancel" class="cancel">
				</div>

			</form>
		</div>
	</div>
	<form id="loginformhidden" style="display: hidden" method="POST">
		<input type="hidden" id="url" name="username" value="" />
	</form>
</body>
</html>