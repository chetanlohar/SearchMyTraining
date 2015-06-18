<%@page
	import="com.searchmytraining.dto.FreelancerDTO,com.searchmytraining.entity.UserEntity"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/AddDel.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/js/Validations/FreeLProfile.js"></script>
<script	src="<%=request.getContextPath()%>/resources/js/work/categories.js"></script>
<%-- <script	src="<%=request.getContextPath()%>/resources/js/work/freelance.js"></script> --%>
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

<%-- function freeEduDetails() {
	try {
		alert('Hi Jumanji');
		/* alert('degreeType '+$('#degreeType').val()+" qualification "+$('#qualification').val()+" university "+$('#university').val()+" yop "+$('#yop').val()); */
		$.ajax({

			url : '<%=request.getContextPath()%>/updateFreedetails',

			type : 'post',
			
			dataType : 'json',

			data : JSON.stringify({

				"degreeType" : $('#degreeType').val(),

				"qualification" : $('#qualification').val(),

				"eduSpecfctn" : $('#eduSpecfctn').val(),
				
				"university" : $('#university').val(),
				
				"yop" : $('#yop').val()

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
	
	
	function freeCrtfctDetails() {
		try {
			alert('Hi Jumanji 2');
			/* alert('awrdDetails '+$('#awrdDetails').val()); */
			$.ajax({

				url : '<%=request.getContextPath()%>/freelaancer_reg',

				type : 'post',
				
				dataType : 'json',

				data : JSON.stringify({

					"awrdDetails" : $('#awrdDetailsawrdDetails').val()
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

	} --%>
	function changeImage(input) {
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function(e) {
	            $('#profilepic').attr('src', e.target.result);
	        };
	        reader.readAsDataURL(input.files[0]);
	    }
	}
</script>
</head>
<body>
<input id="userid" type="hidden" value="${userid}">
	<div id="acord1" class="acord">
		<h3 class="acord_head">
		Profile Details <span></span></h3>
		<div class="acord_cont">
			<form action="#" name="" id="flForm">
				<!-- Splitting the name into Three parts first second and third -->
				<div class="name">
					<label>Full Name <text>*</text> :</label> 
					<input type="text" id="fname61"	name="fname61" value='${freelancerDto.name12}' onkeypress="return validateFLName(event);"/> 
					<span id="error61"></span>
				</div>
				<div class="Email">
					<label>Email(Login Id) <text>*</text> :</label> <input type="email" id="email64"
						name="email64" value="${freelancerDto.email12}" /> <span
						id="error64"></span>
				</div>
				 <div class="photo">
				<img src="<%=request.getContextPath()%>/resources/images/avtar.jpg" id="profilepic" name="profilepic" width="140" height="160" border="0" alt="PROFILE PICTURE" onError="this.src= <%=request.getContextPath()%>/resources/images/avtar.jpg ;" />
				
				<div class="fileUpload btn btn-primary">
                    <span>Upload Photo</span>
                        <input type="file" id="fileupload"  class="upload" name="picture" style="visibility: visible" onchange="changeImage(this);"/>         
                      </div>
				</div>
			</form>
			<input class="skipbtn9" type="button" value="Save & Continue" name="save" form="flForm" onclick="return freelProfDet('<%=request.getContextPath()%>');"/>
			<input class="skip" type="button" id="skip1" value="Skip" name="skip" />
		</div>
		<h3 class="acord_head">
		<span></span>
		Location Details</h3>
		<div class="acord_cont">
			<form name="" class="multi" id="freeContact">
				<div class="flatNo">
					<label>Building No./Flat No./Society No.<text>*</text> :</label> <input
						type="text" name="builNo65" id="builNo65" />
						<span id="error65"></span>
				</div>
				<div class="street">
					<label>Street :</label> <input type="text" name="streetName66"
						id="streetName66" />
						<span id="error66"></span>
				</div>
				<div class="landmark">
					<label>Landmark :</label> <input type="text" name="landmark67"
						id="landmark67" />
						<span id="error67"></span>
				</div>
				<div class="pin">
					<label>Pincode <text>*</text> :</label> <input type="text" name="pin68" id="pin68" onkeypress="return validate14(event)"/>
				<span id="error68"></span>
				</div>
				
				<c:set var="cntid"/>
				
				<div class="country">
					<label>Country <text>*</text> :</label> 
					<select id="countryid" onchange="getStates('<%=request.getContextPath()%>')">
						<option value="0">--Select--</option>
						<c:forEach var="country" items="${countries}">
							<option value="${country.countryId}">${country.countryName}</option><!-- onclick="getStates(${country.countryId},'<%=request.getContextPath()%>');" -->
							<c:set var="cntid" value="${country.countryId}"/>
						</c:forEach>
					</select>
				</div>
				<span id="errorflcountry"></span>
				<div class="state">
					<label>State <text>*</text> :</label> 
					<select id="stateid" onchange="getCities('<%=request.getContextPath()%>')">
						<option value="0">--Select--</option>
					</select>
	     		</div>
				<span id="errorflstate"></span>
				<div class="city">
					<label>City <text>*</text> :</label> 
					<select id="cityid">
						<option value="0">--Select--</option>
					</select>
				</div>
				<span id="errorflcity"></span>
				<br>
				<br>

			</form>
			<input class="skipbtn10" type="button" value="Save & Continue" name="save" form="freeLocation" onclick="freelLocDetails('<%=request.getContextPath()%>');" /> 
			<input class="skip" type="button" id="skip1" value="Skip" name="skip" />
		</div>

		<h3 class="acord_head">
		<span></span>
		Contact Information</h3>
		<div class="acord_cont">
			<form action="" class="multi" id="frmLocDetails">
				<div id="cont">
					<p>
						<label>Contact No : </label> 
						<select id="phonetypeid1">
							<option value="0">--Select--</option>
							<option value="3">PERSONAL-MOBILE</option>
							<option value="4">PERSONAL-LANDLINE</option>
						</select> 
						<input type="text" name="contactNo69" id="phonevalue1" onkeypress="return validate14(event)" value="${freelancerDto.contact12}"/>
					    <input type="button" value="+" class="addcontact">
					</p>
				<br>
				<span id="errorflcontact"></span>
					<span id="error69"></span>
				</div>
				<div class="website">
					<label>Website :</label> <input type="text" name="web70" id="web70" />
					<span id="error70"></span>
				</div>
			</form>
			<input class="skipbtn11" type="button" value="Save & Continue" name="save" onclick="flContactDet('<%=request.getContextPath()%>');" /> 
			<input class="skip" type="button" id="skip1" value="Skip" name="skip"/>
		</div>

		<h3 class="acord_head">
		<span></span>
		Education Details</h3>
		<div class="acord_cont">
			<form class="multi" id="frmEduDetails">
				<div class="dtype">
					<label>Degree Type :</label> <select id="fldegreetype">
						<option value="0" name="degreeType"
							id="degreeType">--Degree Type--</option>
						<option value="Diploma">Diploma</option>
						<option value="Graduate">Graduate</option>
						<option value="Post Graduate">Post Graduate</option>
					</select>
					<span id="errorfldegreetype"></span> 
				</div>
				
				
				<!-- <div class="qua">
					<label>Qualification :</label> <input type="text"
						name="qualification71" id="qualification71">
						<span id="error71"></span>
				</div><br><br> -->
				
				<div class="spec">
					<label>Specification :</label> <select id="flspec">
						<option value="0"
							name="eduSpecfctn" id="eduSpecfctn">--Specification--</option>
						<option value="MCA">MCA</option>
						<option value="B.E">B.E.</option>
						<option value="B.Sc">B.Sc.</option>
					</select>
					<span id="errorflspec"></span> 
				</div>
				 
				<!--<div class="seperate">-->
				
<br><br>
				<div class="year">

					<label>Year Of Passing : </label> <select id="flyearofpassing">
						<option value="0" name="yop"
							id="yop">--Select Year--</option>
						<option value="2000">2000</option>
						<option value="2001">2001</option>
						<option value="2002">2002</option>
						<option value="2003">2003</option>
						<option value="2004">2004</option>
						<option value="2005">2005</option>
						<option value="2006">2006</option>
						<option value="2007">2007</option>
					</select>
					 <span id="errorflyearofpassing"></span> 

				</div>
				<div class="university">

					<label>University: </label> <input type="text" name="university72"
						id="university72" />
						<span id="error72"></span>
				</div>

			</form>
			<input class="skipbtn12" type="button" value="Save & Continue" name="save"
				form="frmEduDetails" onclick="freeLancerValidate4();freeEduDetails();" /> <input
				class="skip" type="button" id="skip1" value="Skip" name="skip" />
		</div>


		<h3 class="acord_head">Certification/Awards/Achievements</h3>
		<div class="acord_cont">
			<form action="" class="multi" id="frmCerfDetails">
				<div id="client">
					<p>
						<label>Achievements/Awards/Certification :</label>
						<textarea rows="5" cols="50" name="awrdDetails" id="awrdDetails"> </textarea>
					</p>
					
				</div><br><br>
                     <h3>(Max 250 characters)</h3>
				<input class="skipbtn13" type="button" value="Save" name="save" form="frmCerfDetails" onclick="freeCrtfctDetails();" />
			</form>

		</div>
	</div>
</body>
</html>