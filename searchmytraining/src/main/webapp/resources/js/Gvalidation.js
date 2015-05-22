$(document).ready(function() {

	$("#name21").on('keyup', function(e) {
		var Number = /([0-9])/;

		if ($("#name21").val() == "") {

			$("#name21").focus();

			$("#error21").html("Please Enter Name")
		} else if ($("#name21").val().match(Number)) {
			$("#name21").focus();
			$("#error21").html("Please Enter Only Characters.")
			return false;
		} else {

			$("#error21").html("")
			return true;
		}

	})

	$("#companyName21").on('keyup', function(e) {
		var Number = /([0-9])/;

		if ($("#companyName21").val() == "") {
			$("#companyName21").focus();

			$("#error22").html("Please Enter Company Name")
		} else if ($("#companyName21").val().match(Number)) {
			$("#companyName21").focus();
			$("#error22").html("Please Enter Only Characters.")
			return false;
		} else {

			$("#error22").html("")
			return true;
		}

	})

	$("#title21").on('keyup', function(e) {
		var Number = /([0-9])/;

		if ($("#title21").val() == "") {
			$("#title21").focus();

			$("#error23").html("Please Enter Title ")
		} else if ($("#title21").val().match(Number)) {
			$("#title21").focus();
			$("#error23").html("Please Enter Only Characters.")
			return false;
		} else {

			$("#error23").html("")
			return true;
		}

	})

	$("#Email21").on('keyup', function(e) {

		var Cmail = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		var mail = $("#Email21").val();

		if (!Cmail.test(mail)) {
			$("#Email21").focus();

			$("#error24").html("Please Enter valid mail.")

		}

		else {
			$("#error24").html("")

		}

	})

	$("#contact21").on('keyup', function(e) {
		var patt = /^((\\+91-?)|0)?[0-9]{10}$/;

		if ($("#contact21").val().match(/^((\\+91-?)|0)?[0-9]{10}$/)) {
			$("#error25").html("")
			return true

		} else {
			$("#contact21").focus()
			$("#error25").html("Please Enter valid Contact")

		}
	})

	$("#participents21").on('keyup', function(e) {
		var Number = /([a-z])/;

		if ($("#participents21").val() == "") {
			$("#participents21").focus();

			$("#error26").html("Please Enter Number")
		} else if ($("#participents21").val().match(Number)) {
			$("#participents21").focus();
			$("#error26").html("Please Enter Only Number.")
			return false;
		} else {

			$("#error26").html("")
			return true;
		}

	})

	$("#city21").on('keyup', function(e) {
		var no = /([0-9])/;
		if ($("#city21").val() == "") {
			$("#city21").focus();

			$("#error27").html("Please Enter Name")

		} else if ($("#city21").val().match(no)) {
			$("#city21").focus();
			$("#error27").html("Please Enter Valid Name")

		} else {
			$("#error27").html("")
		}

	});

	/*
	 * $("#requirements21").on('keyup',function(e){
	 * 
	 * if($("#requirements21").val() == ""){ $("#requirements21").focus();
	 * alert("work4") $("#error28").html("Please Enter Name")
	 *  }
	 * 
	 * else{ $("#error28").html("") }
	 * 
	 * 
	 * 
	 * });
	 */

});

function validation21() {
	
	
	
	var Number = /([0-9])/;
	var letter = /^[A-Za-z]+$/;
	var mob    = /^[1-9]{1}[0-9]{9}$/;
	var name1 = $("#name12").val();
	var city1     =  $("#name12").val();
	var contact1  =  $("#contact12").val();
	var mail1     =  $("#email12").val();
	var pass     =   $("#password").val();
	
	 if($("#name21").val() == "" ){
		   $("#name21").focus();
		   $("#error21").html("Please Enter Valid Name.")
		    return false;
		  }
	 else if ($("#companyName21").val() == "") {
		 $("#companyName21").focus();
		 $("#error22").html("Please Enter Company Name.")
		 return false;
	}
	 
	 else if($("#title21").val() == "")
	 {
		
		 $("#title21").focus();
		 $("#error23").html("Please Enter Title.")
		 return false;
	 }
	
	 else if($("#Email21").val() == ""){
		 $("#Email21").focus();
		 $("#error24").html("Please Enter Email Id")
		 return false;
	 }
	
	 else if($("#contact21").val() == ""){
		 $("#contact21").focus();
		 $("#error25").html("Please Enter Contact")
		 return false;
		 return false;
	 }
	 else if($("#participents21").val() == ""){
		 $("#participents21").focus();
		 $('#error26').html("Please Enter No Of Participents")
		 return false;
	 }
	 else if($("#city21").val() == ""){
		 $("#city21").focus();
		 $('#error27').html("Please Enter City Name")
		 return false;
	 }
	 
	 
	 
		
}