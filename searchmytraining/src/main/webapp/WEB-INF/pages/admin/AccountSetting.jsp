<%@page
	import="com.searchmytraining.dto.FreelancerDTO,com.searchmytraining.entity.UserEntity"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script type="text/javascript">
$('#acord1').accordion({
	collapsible : true
});

jQuery(document).ready(function () {
	  
    jQuery(".acord .skip").click(function () {
        var $nextContent = jQuery(this).parent().next().next();
        jQuery(".acord .acord_cont").slideUp("fast", function () {
       
            $nextContent.show()
        });
        jQuery(".acord ").next().slideDown("fast", function () {
            
            $nextContent.show()
        });
     

    });
}); 

</script>
</head>
<body>

	          <div id="acord1" class="acord">
		       <h3 class="acord_head">Training Provider</h3>
							<div class="acord_cont">
								<form action="#">
									<div class="oldpass">
										<label>Current Password :</label> <input type="password"
											name="name" />
									</div>
									<div class="newpass">
										<label>New Password :</label> <input type="password"
											name="name" />
									</div>
									<div class="conpass">
										<label>Confirm New Password :</label> <input type="password"
											name="name" />
									</div>

									<div class=save>
										<input type="button" value="Save" name="save" /> <input
											type="reset" value="Reset" name="Edit" />
									</div>
								</form>
							</div>

		          <h3 class="acord_head">Trainee</h3>
							<div class="acord_cont">
								<form action="#">
									<div class="oldpass">
										<label>Current Password :</label> <input type="password"
											name="name" />
									</div>
									<div class="newpass">
										<label>New Password :</label> <input type="password"
											name="name" />
									</div>
									<div class="conpass">
										<label>Confirm New Password :</label> <input type="password"
											name="name" />
									</div>

									<div class=save>
										<input type="button" value="Save" name="save" /> <input
											type="reset" value="Reset" name="Edit" />
									</div>
								</form>
							</div>

	            <h3 class="acord_head">Freelancer</h3>
							<div class="acord_cont">
								<form action="#">
									<div class="oldpass">
										<label>Current Password :</label> <input type="password"
											name="name" />
									</div>
									<div class="newpass">
										<label>New Password :</label> <input type="password"
											name="name" />
									</div>
									<div class="conpass">
										<label>Confirm New Password :</label> <input type="password"
											name="name" />
									</div>

									<div class=save>
										<input type="button" value="Save" name="save" /> <input
											type="reset" value="Reset" name="Edit" />
									</div>
								</form>
							</div>
		
	</div>
</body>
</html>