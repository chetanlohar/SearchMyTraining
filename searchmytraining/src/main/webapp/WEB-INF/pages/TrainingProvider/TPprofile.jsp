<%@page import="javax.xml.ws.handler.MessageContext.Scope"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page
	import="com.searchmytraining.dto.TrainerDTO,com.searchmytraining.entity.UserEntity"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/AddDel.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/js/Validations/TrainingProProfile.js"></script>
<script type="text/javascript">
	jQuery(document).ready(
			function() {

				jQuery(".acord .skip").click(
						function() {
							var $nextContent = jQuery(this).parent().next()
									.next();
							jQuery(".acord .acord_cont").slideUp("fast",
									function() {

										$nextContent.show()
									});
							jQuery(".acord .acord_cont").hasClass().next()
									.slideDown("fast", function() {

										$nextContent.show()
									});
						});
			});
</script>

<script
	src="<%=request.getContextPath()%>/resources/js/work/InstituteJS.js"></script>
<script type="text/javascript">
	$('#acord1').accordion({
		collapsible : true
	});
</script>

</head>
<body>
	<input id="userid" type="hidden" name="userid" value="${user.userId}">
	<div id="acord1" class="acord">
		<h3 class="acord_head plus">
		<span></span>
		Institute Information</h3>
		<div class="acord_cont">
			<form action="#" method="post" id="form1">
				<div class="name">
					<label>Institute/Organization Name :</label> <input id="org_name"
						type="text" name="org_name"	value="${trainerdto.org_name}" /> <span id="error73"></span>
				</div>
				<div class="name">
					<label>Year Of Establishment :</label> <input
						id="yearofestablishment" type="text" name="yearofestablishment" onkeypress="return validate15(event);"/> <span
						id="error74"></span>
				</div>
				<div class="methodology">
					<label>Training Methodology :</label> <input
						id="training_methodology" type="text" name="training_methodology" />
						<span id="error75"></span>
				</div>
				<div class="name">
					<label>Hours Of Operations :</label> <input id="hrsofoperations"
						type="text" name="hrsofoperations" /> <span id="error76"></span>
				</div>
				<div class="history">
					<label>Organization History :</label>
					<textarea id="history" name="history"></textarea>
				</div>
				<div class="w-days">
					<label>Working Days :</label> <input id="sunday" type="checkbox"
						name="workingdays" />S <input id="monday" type="checkbox"
						name="workingdays" />M <input id="tuesday" type="checkbox"
						name="workingdays" />T <input id="wednesday" type="checkbox"
						name="workingdays" />W <input id="thursday" type="checkbox"
						name="workingdays" />T <input id="friday" type="checkbox"
						name="workingdays" />F <input id="saturday" type="checkbox"
						name="workingdays" />S
				</div>
				<%-- <input class="skip" type="button" value="Save & Continue" onclick="saveInstituteDetails('<%=request.getContextPath() %>');" />	 --%>
			</form>
			<input class="skipbtn4 plus" type="button" value="Save & Continue" name="save"
				form="form1"
				onclick="saveInstituteDetails('<%=request.getContextPath()%>'); trainingProValidate();" />
			<input class="skip plus" id="skip3" type="button" value="Skip" name="skip" />
		</div>

		<h3 class="acord_head">
		<span></span>
		Institute Contact Details</h3>
		<div class="acord_cont">
			<form class="multi" id="ContactDetailsForm">
				<div class="name">
					<label>Institute Email:</label> <input id="instituteEmail" type="text"
						name="instituteEmail" value="${trainerdto.email}">
						<span id="error77"></span>
				</div>
				<div class="name">
					<label>Website:</label> <input id="institutewebsitename"
						type="text" name="website"> <span id="error78"></span>
						<span id="error78"></span>
				</div>
				<div class="name">
					<label>Contact Person Name:</label> <input id="contactpersonname"
						type="text" name="website" value=""> <span id="error79"></span>
				</div>
				<!--<div class="seperate">-->
				<div id="achiv">
					<p>
						<label>Institute Contact: </label> 
						<select id="phonetypeid0">
							<option value="0" name="contact">--Select--</option>
							<option value="1">OFFICE-MOBILE</option>
							<option value="2">OFFICE-LANDLINE</option>
							<option value="3">PERSONAL-MOBILE</option>
							<option value="4">PERSONAL-LANDLINE</option>
							<option value="5">FAX</option>
							<option value="6">TOLL FREE</option>
						</select> <input id="institutecontact85" type="text" name="institutecontact85" onkeypress="return validate15(event)"
							value="${trainerdto.contact}">
					<input type="button" value="+" class="addScnt">
					<input type="hidden" id="rowtot" name="rowtot" value="1">
					</p>
					<span id="errorphonetypeid0"></span>
					<span id="error85"></span>
				</div>
				<%-- <input class="skip" type="button" value="Save & Continue" onclick="saveInstituteContactDetails('<%=request.getContextPath() %>');"/> --%>
			</form>
			<input class="skipbtn5" type="button" value="Save & Continue" name="save"
				form="ContactDetailsForm"
				onclick="saveInstituteContactDetails('<%=request.getContextPath()%>');trainingProValidate1();" />
			<input class="skip" id="skip3" type="button" value="Skip" name="skip" />
		</div>
		<h3 class="acord_head">
		<span></span>
		Institute Locations</h3>
		<div class="acord_cont" id="InstituteLocationForm">
			<form action="#">
				<div class="name">
					<label>Building No./Flat No./Society No. :</label> <input
						id="bldng_flatno" type="text" name="bldng_flatno" />
						<span id="error81"></span>
				</div>
				<div class="street">
					<label>Street :</label> <input id="street82" type="text"
						name="street82" />
						<span id="error82"></span>
				</div>
				<div class="land">
					<label>Landmark :</label> <input id="landmark83" type="text"
						name="landmark83" />
						<span id="error83"></span>
				</div>
				<div class="pin">
					<label>Pincode :</label> <input id="instituteLocPincode"
						type="text" name="instituteLocPincode" onkeypress="return validate15(event)"/>
						 <span id="error84"></span>
				</div>
				<div class="country">
					<label>Country :</label> <select id="tpcountry">
						<option value="0">--Country--</option>
						<option value="India">India</option>
						<option value="United States">United States</option>
						<option value="England">England</option>
						<option value="New Zealand">New Zealand</option>
						<option value="Pakistan">Pakistan</option>
					</select>
				</div>
				<span id="errortpcountry"></span>
				<div class="state">
					<label>State :</label> <select id="tpstate">
						<option value="0">--State--</option>
						<option value="Maharashtra">Maharashtra</option>
						<option value="Gujarat">Gujarat</option>
						<option value="Telangana">Telangana</option>
						<option value="Andra Pradesh">Andra Pradesh</option>
						<option value="Karnataka">Karnataka</option>
						<option value="Punjab">Punjab</option>
						<option value="Haryana">Haryana</option>
					</select>
				</div>
				<span id="errortpstate"></span>
				<div class="city1">
					<label>City :</label> <select id="tpcity">
						<option value="0">--City--</option>
						<option value="Pune">Pune</option>
						<option value="Mumbai">Mumbai</option>
						<option value="Nagpur">Nagpur</option>
						<option value="Nashik">Nashik</option>
					</select>
				</div>
				<span id="errortpcity"></span>
			</form>
			<input class="skipbtn6" type="button" value="Save & Continue"
				form="InstituteLocationForm"
				onclick="saveLocationDetails('<%=request.getContextPath()%>');" />
			<input class="skip" id="skip3" type="button" value="Skip" name="skip" />
		</div>
		<h3 class="acord_head">
		<span></span>
		Achievement</h3>
		<div class="acord_cont">
			<form action="#" class="multi">
				<div id="achiv2">
					<p>
						<span>Award Name:</span> <input type="text" name="award" /> <span>Type:</span>
						<select>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
						</select> <span>Year Of Received:</span> <input style="width: 80px;"
							type="text" name="year" /> <input type="file" />
				          <input type="button" class="addAward" value="+">
					</p>
				</div>
			</form>
			<input class="skip" type="button" value="Save & Continue" name="save" />
			<input class="skip" id="skip3" type="button" value="Skip" name="skip" />
		</div>
		<h3 class="acord_head">
		<span></span>
		Professional Association</h3>
		<div class="acord_cont">
			<form id="professinalassociationform" method="post" class="multi">
				<div id="association">
					<p>
						<label>Association Name :</label> <input id="assocName86"
							type="text" name="assocName86" />
							<input type="button" class="addAsso" value="+">
					</p>
					&nbsp;&nbsp;&nbsp;&nbsp;
				<span id="error86"></span>
				</div>
				<br>
			</form>
			<br> <br> <input class="skipbtn8"
				form="professinalassociationform" type="button"
				value="Save & Continue"
				onclick="saveProfessionalAssociations('<%=request.getContextPath()%>');trainingProValidate3();" />
			<input class="skip" type="button" id="skip3" value="Skip" name="skip" />
		</div>


		<h3 class="acord_head">
		<span></span>
		Client Details</h3>
		<div class="acord_cont">
			<form id="clientdetailsform" class="multi" method="post">

				<div id="client">
					<p>
						<label>Key Client Name :</label> <input id="clientName1"
							type="text" name="clientName87" />
					<input type="button" value="+" class="addClient">
					</p>

					&nbsp;&nbsp;&nbsp;
					<span id="error87"></span>
				</div>
			</form>
			<input  type="button" value="Save & Continue" form="clientdetailsform"
				onclick="saveKeyClients('<%=request.getContextPath()%>');trainingProValidate4();" />
		</div>
	</div>
</body>
</html>