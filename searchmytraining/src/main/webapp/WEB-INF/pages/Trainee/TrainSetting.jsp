<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript">
	$('#acord3').accordion({
		collapsible : true
	});
</script>
</head>
<body>
	<div id="acord3" class="acord">
		<h3 class="acord_head">Change Password</h3>
		<div class="acord_cont">
			<form action="#">
				<div class="oldpass">
					<label>Current Password :</label> <input id="traineeopass"
						type="password" name="name" />
				</div>
				<div class="newpass">
					<label>New Password :</label> <input id="traineenpass"
						type="password" name="name" />
				</div>
				<div class="conpass">
					<label>Confirm Password :</label> <input id="traineecpass"
						type="password" name="name" />
				</div>

				<div class=save>
					<input type="button" value="Save" name="save" id="chngpass" /> <input
						type="reset" value="Edit" name="Edit" />
				</div>
			</form>
		</div>
	</div>
</body>
</html>