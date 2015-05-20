function saveInstituteDetails(path) {
	try {
		
		/*alert("in saveInstituteDetails method:... :-) Userid: " + $('#userid').val());*/
		var workingdays = ["MON","TUE","WED","THU","FRI","SAT"];
		/*alert($('#org_name').val()+":"+$('#yearofestablishment').val()+":"+$('#training_methodology').val()+":"+$('#hrsofoperations').val()+$('#history').val());*/
		$.ajax({
			url : path+'/updateinstitutedetails',
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
				/*alert("hey... you are in success congratz :-)");*/
						}
					});
		} catch (ex) {
			alert(ex);
	}
}

function saveInstituteContactDetails(path)
{
	/*alert("in saveInstituteContactDetails phonetypeid: "+$('#phonetypeid').val());*/
	try 
	{
		$.ajax({
			url : path+'/updateinstcontactinfo',
			type : 'post',
			dataType : 'json',
			data : JSON.stringify({
				"email" : $('#email').val(),
				"website" : $('#website').val(),
				"contactpersonname" : $('#contactpersonname').val(),
				"phonetypeid" : $('#phonetypeid').val(),
				"phone" : $('#phone').val(),
				"userid" : $('#userid').val()
			}),
			contentType : "application/json",
			success : function(response) {
				/*alert("hey... you are in success congratz :-)");*/
						}
					});
	} 
	catch (ex) 
	{
		alert(ex);
	}
}

function saveInstituteLocationDetails(path)
{
	alert("In saveInstituteLocationDetails()...");
	try 
	{
		$.ajax({
			url : path+'/updateinstlocinfo',
			type : 'post',
			dataType : 'json',
			data : JSON.stringify({
				"bldng_flatno" : $('#bldng_flatno').val(),
				"street" : $('#street').val(),
				"landmark" : $('#landmark').val(),
				"pincode" : $('#pincode').val(),
				"country" : $('#country').val(),
				"state" : $('#state').val(),
				"city" : $('#city').val(),
				"userid" : $('#userid').val()
			}),
			contentType : "application/json",
			success : function(response) {
				/*alert("hey... you are in success congratz :-)");*/
						}
					});
	} 
	catch (ex) 
	{
		alert(ex);
	}
}

function saveProfessionalAssociations(path)
{
	try 
	{
		var associationnames = [];
		for(i=1;i<=5;i++)
		{
			if($('#assocName'+i).val())
				associationnames.push($('#assocName'+i).val());
		}
		$.ajax({
			url : path+'/updateassociationinfo',
			type : 'post',
			dataType : 'json',
			data : JSON.stringify({
				"assocName" : associationnames,
				"userid" : $('#userid').val()
			}),
			contentType : "application/json",
			success : function(response) {
				/*alert("hey... you are in success congratz :-)");*/
						}
					});
	} 
	catch (ex) 
	{
		alert(ex);
	}
}


function saveKeyClients(path)
{
	alert("in saveKeyClients()...");
	try 
	{
		var clientnames = [];
		for(i=1;i<=5;i++)
		{
			if($('#clientName'+i).val())
				clientnames.push($('#clientName'+i).val());
		}
		alert(clientnames);
		$.ajax({
			url : path+'/updateclientdetails',
			type : 'post',
			dataType : 'json',
			data : JSON.stringify({
				"clientName" : clientnames,
				"userid" : $('#userid').val()
			}),
			contentType : "application/json",
			success : function(response) {
				/*alert("hey... you are in success congratz :-)");*/
						}
					});
	} 
	catch (ex) 
	{
		alert(ex);
	}
}
