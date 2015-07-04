function trainingProValidate2() {
	if ($("#bldng_flatno").val() == "") {
		$("#bldng_flatno").focus();
		$("#error81").html("Please Enter information.")
		return false;
	} else if ($("#street82").val() == "") {
		$("#street82").focus();
		$("#error82").html("Please Enter Street Name.")
		return false;
	} else if ($("#landmark83").val() == "") {
		$("#landmark83").focus();
		$("#error83").html("Please Enter Landmark Name.")
		return false;
	} else if ($("#instituteLocPincode").val().length < 6
			|| $("#instituteLocPincode").val().length > 6) {
		$("#error84").html("")
		$("#instituteLocPincode").focus();
		$("#error84").html("Please Enter Valid Pincode.")

		return false;
	} else if ($("#tpcountry").val() == "" || $("#tpcountry").val() == '0') {

		$("#tpcountry").focus();

		$("#errortpcountry").html("Please Select Your Country")
		return false;
	} else if ($("#tpstate").val() == "" || $("#tpstate").val() == '0') {

		$("#tpstate").focus();

		$("#errortpstate").html("Please Select Your State")
		return false;
	} else if ($("#tpcity").val() == "" || $("#tpcity").val() == '0') {

		$("#tpcity").focus();

		$("#errortpcity").html("Please Select Your City")
		return false;
	} else {

		var $nextContent = jQuery('.skipbtn6').parent().next().next();
		jQuery(".acord .acord_cont").slideUp("fast", function() {

			$nextContent.show()
		});
		return true;
		jQuery(".acord .acord_cont").hasClass().next().slideDown("fast",
				function() {

					$nextContent.show()
				});
	}
}

function saveInstituteDetails(path) {
	try {

		/*
		 * alert("in saveInstituteDetails method:... :-) Userid: " +
		 * $('#userid').val());
		 */
		var workingdays = [ "MON", "TUE", "WED", "THU", "FRI", "SAT" ];
		/* alert($('#org_name').val()+":"+$('#yearofestablishment').val()+":"+$('#training_methodology').val()+":"+$('#hrsofoperations').val()+$('#history').val()); */
		$.ajax({
			url : './updateinstitutedetails',
			type : 'post',
			dataType : 'json',
			data : JSON.stringify({
				"companyName" : $('#org_name').val(),
				"yrofEstablmnt" : $('#yearofestablishment').val(),
				"trngMethodology" : $('#training_methodology').val(),
				"hrsOfOpertn" : $('#hrsofoperations').val(),
				"history" : $('#history').val(),
				"workingDays" : workingdays,
				"userid" : $('#userid').val()
			}),
			contentType : "application/json",
			success : function(response) {
				/* alert("hey... you are in success congratz :-)"); */
			}
		});
	} catch (ex) {
		alert(ex);
	}
}

function saveInstituteContactDetails() {
	
	
	try {
		var phonetypes = [];
		for (i = 1; i <= 5; i++) 
			if ($('#phonetypeid' + i).val())
				phonetypes.push($('#phonetypeid' + i).val());
			
		var phonevalues = [];
		for (i = 1; i <= 5; i++)
			if ($('#institutecontact' + i).val())
				phonevalues.push($('#institutecontact' + i).val());	
			
		$.ajax({
			url : './updatecontactinfo',
			type : 'post',
			dataType : 'json',
			data : JSON.stringify({
				"email" : $('#email').val(),
				"website" : $('#institutewebsitename').val(),
				"contactpersonname" : $('#contactpersonname').val(),
				"phonetypeid" : phonetypes,
				"phone" : phonevalues,
				"userid" : $('#userid').val()
			}),
			contentType : "application/json",
			success : function(response) {
				/* alert("hey... you are in success congratz :-)"); */
			}
		});
	} catch (ex) {
		alert(ex);
	}
}

function saveLocationDetails(path) {
	alert("In saveInstituteLocationDetails()...");
	var flag = trainingProValidate2();
	if (flag) {
		try {
			$.ajax({
				url : path + '/updatelocinfo',
				type : 'post',
				dataType : 'json',
				data : JSON.stringify({
					"bldng_flatno" : $('#bldng_flatno').val(),
					"street" : $('#street82').val(),
					"landmark" : $('#landmark83').val(),
					"pincode" : $('#instituteLocPincode').val(),
					"country" : $('#tpcountry').val(),
					"state" : $('#tpstate').val(),
					"city" : $('#tpcity').val(),
					"userid" : $('#userid').val()
				}),
				contentType : "application/json",
				success : function(response) {
					/* alert("hey... you are in success congratz :-)"); */
				}
			});
		} catch (ex) {
			alert(ex);
		}
	}
}

function saveProfessionalAssociations(path) {
	try {
		var associationnames = [];
		for (i = 1; i <= 5; i++) {
			if ($('#assocName' + i).val())
				associationnames.push($('#assocName' + i).val());
		}
		$.ajax({
			url : path + '/updateassociationinfo',
			type : 'post',
			dataType : 'json',
			data : JSON.stringify({
				"assocName" : associationnames,
				"userid" : $('#userid').val()
			}),
			contentType : "application/json",
			success : function(response) {
				/* alert("hey... you are in success congratz :-)"); */
			}
		});
	} catch (ex) {
		alert(ex);
	}
}

function saveKeyClients(path) {
	alert("in saveKeyClients()...");
	try {
		var clientnames = [];
		for (i = 1; i <= 5; i++) {
			if ($('#clientName' + i).val())
				clientnames.push($('#clientName' + i).val());
		}
		alert(clientnames);
		$.ajax({
			url : path + '/updateclientdetails',
			type : 'post',
			dataType : 'json',
			data : JSON.stringify({
				"clientName" : clientnames,
				"userid" : $('#userid').val()
			}),
			contentType : "application/json",
			success : function(response) {
				/* alert("hey... you are in success congratz :-)"); */
			}
		});
	} catch (ex) {
		alert(ex);
	}
}
