function require(script, path) {
	$.ajax({
		url : path + script,
		dataType : "script",
		async : false,
		success : function() {
			console.log(script + " is loaded successfully...");
		},
		error : function() {
			throw new Error("could not load script " + script);
		}
	});
}

function updateempdet(path) {

	console.log("in updateempdet...");
	require("/resources/js/Validations/TraineeProfile.js", path);
	var flag = tProf4();
	console.log("hi...");
	console.log("flag: " + flag);
	console.log($("#employmenttype").val() + ":" + $("#industrysubcatid").val()
			+ ":" + $("#employer").val() + $("#jobprofileid").val());
	if (flag) {
		try {
			$.ajax({
				url : path + "/updateempdet",
				dataType : "json",
				type : "post",
				data : JSON.stringify({
					"employmentType: " : $("#employmenttype").val(),
					"industrysubcatid:" : $("#industrysubcatid").val(),
					"employer" : $("#employer").val(),
					"jobProfile" : $("#jobprofileid").val()
				}),
				contentType : "application/json",
				success : function(response) {
					alert("in success...updateempdet");
				},
				error : function(response) {
					alert("in error...");
				}

			});

		} catch (ex) {
			console.log(ex);
		}
	}
}

function ttProf4(path) {
	console.log("in ttProf4...");
	if ($("#employmenttype").val() == '0' || $("#employmenttype").val() == ' ') {

		$("#employmenttype").focus();

		$("#erroremp").html("Please Select Any Option")
		return false;
	} else if ($("#tindustry").val() == '0' || $("#tindustry").val() == ' ') {

		$("#tindustry").focus();

		$("#errorindustry").html("Please Select Any Option")
		return false;
	} else if ($("#industrycatid").val() == '0'
			|| $("#industrycatid").val() == ' ') {

		$("#industrycatid").focus();

		$("#errorfunarea").html("Please Select Any Option")
		return false;
	} else if ($("#industrysubcatid").val() == '0'
			|| $("#industrysubcatid").val() == ' ') {

		$("#industrysubcatid").focus();

		$("#errorspecialization").html("Please Select Any Option")
		return false;
	} else if ($("#employer").val() == "") {
		$("#employer").focus();
		$("#error506").html("Please Enter Valid Name.")
		return false;
	}

	else {
		var $nextContent = jQuery('.skipbtn2').parent().next().next();
		jQuery(".acord .acord_cont").slideUp("fast", function() {

			$nextContent.show()
			
		});
		console.log("in else part of ttProf4()...end1");
		return true;
		jQuery(".acord .acord_cont").hasClass().next().slideDown("fast",
				function() {
					$nextContent.show()
				});
	}
}
