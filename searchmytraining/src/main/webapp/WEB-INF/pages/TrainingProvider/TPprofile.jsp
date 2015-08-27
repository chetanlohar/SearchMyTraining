<%@page import="javax.xml.ws.handler.MessageContext.Scope"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page
	import="com.searchmytraining.dto.TrainerDTO,com.searchmytraining.entity.UserEntity"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link
	href="<%=request.getContextPath()%>/resources/css/font-awesome.min.css"
	rel="stylesheet" type="text/css"> 
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/AddDel.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/js/Validations/TrainingProProfile.js"></script>

<script type="text/javascript" src="./resources/js/work/categories.js"></script>
<script	src="./resources/js/work/updatetrainerprofile.js"></script>
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
				var jsonstates = '${states}';
			 	var jsoncities = '${cities}';
			 	var states = $.parseJSON(jsonstates);
			 	var cities = $.parseJSON(jsoncities);
			 	var country_value = '${location.city.state.country.countryId}';
			 	var state_value = '${location.city.state.stateId}';
			 	var city_value = '${location.city.cityId}';
			 	loadLocationInfo(states,cities,state_value,city_value);
				
			});
</script>

<script
	src="<%=request.getContextPath()%>/resources/js/work/InstituteJS.js"></script>
<script type="text/javascript">
	$('#acord1').accordion({
		collapsible : true
	});
	
	function changeImage(input) {
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        var phototgraph = '${instituteinfo.institutelogo}';
	        reader.onload = function(e) {
	        	if(phototgraph)
	            	$('#profilepic_curr').attr('src', e.target.result);
	        	else
	        		$('#profilepic_avtar').attr('src', e.target.result);
	        };
	        reader.readAsDataURL(input.files[0]);
	    }
	}
	
	
</script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="<%=request.getContextPath()%>/resources/js/jquery/jquery-ui-1.10.4.custom.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/work/trainingcategory.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">
<style>
.custom-combobox {
	position: relative;
	display: inline-block;
}

.custom-combobox-toggle {
	position: absolute;
	top: 0;
	bottom: 0;
	margin-left: -1px;
	padding: 0;
}

.custom-combobox-input {
	margin: 0;
	padding: 5px 10px;
}
</style>
<script>
	(function($) {
		$
				.widget(
						"custom.combobox",
						{
							_create : function() {
								this.wrapper = $("<span>").addClass(
										"custom-combobox").insertAfter(
										this.element);

								this.element.hide();
								this._createAutocomplete();
								this._createShowAllButton();
							},

							_createAutocomplete : function() {
								var selected = this.element
										.children(":selected"), value = selected
										.val() ? selected.text() : "";

								this.input = $("<input>")
										.appendTo(this.wrapper)
										.val(value)
										.attr("title", "")
										.addClass(
												"custom-combobox-input ui-widget ui-widget-content ui-state-default ui-corner-left")
										.autocomplete({
											delay : 0,
											minLength : 0,
											source : $.proxy(this, "_source")
										}).tooltip({
											tooltipClass : "ui-state-highlight"
										});

								this._on(this.input, {
									autocompleteselect : function(event, ui) {
										ui.item.option.selected = true;
										this._trigger("select", event, {
											item : ui.item.option
										});
									},

									autocompletechange : "_removeIfInvalid"
								});
							},

							_createShowAllButton : function() {
								var input = this.input, wasOpen = false;

								$("<a>")
										.attr("tabIndex", -1)
										.attr("title", "Show All Items")
										.tooltip()
										.appendTo(this.wrapper)
										.button(
												{
													icons : {
														primary : "ui-icon-triangle-1-s"
													},
													text : false
												})
										.removeClass("ui-corner-all")
										.addClass(
												"custom-combobox-toggle ui-corner-right")
										.mousedown(
												function() {
													wasOpen = input
															.autocomplete(
																	"widget")
															.is(":visible");
												}).click(function() {
											input.focus();

											// Close if already visible
											if (wasOpen) {
												return;
											}

											// Pass empty string as value to search for, displaying all results
											input.autocomplete("search", "");
										});
							},

							_source : function(request, response) {
								var matcher = new RegExp($.ui.autocomplete
										.escapeRegex(request.term), "i");
								response(this.element
										.children("option")
										.map(
												function() {
													var text = $(this).text();
													if (this.value
															&& (!request.term || matcher
																	.test(text)))
														return {
															label : text,
															value : text,
															option : this
														};
												}));
							},

							_removeIfInvalid : function(event, ui) {

								// Selected an item, nothing to do
								if (ui.item) {
									return;
								}

								// Search for a match (case-insensitive)
								var value = this.input.val(), valueLowerCase = value
										.toLowerCase(), valid = false;
								this.element
										.children("option")
										.each(
												function() {
													if ($(this).text()
															.toLowerCase() === valueLowerCase) {
														this.selected = valid = true;
														return false;
													}
												});

								// Found a match, nothing to do
								if (valid) {
									return;
								}

								// Remove invalid value
								this.input.val("").attr("title",
										value + " didn't match any item")
										.tooltip("open");
								this.element.val("");
								this._delay(function() {
									this.input.tooltip("close").attr("title",
											"");
								}, 2500);
								this.input.autocomplete("instance").term = "";
							},

							_destroy : function() {
								this.wrapper.remove();
								this.element.show();
							}
						});
	})(jQuery);

	$(function() {
		$("#combobox").combobox();
		$("#toggle").click(function() {
			$("#combobox").toggle();
		});
	});
