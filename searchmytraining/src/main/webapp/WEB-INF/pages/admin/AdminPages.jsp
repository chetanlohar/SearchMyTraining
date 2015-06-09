<%-- <%@page import="javax.xml.ws.handler.MessageContext.Scope"%> --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.searchmytraining.dto.FreelancerDTO,com.searchmytraining.entity.UserEntity"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html lang=''>
<head>
<title>Admin</title>
<meta charset='utf-8'>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/reset.css"
	type="text/css">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/tabs.css"
	type="text/css">
	
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/form.css"
	type="text/css">
	<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/AdminCalender.css">
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


function FLCload() {
	$("#home-content").load("<%=request.getContextPath()%>/manageCalender", function(responseText, statusText, xhr)
	        {
	                if(statusText == "success")
	                        /* alert("Successfully loaded the content!"); */
	                if(statusText == "error")
	                        alert("An error occurred: " + xhr.status + " - " + xhr.statusText);
	        });
	
}

function FSIload() {
	$("#home-content").load("<%=request.getContextPath()%>/manageTrainings", function(responseText, statusText, xhr)
			
	        {
	                if(statusText == "success")
	                        /* alert("Successfully loaded the content!"); */
	                if(statusText == "error")
	                        alert("An error occurred: " + xhr.status + " - " + xhr.statusText);
	        });
	
}

function FLSload() {
	$("#home-content").load("<%=request.getContextPath()%>/manageServices", function(responseText, statusText, xhr)
	        {
	                if(statusText == "success")
	                        /* alert("Successfully loaded the content!"); */
	                if(statusText == "error")
	                        alert("An error occurred: " + xhr.status + " - " + xhr.statusText);
	        });
	}

function AMCload() {
	$("#home-content").load("<%=request.getContextPath()%>/manageCareer", function(responseText, statusText, xhr)
	        {
	                if(statusText == "success")
	                        /* alert("Successfully loaded the content!"); */
	                if(statusText == "error")
	                        alert("An error occurred: " + xhr.status + " - " + xhr.statusText);
	        });
	}
</script>
<style>
.container .container-form-wrapar{
width: 100%;
box-shadow:none;
}
</style>
</head>
<body style="min-width: 960px;" onload="FLCload(); ">

<input id= "myhiddenid" type="hidden" value="${requestScope.freelancerDto.name12}"/>


	<%@include file="../../layouts/Header-1.jsp"%>
	<div class="container">
		<div class="container-form-wrapar">
			<div class="space"></div>
			<div style="margin-top: 0px;" id="w" class="clearfix">
				<ul id="sidemenu">
					
					<li><a href=""  onclick="FLCload();" class="open"><strong>Calender Details</strong></a></li>
					<li><a href="" onclick="FSIload();"><strong>Manage Trainings</strong></a></li>

					<li><a href="" onclick="FLSload();"><strong>Manage Services</strong></a></li>

					<li><a href="" onclick="AMCload();"><strong>Manage Career</strong></a></li>
					
				</ul>
				<div id="content">
					<div id="home-content" class="contentblock">
						<!--<h1>Update Profile</h1>-->


					</div>
					<!-- @end #home-content -->


					<div id="about-content" class="contentblock hidden">

						<p>ygygiugyi</p>
					</div>

					<div id="ideas-content" class="contentblock hidden">
						
					</div>


					<div id="contact-content" class="contentblock hidden">
						<h1>ooioioi</h1>
					</div>
					<!-- @end #contact-content -->
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
