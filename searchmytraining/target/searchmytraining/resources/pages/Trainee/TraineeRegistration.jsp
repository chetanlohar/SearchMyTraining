<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Trainee Registration</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/pop-up.css"
	type="text/css">
<script src="<%=request.getContextPath()%>/resources/js/pop-up.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/popup-box.js"></script>
<script type="">
 $(function() {
                $('#selType').change(function() {
                    $('#Answers > div').hide();
                    $('#Answers').find('#' + $(this).val()).show();
                });
            });
</script>
</head>

<div id="pop_up_box_2">
	<a class="b-close"><img
		src="<%=request.getContextPath()%>/resources/images/images.png"></a>
	<div class="reg_form">
		<div class="head">
			<img src="<%=request.getContextPath()%>/resources/images/user_1.png"
				alt="register">
		</div>
		<form action="<%=request.getContextPath()%>/trainee_reg" name="myform"
			method="post" onsubmit="return (validation());">
			<h2>Registration</h2>
			<div class=type>
				<!-- <label>Trainee Type: </label>  -->
				 <select id="selType">
					<option>----Trainee Type:---</option>
					<option value="type1">Corporate</option>
					<option value="type2">Individual</option>
				</select>
			</div>
			<div id="Answers">
			<div id="type1" style="display: none;">
			<input type="text" name="" placeholder="Corporate Name" />
			</div>
			</div>
			<div class="name">
				<input type="text" autocomplete="off" name="Name" value=""
					placeholder="Full Name" required="">
			</div>

			<div class="contact">
				<input type="text" name="contact" value="" placeholder="Contact No."
					required="">
			</div>
			<div class="mailto">
				<input type="text" autocomplete="off" name="Email" value=""
					placeholder="Email Id" required="">
			</div>
			<div class="password">
				<input type="password" autocomplete="off" name="Password" value=""
					placeholder="Enter Password" required="">
			</div>
			<div class="password">
				<input type="password" autocomplete="off" name="CnfmPassword"
					value="" placeholder="Confirm Password" required="">
			</div>
			<div class="sign">
				<input type="submit" name="Submit" value="Submit"> <input
					type="reset" name="Cancel" value="Cancel">
				<!--<a href="#login_form" class="login_pop">LogIn</a>-->
			</div>

		</form>
	</div>
</div>


</body>
</html>