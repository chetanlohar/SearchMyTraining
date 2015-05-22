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
<script src="<%=request.getContextPath()%>/resources/js/Validations/Fvalidation.js"></script>

</head>

<script type="text/javascript">
	 function freelancerRegistration(path) {
		var flag = validation12();
		//alert('flag '+flag);
		if(flag){
			
		try {

			$.ajax({

				url : path+'/freelaancer_reg',

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
					window.location.href="<%=request.getContextPath()%>/freelancer_updateprofile";
					
				}
			});

		} catch (ex) {

			alert(ex);

		}

	} 
		
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
			<form id="FreelancerRegistration"
				name="myform" method="post" onsubmit="return (validation12());">
				<h2>Registration</h2>
				<div class="name">
					<input type="text" autocomplete="off" name="name" id="name12"
						placeholder="Full Name" >
				</div>
				<span id="error11"></span>
				<select id="City_name12">
					<option value="0">Select City</option>
					<option value="Pune">Pune</option>
					<option value="Mumbai">Mumbai</option>
					<option value="Nagpur">Nagpur</option>
					<option value="Solapur">Solapur</option>
				</select>
				<span id="error12"></span>
				<!--  <div class="name">
                        <input type="text" autocomplete="off" name="training_type" value="" placeholder="Training Type" required="">
                    </div> -->
				<div class="contact">
					<input type="text" name="contact" autocomplete="off" id="contact12"
						placeholder="Contact No." onkeypress="return validate12(event)" >
				</div>
				<span id="error13"></span>
				<div class="mailto">
					<input type="text" autocomplete="off" name="email" id="email12"
						placeholder="Enter Email Id" >
				</div>
				<span id="error14"></span>
				<div class="password">
					<input type="password" autocomplete="off" name="password"  id="password12"
						placeholder="Enter Password" >
				</div>
				<div id="Pass-chek12"><div id="meter12"></div><div id="meter13"></div> <div id="meter14"></div></div>
				
				
				<div class="password">
					<input type="password" autocomplete="off" name="cnfpassword" id="cnfpassword12"
						 placeholder="Confirm Password" >
				</div>
				<span id="error15"></span>
				<div class="sign">
					<!-- <input type="button" name="Submit" value="Submit" onclick="freelancerRegistration();validation12();"> --> 
					<input type="button" name="Submit" value="Submit" onclick="freelancerRegistration('<%=request.getContextPath()%>');">
					<input
						type="reset" name="Cancel" value="Cancel">
				</div>

			</form>
		</div>
	</div>
</body>
</html>