</script>


</head>
<body>
	<div id="acord1" class="acord">
		<h3 class="acord_head plus">
		<span></span>
		Institute Information</h3>
		<div class="acord_cont">
			<form action="${pageContext.request.contextPath}/uploadInstituteLogo" method="post" id="form1" enctype="multipart/form-data">
			<input id="userid" type="hidden" name="userid" value="${trainer.user.userId}">
				<div class="name">
					<label>Institute/Organization Name :</label>
					<c:if test="${not empty instituteinfo.companyName}">
						<input id="org_name" type="text" name="org_name" value="${instituteinfo.companyName}" />
					</c:if> 
					<c:if test="${empty instituteinfo.companyName}">
						<input id="org_name" type="text" name="org_name" value="${trainer.org_name}" />
					</c:if>
					<span id="error73"></span>
				</div>
				<div class="name">
					<label>Year Of Establishment :</label> <input
						id="yearofestablishment" type="text" name="yearofestablishment" onkeypress="return validate15(event);" value="${instituteinfo.yrofEstablmnt}"/> <span
						id="error74"></span>
				</div>
				<div class="methodology">
					<label>Training Methodology :</label> <input
						id="training_methodology" type="text" name="training_methodology" value="${instituteinfo.trngMethodology}"/>
						<span id="error75"></span>
				</div>
				<div class="name">
					<label>Hours Of Operations :</label> <input id="hrsofoperations"
						type="text" name="hrsofoperations" value="${instituteinfo.hrsOfOpertn}"/> <span id="error76"></span>
				</div>
				<div class="history">
					<label>Organization History :</label>
					<textarea id="history" name="history" >${instituteinfo.historyOfCompany}</textarea>
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
				<div class="photo">
				 <c:if test="${!empty instituteinfo.institutelogo}">
				 	<img src="${pageContext.request.contextPath}/common/downloadPicture/${trainer.user.userId}" id="profilepic_curr" name="profilepic" width="140" height="160" border="0" alt="PROFILE PICTURE" onError="this.src= ${pageContext.request.contextPath}/resources/images/avtar.jpg ;" />
				 </c:if>
				 <c:if test="${empty instituteinfo.institutelogo}">
				 	<img src="${pageContext.request.contextPath}/resources/images/avtar.jpg" id="profilepic_avtar" name="profilepic" width="140" height="160" border="0" alt="PROFILE PICTURE" onError="this.src=${pageContext.request.contextPath}/resources/images/avtar.jpg ;" />
				 </c:if>
				
				
				<div class="fileUpload btn btn-primary">
                	<span>Upload Photo</span>
                		<input type="file" id="fileupload" class="upload" name="picture" style="visibility: visible" onchange="changeImage(this);"/>         
                </div>
				</div>
				<%-- <input class="skip" type="button" value="Save & Continue" onclick="saveInstituteDetails('<%=request.getContextPath() %>');" />	 --%>
			</form>
			<input class="skipbtn4 plus" type="button" value="Save & Continue" name="save" form="form1"
				onclick="saveInstituteDetails('<%=request.getContextPath()%>'); trainingProValidate();" />
			<input class="skip plus" id="skip3" type="button" value="Skip" name="skip" />
		</div>

		<h3 class="acord_head">
		<span></span>
		Institute Contact Details</h3>
		<div class="acord_cont">
			<form class="multi" id="ContactDetailsForm">
				<div class="name">
					<label>Institute Email:</label> 
					<input id="instituteEmail" type="text" name="instituteEmail" value="${contactinfo.emailId}">
					<%-- <a href="${pageContext.request.contextPath}/request/verify/email">verify</a> --%>
					<a href="#" onclick="verifyEmail();">verify</a>
					<span id="error77"></span>
				</div>
				<div class="name">
					<label>Website:</label> <input id="institutewebsitename"
						type="text" name="website" value="${contactinfo.website}"> <span id="error78"></span>
						<span id="error78"></span>
				</div>
				<div class="name">
					<label>Contact Person Name:</label> <input id="contactpersonname"
						type="text" name="website" value="${contactinfo.cntcPersName}"> <span id="error79"></span>
				</div>
				<!--<div class="seperate">-->
				<div id="achiv">
					<p>
						<label>Institute Contact: </label>
						<input id="phonesSize" type="hidden" value="${fn:length(phones)}"/>
						<c:set var="countPhones" value="1" scope="page" />
						<c:set var="phonevalueids" value="" />
						<c:set var="flag" value=""/>
						<c:forEach var="phone" items="${phones}">
							<select id="phonetypeid${countPhones}">
								<option value="0">--Select--</option>
								<c:forEach var="phonetype" items="${phonetypes}">
									<c:choose>
										<c:when test="${phone.phonetype.phnTypeId == phonetype.phnTypeId}">
											<option value="${phonetype.phnTypeId}" selected>${phonetype.phnTypeName}</option>
											<%-- <input type="hidden" id="phonetypeids${countPhones}" value="${phonetype.phnTypeId}" /> 
											<input type="hidden" id="phonenumids${countPhones}" value="${phone.phoneId}" /> --%>
										</c:when>
										<c:otherwise>
											<option value="${phonetype.phnTypeId}">${phonetype.phnTypeName}</option>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</select>
							<input id="institutecontact${countPhones}" type="text" name="institutecontact85" onkeypress="return validate15(event)" value="${phone.phoneValue}">
							<c:set var="countPhones" value="${countPhones+1}" scope="page" />
						</c:forEach> 
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
				onclick="saveInstituteContactDetails();trainingProValidate1();" />
			<input class="skip" id="skip3" type="button" value="Skip" name="skip" />
		</div>
		<h3 class="acord_head">
		<span></span>
		Institute Locations</h3>
		<div class="acord_cont" id="InstituteLocationForm">
			<form action="#">
				<div class="name">
					<label>Building No./Flat No./Society No. :</label> <input
						id="bldng_flatno" type="text" name="bldng_flatno" value="${location.buildingNo}"/>
						<span id="error81"></span>
				</div>
				<div class="street">
					<label>Street :</label> <input id="street82" type="text"
						name="street82" value="${location.street}"/>
						<span id="error82"></span>
				</div>
				<div class="land">
					<label>Landmark :</label> <input id="landmark83" type="text"
						name="landmark83" value="${location.landmark}"/>
						<span id="error83"></span>
				</div>
				<div class="pin">
					<label>Pincode :</label> <input id="instituteLocPincode"
						type="text" name="instituteLocPincode" onkeypress="return validate15(event)" value="${location.pincode}"/>
						 <span id="error84"></span>
				</div>
				<div class="country">
					<label>Country :</label> 
					<select id="countryid" onchange="getStates();">
						<option value="0">--Select--</option>
						<c:forEach var="country" items="${countries}">
							<c:choose>
								<c:when test="${country_value == country.countryId}">
									<option value="${country.countryId}" selected>${country.countryName}</option>
								</c:when>
								<c:otherwise>
									<option value="${country.countryId}">${country.countryName}</option>
								</c:otherwise>
							</c:choose>
							
						</c:forEach>
					</select>
				</div>
				<span id="errortpcountry"></span>
				<div class="state">
					<label>State :</label> 
					<select id="stateid" onchange="getCities()">
						<option value="0">--Select--</option>
					</select>
				</div>
				<span id="errortpstate"></span>
				<div class="city1">
					<label>City :</label> 
					<select id="cityid">
						<option value="0">--Select--</option>
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
						<span>Award Name:</span> 
						<input type="text" name="award" /> <span>Type:</span>
						<select>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
						</select> <span>Year Of Received:</span> 
						<input style="width: 80px;"
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
						<label>Association Name :</label> 
						<input id="assocNameSize" type="hidden" value="${fn:length(profassoc)}"/>
						<c:set var="count" value="1" scope="page" />
						<c:forEach var="assoc" items="${profassoc}">
							<input id="assocName${count}" type="text" name="assocName${count}" value="${assoc.assocName}"/>
							<input id="profassocid${count}" type="hidden" name="profassocid${count}" value="${assoc.asscoId}"/>
							<%-- <a href="#" id="remScnt${count}" class="remScnt"> <img style="margin-left:5px;margin-top:5px;float:left;" src="resources/images/Cancel-128.png"></a> --%>
							<c:set var="count" value="${count+1}" scope="page" />
						</c:forEach>
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
						<label>Key Client Name :</label> 
						<input id="clientSize" type="hidden" value="${fn:length(clientlist)}"/>
						<c:set var="count_client" value="1" scope="page" />
						<c:forEach var="client" items="${clientlist}">
							<input id="clientName${count_client}"	type="text" name="clientName${count_client}" value="${client.clientName}"/>
							<input id="clientid${count_client}" type="hidden" name="clientid${count_client}" value="${client.keyClientId}"/>
							<c:set var="count_client" value="${count_client+1}" scope="page" />
						</c:forEach>
					<input type="button" value="+" class="addClient">
					</p>
					&nbsp;&nbsp;&nbsp;
					<span id="error87"></span>
				</div>
			</form>
			<input  type="button" value="Save & Continue" form="clientdetailsform"
				onclick="saveKeyClients('<%=request.getContextPath()%>');trainingProValidate4();" />
		</div>
		<h3 class="acord_head">
		<span></span>
		Industry Type</h3>
		<div class="acord_cont">
			<form id="clientdetailsform" class="multi" method="post">
				<div id="client">
					<p>
						<label>Industry Type</label> <input id="clientName1"
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
		<h3 class="acord_head">
		<span></span>
		Training Experience</h3>
		<div class="acord_cont">
		<form>
		<div class="ui-widget">
			<label>Select Training Category: </label> 
			<select id="combobox">
				<option value="0">Select one...</option>
				<%-- <c:forEach var="training" items="${trainings}">
					<option value="${training.trnIndstrSubCatId}">${training.indstrSubCatName}</option>
				</c:forEach> --%>
				<option value="Java">Java</option>
				<option value="Java">Oracle</option>
				<option value="Java">Hadoop</option>
				<option value="Java">Testing</option>
			</select>
		</div>
		<!-- <button id="toggle">Show underlying select</button> -->
		<div class="exper">
		<label>Years of Experience:</label> <input type="text" id="exp" /> 
		<input type="button" value="Add" id="addebtn" onclick="addTrainingCategory('${pageContext.request.contextPath}/tp/addTC/${userId}');"/> 
		<input type="reset" class="restex" value="Reset" />
		</div>
	</form>
	<br>
	<br>
	<table id="myTable">
		<tr>
			<th>Training Name</th>
			<th>Experience</th>
			<th>Links</th>
		</tr>
		<tr>
		<td>Java</td>
		<td>5</td>
		<td><i class="fa fa-edit"></i>|<i class="fa fa-trash"></i></td>
		
		
		</tr>
		<%-- <c:forEach var="selectedtraining" items="${selectedTraningCats}">
			<tr>
				<td>${selectedtraining.subcatentity.indstrSubCatName}</td>
				<td>${selectedtraining.exp}</td>
				<td><a href='#'>edit</a>|<a href='#'>delete</a></td>
			</tr>
		</c:forEach> --%>
	</table>
		</div>
		
		
	</div>
</body>
</html>