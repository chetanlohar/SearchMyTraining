$(document).ready(function() {
//Password Strength checker code	
	
$('#password12').keyup(function() {
$('#Pass-chek12').html(checkStrength($('#password12').val()))

})
function checkStrength(password) {
var strength = 0
if (password.length < 6 ) {
$('#Pass-chek12').removeClass()
$('#Pass-chek12').addClass('short')
return 'Too short'
}

if (password.length > 7) strength += 1
// If password contains both lower and uppercase characters, increase strength value.
if (password.match(/^(?=\S*?[a-z])(?=\S*?[0-9])\S{6,}$/)) strength += 1
// If it has numbers and characters, increase strength value.
if (password.match(/([a-zA-Z])/) && password.match(/([0-9])/)) strength += 1
// If it has one special character, increase strength value.
if (password.match(/^(?=\S*?[A-Z])(?=\S*?[a-z])(?=\S*?[0-9])\S{5,}$/)) strength += 1
// If it has two special characters, increase strength value.
if (password.match( /^(?=\S*?[A-Z])(?=\S*?[a-z])(?=\S*?[0-9])(?=\S*?[^\w\*])\S{5,}$/)) strength += 1
// Calculated strength value, we can return messages
// If value is less than 2
if (strength < 2) {
$('#Pass-chek12').removeClass()
$('#Pass-chek12').addClass('weak')
return 'Weak'
} else if (strength == 2) {
$('#Pass-chek12').removeClass()
$('#Pass-chek12').addClass('good')
return 'Good'
} else {
$('#Pass-chek12').removeClass()
$('#Pass-chek12').addClass('strong')
return 'Strong'
}
}

// Password match Code 
$("#cnfpassword12").on ('keyup', function(e) {
	if($('#password12').val() === $('#cnfpassword12').val())
		{
		$('#Pass-chek12').html("Password Match")
		
		}
	else if ($('#password12').val() !== $('#cnfpassword12').val()) {
		$('#Pass-chek12').html("Please Enter Correct Password")
		$("#cnfpassword12").focus();
	}
	else{$('#Pass-chek12').html("")}
	
})


$("#name12").on ('keyup', function(e) {
	var Number = /([0-9])/;
	
	if($("#name12").val() == "" )
		{
		
	 $("#error11").html("Please Enter Valid Name.")
		    return false;
		}
	else if ($("#name12").val().match(Number)) {
		 $("#name12").focus();
		  $("#error11").html("Please Enter Only Characters.")
	    return false;
	}
	else{
		
		$("#error11").html("")
		 return true;}
	
})

$("#city12").on('keyup',function(e) {
	var Number = /([0-9])/;
	 if($("#city12").val() == ''){
		 $("#city12").focus()
		 $("#error12").html(" Please Enter City Name")
	return true
		 
	}
	else if($("#city12").val().match(Number)){
		$("#city12").focus()
		 $("#error12").html("Please Enter valid City Name")
		
	}
	else{
		 $("#error12").html("")
	}
})


$("#contact12").on('keyup',function(e) {
	
	 if($("#contact12").val().match(/^((\\+91-?)|0)?[0-9]{10}$/)){
		 $("#error13").html("")
	return true
		 
	}
	else{
		$("#contact12").focus()
		 $("#error13").html("Please Enter valid Contact")
		
	}
})



$("#email12").on('keyup',function(e){
	
	var Cmail = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	var mail     =  $("#email12").val();
	
	if(!Cmail.test(mail)){
		
		$("#email12").focus();
		
		 $("#error14").html("Please Enter valid mail.")
		
	}
	
	else  {
		 $("#error14").html("")
		
	}
	
	
	
})







});

function validate12(key)
{
//getting key code of pressed key
var keycode = (key.which) ? key.which : key.keyCode;

//comparing pressed keycodes
if (!(keycode==8 || keycode==46)&&(keycode < 48 || keycode > 57))
{
return false;
}
}


//form validation code
function validation12() {
	
	
	
	var Number = /([0-9])/;
	var letter = /^[A-Za-z]+$/;
	var mob    = /^[1-9]{1}[0-9]{9}$/;
	var Cmail1 = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	var name1 = $("#name12").val();
	var city1     =  $("#name12").val();
	var contact1  =  $("#contact12").val();
	var mail1     =  $("#email12").val();
	var pass     =   $("#password").val();
	
	 if($("#name12").val() == ""  || $("#name12").val().length < 3 || $("#name12").val().match(Number)){
		   $("#name12").focus();
		   $("#error11").html("Please Enter Valid Name.")
		    return false;
		  }
	 else if ($("#city12").val() == "" || $("#city12").val().length < 3 || $("#city12").val().match(Number)) {
		 $("#city12").focus();
		 $("#error12").html("Please Enter City Name.")
		 return false;
	}
	 
	 else if($("#contact12").val() == "" || $("#contact12").val().length < 10 || $("#contact12").val().length > 10 )
	 {
		
		 $("#contact12").focus();
		 $("#error13").html("Please Enter Contact.")
		 return false;
	 }
	
	 else if($("#email12").val() == "" || !Cmail1.test(mail1)){
		 $("#email12").focus();
		 $("#error14").html("Please Enter Email Id")
		 return false;
	 }
	
	 else if($("#password12").val() == "" || $("#password12").val().length < 6){
		 $("#password12").focus();
		 $('#Pass-chek12').html("Please Enter Password")
		 $('#Pass-chek').css("color:red;")
		 return false;
	 }
	 else if($("#cnfpassword12").val() == "" || $('#password12').val() !== $('#cnfpassword12').val()){
		 $("#cnfpassword12").focus();
		 $('#Pass-chek12').html("Please Enter Password Same Above")
		 return false;
	 }
	
		
}