$(document).ready(function() {
	
	$("#fname61").on('keyup',function(e){
		var no = /([0-9])/;
		if($("#fname61").val() == " "){
			$("#fname61").focus();
	
			$("#error61").html("Please Enter First Name")
			
		}
		else if ($("#fname61").val().match(no) || $("#fname61").val().length < 3) {
			$("#fname61").focus();
			$("#error61").html("Please Enter Valid Name")
			
		}
		else{
			$("#error61").html(" ")
		}
			});
	
	$("#mname62").on('keyup',function(e){
		var no = /([0-9])/;
		if($("#mname62").val() == " "){
			$("#mname62").focus();
	
			$("#error62").html("Please Enter Middle Name")
			
		}
		else if ($("#mname62").val().match(no) ) {
			$("#mname62").focus();
			$("#error62").html("Please Enter Valid Name")
			
		}
		else{
			$("#error62").html("")
		}
			});

	$("#lname63").on('keyup',function(e){
		var no = /([0-9])/;
		if($("#lname63").val() == " "){
			$("#lname63").focus();
	
			$("#error63").html("Please Enter Last Name")
			
		}
		else if ($("#lname63").val().match(no) ||$("#lname63").val().length < 3) {
			$("#lname63").focus();
			$("#error63").html("Please Enter Valid Name")
			
		}
		else{
			$("#error63").html(" ")
		}
			});
	
$("#email64").on('keyup',function(e){
		
		var Cmail = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		var mail     =  $("#email64").val();
		
		if(!Cmail.test(mail)){			
			$("#email64").focus();		
			 $("#error64").html("Please Enter valid mail.")			
		}		
		else  {
			 $("#error64").html(" ")			
		}
		});

$("#builNo65").on('keyup', function(e) {
	
	if ($("#builNo65").val() == "") {
		$("#builNo65").focus();

		$("#error65").html(" ")

	}  else {
		$("#error65").html(" ")
	}
});

$("#streetName66").on('keyup', function(e) {						
if ($("#streetName66").val() == " ") {
$("#streetName66").focus();
$("#error66").html(" ")
}  else {
$("#error66").html(" ")
}
});

$("#landmark67").on('keyup', function(e) {

if ($("#landmark67").val() == " ") {
$("#landmark67").focus();

$("#error67").html(" ")

}  else {
$("#error67").html(" ")
}
});

$("#pin68").on('keyup',function(e) {
	
	 if($("#pin68").val().match(/([0-9]){6}/)){
		 $("#error68").html(" ")		
	return true	  
	}
	else {
		$("#pin68").focus()
		 $("#error68").html("Please Enter valid Pincode")
		return false
	}	 
})

$("#flcountry").on('change',function(e){
	if($("#flcountry").val() != '0'){
	$("#errorflcountry").html('');
		return true;
	}
		});

$("#flstate").on('change',function(e){
	if($("#flstate").val() != '0'){
	$("#errorflstate").html('');
		return true;
	}
		});

$("#flcity").on('change',function(e){
	if($("#flcity").val() != '0'){
	$("#errorflcity").html('');
		return true;
	}
		});

$("#contactType").on('change',function(e){
	if($("#contactType").val() != '0'){
	$("#errorflcontact").html('');
		return true;
	}
		});

var number = /([0-9])/;
$("#contactNo69").on('keyup', function(e) {

	if ($("#contactNo69").val()== "" || $("#contactNo69").val().match(number)) {
		$("#error69").html(" ")
		return true
	} else {
		$("contactNo69").focus()
		$("#error69").html("Please Enter Valid Number")
	}
});

$("#web70").on('keyup', function(e) {
	
	if ($("#web70").val() == " ") {
		$("#web70").focus();
		$("#error70").html(" ")
	}  else {
		$("#error70").html(" ")
	}
});
	
$("#fldegreetype").on('change',function(e){
	if($("#fldegreetype").val() != '0'){
	$("#errorfldegreetype").html('');
		return true;
	}
		});

$("#flspec").on('change',function(e){
	if($("#flspec").val() != '0'){
	$("#errorflspec").html('');
		return true;
	}
		});

$("#flyearofpassing").on('change',function(e){
	if($("#flyearofpassing").val() != '0'){
	$("#errorflyearofpassing").html('');
		return true;
	}
		});

$("#qualification71").on('keyup', function(e) {
	
	if ($("#qualification71").val() == "") {
		$("#qualification71").focus();
		$("#error71").html(" ")
	}  else {
		$("#error71").html(" ")
	}
});

$("#university72").on('keyup', function(e) {
	
	if ($("#university72").val() == " ") {
		$("#university72").focus();
		$("#error72").html("")
	}  else {
		$("#error72").html("")
	}
});
});

function validate14(key) {
	// getting key code of pressed key
	var keycode = (key.which) ? key.which : key.keyCode;

	// comparing pressed keycodes
	if (!(keycode == 8 || keycode == 16) && (keycode < 48 || keycode > 57)) {
		return false;
	}
}

