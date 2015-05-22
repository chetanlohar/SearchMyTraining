<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/AddDel.js"></script>
		<script
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
<script	src="<%=request.getContextPath()%>/resources/js/work/InstituteJS.js"></script>
<script type="text/javascript">

$('#acord1').accordion({
	collapsible : true
});
</script>
<script	src="<%=request.getContextPath()%>/resources/js/work/categories.js"></script>
</head>
<body>
	<input id="userid" type="hidden" value="${sessionScope.userid}">
	<div id="acord1" class="acord">
		<h3 class="acord_head">Personal Details</h3>
		<div class="acord_cont">
			<form action="#">
				<div class="name">
					<label>Full Name :</label> <input id="name" type="text" name="name"
						value="${traineedto.name}" onkeypress="return validateName(event);"/>
						<span id="error51"></span>
				</div>
				<!-- 									<div class="name">
										<label>Middle Name :</label> <input id="midname" type="text" name="name" />
									</div>
									<div class="name">
										<label>Last Name :</label> <input id="lname" type="text" name="name" />
									</div>
 -->
				<div class="email">
					<label>Email Id :</label> <input id="email" type="text"
						name="email" value="${traineedto.email}" />
						<span id="error52"></span>
				</div>
				<div class="contact">
					<label>Phone No :</label> <input id="contact" type="text"
						name="phone" value="${traineedto.contact}" onkeypress="return validate13(event);"/>
				<span id="error53"></span>
				</div>

			</form>
			<input class="skipbtn1" type="button" value="Save & Continue" name="save" onclick="return validationTProf();"/>
			<input class="skip" type="button" value="Skip" name="skip" id="skip1"/>
		</div>

		<h3 class="acord_head">Employment Details</h3>
		<div class="acord_cont">
			<form class="multi" name="employmentdet">
				<div class="emptype">
					<label>Employment Type :</label> 
					<select id="employmenttype">
						<option value="0">--Select--</option>
						<option value="Full Time">Full Time</option>
						<option value="Part Time">Part Time</option>
						<!-- <option value="emptype3">C</option> -->
					</select>
					<span id="erroremp"></span>
				
				</div>
				<div class="industry">
					<label> Industry :</label> 
					<select id="tindustry">
						<option value="0">--Select--</option>
						<c:forEach var="industry" items="${industries}">
							<option value="${industry.trnIndstrId}"
								onclick="industryCategory(${industry.trnIndstrId},'<%=request.getContextPath()%>');">${industry.indstrName}</option>
						</c:forEach>
					</select>
					<span id="errorindustry"></span>
				</div>
				<div class="funArea">
					<label>Functional Area  :</label>
					<select id="industrycatid" onchange="industrySubCategory('<%=request.getContextPath()%>')">
						<option value="0">--Select--</option>
					</select>
					<span id="errorfunarea"></span>
									
				</div>
				<div id="industrycatid1" class="employer">
					<label>Specialization  :</label> 
					<select id="industrysubcatid">
						<option value="0">--Select--</option>
					</select>
					<span id="errorspecialization"></span>
				</div>
				<div class="employer">
					<label>Employer:</label> <input type="text" name="employer"
						id="employer">
						<span id="error506"></span>
				</div>
				<div class="jobProf">
					<label>Job Profile </label>
					<textarea id="jobprofileid" type="text" name="jobprof"></textarea>
					<span id="errorjobprofile"></span>
				</div>
			</form>
			<input class="skipbtn2" type="button" value="Save & Continue" name="save" onclick="tProf4('<%=request.getContextPath()%>')"/>
			<input class="skip" type="button" value="Skip" name="skip" id="skip1"/>
		</div>


		<h3 class="acord_head">Location Details</h3>
		<div class="acord_cont">
			<form action="" class="multi">
				<div class="flatNo">
					<label>Building No./Flat No./Society No. :</label> <input
						type="text" id="flatno54" name="name" />
						<span id="error54"></span>	
				</div>
				<div class="street">
					<label>Street :</label> <input type="text" id="street55" name="name" />
					<span id="error55"></span>
				</div>
				<div class="landmark">
					<label>Landmark :</label> <input type="text" id="landm56" name="name" />
					<span id="error56"></span>
				</div>
				<div class="pin">
					<label>Pincode :</label> <input type="text" id="pin57" name="name" onkeypress="return validate13(event)"/>
				    <span id="error57"></span>
				</div>
				
				<div class="country">
					<label>Country :</label> 
					<select id="countryid">
						<option value="0">--Select--</option>
						<c:forEach var="country" items="${countries}">
							<option value="${country.countryId}" onclick="getStates(${country.countryId},'<%=request.getContextPath()%>');">${country.countryName}</option>
						</c:forEach>
					</select>
				</div>
				<span id="errorcountry"></span>
				<div class="state">
					<label>State :</label> 
					<select id="stateid" onchange="getCities('<%=request.getContextPath()%>')">
						<option value="0">--Select--</option>
					</select>
	     		</div>
	     		<span id="errorstate"></span>
	     		
				<div class="city">
					<label>City :</label> 
					<select id="cityid">
						<option value="0">--Select--</option>
					</select>
				</div>
				<span id="errorcity"></span>
                               
			</form>
			<input class="skipbtn3" type="button" value="Save & Continue" name="save" onclick="saveTraineeLocationDetails('<%=request.getContextPath()%>');"/>
			<input class="skip" type="button" value="Skip" name="skip" id="skip1"/>

		</div>

		<h3 class="acord_head">Contact Details</h3>
		<div class="acord_cont">
			<form name="traineecontactdet">
				<div id="cont">
					<p>
						<label>Contact No : </label> <select id="traineephoneid1">
							<option value="0">--Select--</option>
							<option value="1">OFFICE-MOBILE</option>
							<option value="2">OFFICE-LANDLINE</option>
							<option value="3">PERSONAL-MOBILE</option>
							<option value="4">PERSONAL-LANDLINE</option>
						</select> <input type="text" name="contdetails58" id="traineephone1" onkeypress="return validate13(event)" value="${traineedto.contact}">
					<input class="details1" type="button" value="+" id="addcontact1">
					
					</p>
					<span id="errortcontact"></span>
				<span id="error58"></span>

				</div>
				<div class="website">
					<label>Website :</label> <input type="text" id="web59" name="web59" />
					<span id="error59"></span>
				</div>
				<br></br>

				<div class="secmail">
					<label>Secondary Mail :</label> <input type="text" id="smail60"
						name="smail60" /> <span id="error60"></span>
				</div>
				<br></br>
			</form>
			<input type="button" form="traineecontactdet" value="Save & Continue" name="save" onclick="traineeContactDet('<%=request.getContextPath()%>');"/>
		</div>
	</div>
</body>
</html>