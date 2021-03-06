<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html lang=''>
<head>
<title>Trainee Profile</title>
<meta charset='utf-8'>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/reset.css"
	type="text/css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/TraineeProfile.css"
	type="text/css">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/tabs.css"
	type="text/css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/form.css"
	type="text/css">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/jquery/jquery-1.10.2.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/jquery/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/jquery/jquery-ui-1.10.4.custom.js"></script>
<!--color-->
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/accordion.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/AddDel.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/jquery/jquery.iconmenu.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/include.js"></script>
	
	<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/Validations/TraineeProfile.js"></script>

<script type="text/javascript">
jQuery(document).ready(function () {
  
    jQuery(".acord .skip").click(function () {
        var $nextContent = jQuery(this).parent().next().next();
        jQuery(".acord .acord_cont").slideUp("fast", function () {
       
            $nextContent.show()
        });
        jQuery(".acord .acord_cont").hasClass().next().slideDown("fast", function () {
            
            $nextContent.show()
        });
     
    });
});

</script>

<script type="text/javascript">
$(document).ready(function () {
    $('.next1').on('click', function(event){
        event.preventDefault();
        // create accordion variables
        var accordion = $(this);
        var accordionContent = accordion.next('.acord_cont');

        // toggle accordion link open class
        accordion.toggleClass("open");
        // toggle accordion content
        accordionContent.slideToggle(250);

    });
});
</script>
<script type="text/javascript">
function TNPload(){
	$("#home-content").load("<%=request.getContextPath()%>/trainprofile", function(responseText, statusText, xhr)
	        {
	                if(statusText == "success")
	                        /*  alert("Successfully loaded the content!");  */
	                if(statusText == "error")
	                        alert("An error occurred: " + xhr.status + " - " + xhr.statusText);
	        });
	
}


function TNSload(){
	$("#home-content").load("<%=request.getContextPath()%>/TrainSetting", function(responseText, statusText, xhr)
	        {
	                if(statusText == "success")
	                        /*  alert("Successfully loaded the content!");  */
	                if(statusText == "error")
	                        alert("An error occurred: " + xhr.status + " - " + xhr.statusText);
	        });
	
}




</script>
</head>
<body style="min-width: 960px;" onload="TNPload();">
	<%@include file="../../layouts/Header-1.jsp"%>
	<div class="container">
		<div class=" container-form-wrapar">
			<div class="banner"></div>
			<div style="margin-top: 0px;" id="w" class="clearfix">
				<ul id="sidemenu">
					<li><a href="" onclick="TNPload();" class="open"><strong>Profile</strong></a>
					</li>

					<li><a href="" onclick="TNIload();"><strong>Insights</strong></a></li>

					<li><a href="" onclick="TNSload();"><strong>Settings</strong></a></li>

					<li><a href=""><strong>Send SMS</strong></a></li>
					<li><a href=""><strong>Send Email</strong></a>
					</li>
				
				</ul>
				<div id="content">
					<div id="home-content" class="contentblock">
						<!--<h1>Update Profile</h1>-->
				

					</div>
					<!-- @end #home-content -->


					
				</div>
			</div>
			<!-- @end #w -->

			<script>
				$('#acord1').accordion({
					collapsible : true
				});

				$('#acord2').accordion({
					collapsible : true
					
				});
			</script>


		</div>
	</div>
	<%@include file="../../layouts/footer.jsp"%>
</body>
</html>
