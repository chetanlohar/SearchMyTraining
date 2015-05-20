function industryCategory(id, path) {
	$.ajax({
		type : "POST",
		url : path + "/getIndustryCategory",
		dataType : 'json',
		data : "id=" + id,
		/* data: JSON.stringify({"tid" : id,"fname":"Softinfology"}), */
		success : function(response) {
			/* alert(response); */
			$('#industrycatid').find('option').remove().end();
			$('#industrysubcatid').find('option').remove().end();
			$('#industrycatid').attr('enabled', 'true');
			$('#industrycatid').append($("<option value='0'></option>").text("--Select--"));
			jQuery.each(response, function(index, item) {
				$('#industrycatid').append(
						$("<option></option>").text(this.indstrCatName).val(
								this.trnIndstrCatId));
			});
		},
	});
}

function industrySubCategory(path)
{
	var subid = $('#industrycatid').val();
	/*alert("in industrySubCategory().. subid:"+subid);*/
	$.ajax({
		type : "POST",
		url : path + "/getIndustrySubCategory",
		dataType : 'json',
		data : "subid=" + subid,
		success : function(response) {
			
			$('#industrysubcatid').find('option').remove().end();
			$('#industrysubcatid').attr('enabled', 'true');
			$('#industrysubcatid').append($("<option value='0'></option>").text("--Select--"));
			jQuery.each(response, function(index, item) {
				$('#industrysubcatid').append(
						$("<option></option>").text(this.indstrSubCatName).val(
								this.trnIndstrSubCatId));
			});
		},
	});
}

function getStates(countryid, path)
{
	$.ajax({
		type : "POST",
		url : path + "/getstates",
		dataType : 'json',
		data : "countryid=" + countryid,
		success : function(response) {
			$('#stateid').find('option').remove().end();
			$('#cityid').find('option').remove().end();
			$('#stateid').attr('enabled', 'true');
			$('#stateid').append($("<option value='0'></option>").text("--Select--"));
			jQuery.each(response, function(index, item) {
				$('#stateid').append(
						$("<option></option>").text(this.stateName).val(
								this.stateId));
			});
		},
	});
}

function getCities(path)
{
	var stateid = $('#stateid').val();
	$.ajax({
		type : "POST",
		url : path + "/getCities",
		dataType : 'json',
		data : "stateid=" + stateid,
		success : function(response) {
			$('#cityid').find('option').remove().end();
			$('#cityid').attr('enabled', 'true');
			$('#cityid').append($("<option value='0'></option>").text("--Select--"));
			jQuery.each(response, function(index, item) {
				$('#cityid').append(
						$("<option></option>").text(this.cityName).val(
								this.cityId));
			});
		},
	});
}