function validateFLName(key){
	 var keycode = (key.which) ? key.which : key.keycode;
	 if(!(keycode== 8 || keycode== 32) && (keycode < 65 || keycode > 90) && (keycode < 61 || keycode > 122))
		 {
		 return false;
		 }
}
function freeLancerValidate(){
	
	var Cmail = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	var mail     =  $("#email64").val();

	if ($("#fname61").val().match(/([0-9])/) || $("#fname61").val().length < 3) {
		$("#fname61").focus();
		$("#error61").html("Please Enter Valid FirstName.")

		return false;
	}
	else if ($("#mname62").val() == "") {
		$("#mname62").focus();
		$("#error62").html("Please Enter Valid Name.")

		return false;
	}
	else if ($("#lname63").val() == "" || $("#lname63").val().match(/([0-9])/) || $("#lname63").val().length < 3) {
		$("#lname63").focus();
		$("#error63").html("Please Enter Valid LastName.")

		return false;
	}
	 else if($("#email64").val() == "" || !Cmail.test(mail)){
		 $("#email64").focus();
		 $("#error64").html("Please Enter Email Id")
		 return false;
	 }
	 else{
		
		        var $nextContent = jQuery('.skipbtn9').parent().next().next();
		        jQuery(".acord .acord_cont").slideUp("fast", function () {
		       
		            $nextContent.show()
		        });
		        jQuery(".acord ").next().slideDown("fast", function () {
		            
		            $nextContent.show()
		     		    });
	 }
}

function freeLancerValidate2(){
	
	 if($("#builNo65").val() == "" ){
		   $("#builNo65").focus();
		   $("#error65").html("Please Enter Valid Name.")
		    return false;
		  }
	 else if($("#streetName66").val() == "" ){
		   $("#streetName66").focus();
		   $("#error66").html("Please Enter Valid Name.")
		    return false;
		  }
	 else if($("#landmark67").val() == "" ){
		   $("#landmark67").focus();
		   $("#error67").html("Please Enter Valid Name.")
		    return false;
		  }
	 else if($("#pin68").val().length < 6 || $("#pin68").val().length > 6)
	 {
		 $("#error68").html("")
		 $("#pin68").focus();
		 $("#error68").html("Please Enter Valid Pincode.")
		 
		 return false;
	 }
	 else if($("#flcountry").val() == "" || $("#flcountry").val() == '0') {
			
		 $("#flcountry").focus();
		 
		 $("#errorflcountry").html("Please Select Your Country")
		 return false;
	 }
	 else if($("#flstate").val() == "" || $("#flstate").val() == '0') {
			
		 $("#flstate").focus();
		 
		 $("#errorflstate").html("Please Select Your State")
		 return false;
	 }
	 else if($("#flcity").val() == "" || $("#flcity").val() == '0') {
			
		 $("#flcity").focus();
		 
		 $("#errorflcity").html("Please Select Your City")
		 return false;
	 }
	 else {
		
		        var $nextContent = jQuery('.skipbtn10').parent().next().next();
		        jQuery(".acord .acord_cont").slideUp("fast", function () {
		       
		            $nextContent.show()
		        });
		        jQuery(".acord ").next().slideDown("fast", function () {
		            
		            $nextContent.show()
		        });
			 }
}

function freeLancerValidate3(){

	var Cmail = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	var mail = $("#smail60").val();
	
	 if($("#contactType").val() == "" || $("#contactType").val() == '0') {
		
		 $("#contactType").focus();
		 
		 $("#errorflcontact").html("Please Select Type of Contact Number.")
		 return false;
	 }
	 else if($("#contactNo69").val() == "" || $("#contactNo69").val().length < 10)
	 {
		 $("#error69").html("")
		 $("#contactNo69").focus();
		 $("#error69").html("Please Enter Contact Number")
		 
		 return false;
	 }
	 else if($("#web70").val() == "" ){
		   $("#web70").focus();
		   $("#error70").html("Please Enter Website")
		    return false;
		  }
	else{
		
		        var $nextContent = jQuery('.skipbtn11').parent().next().next();
		        jQuery(".acord .acord_cont").slideUp("fast", function () {
		       
		            $nextContent.show()
		        });
		        jQuery(".acord ").next().slideDown("fast", function () {
		            
		            $nextContent.show()
		        });
		  	}
}

function freeLancerValidate4(){

	var Cmail = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	var mail = $("#smail60").val();
	
	if($("#fldegreetype").val() == "" || $("#fldegreetype").val() == '0') {
		
		 $("#fldegreetype").focus();
		 
		 $("#errorfldegreetype").html("Please Select Type of Contact Number.")
		 return false;
	 }
	else if($("#qualification71").val() == "")
	 {
		 $("#error71").html("")
		 $("#qualification71").focus();
		 $("#error71").html("Please Enter your qualification")
		 
		 return false;
	 }
	else if($("#flspec").val() == "" || $("#flspec").val() == '0') {
		
		 $("#flspec").focus();
		 
		 $("#errorflspec").html("Please Select Type of Contact Number.")
		 return false;
	 }
	else if($("#flyearofpassing").val() == "" || $("#flyearofpassing").val() == '0') {
		
		 $("#flyearofpassing").focus();
		 
		 $("#errorflyearofpassing").html("Please Select Type of Contact Number.")
		 return false;
	 }
	 else if($("#university72").val() == "" ){
		   $("#university72").focus();
		   $("#error72").html("Please Enter University Name")
		    return false;
		  }
	 else{
		
		        var $nextContent = jQuery('.skipbtn12').parent().next().next();
		        jQuery(".acord .acord_cont").slideUp("fast", function () {
		       
		            $nextContent.show()
		        });
		        jQuery(".acord ").next().slideDown("fast", function () {
		            
		            $nextContent.show()
		     		    });
	 }
	}
 

 