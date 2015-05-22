$(document).ready(function() {
	
	$("#firstname22").on('keyup',function(e){
		var no = /([0-9])/;
		if($("#firstname22").val() == ""){
			$("#firstname22").focus();
	
			$("#error29").html("Please Enter Name")
			
		}
		else if ($("#firstname22").val().match(no)) {
			$("#firstname22").focus();
			$("#error29").html("Please Enter Valid Name")
			
		}
		else{
			$("#error29").html("")
		}
		
		
		
	});
	
	
	$("#lname22").on('keyup',function(e){
		var no = /([0-9])/;
		if($("#lname22").val() == ""){
			$("#lname22companyName21").focus();
	
			$("#error30").html("Please Enter Last Name")
			
		}
		else if ($("#lname22").val().match(no)) {
			$("#lname22").focus();
			$("#error30").html("Please Enter Valid Last Name")
			
		}
		else{
			$("#error30").html("")
		}
		
		
		
	});
	
	$("#title22").on('keyup',function(e){
		var no = /([0-9])/;
		if($("#title22").val() == ""){
			$("#title22").focus();
			
			$("#error31").html("Please Enter Name")
			
		}
		else if ($("#title22").val().match(no)) {
			$("#title22").focus();
			$("#error31").html("Please Enter Valid Name")
			
		}
		else{
			$("#error31").html("")
		}
		
		
		
	});
	
	
	$("#city22").on('keyup',function(e){
		var no = /([0-9])/;
		if($("#city22").val() == ""){
			$("#city22").focus();
			
			$("#error32").html("Please Enter Name")
			
		}
		else if ($("#city22").val().match(no)) {
			$("#city22").focus();
			$("#error32").html("Please Enter Valid Name")
			
		}
		else{
			$("#error32").html("")
		}
		
		
		
	});
		
	$("#email22").on('keyup',function(e){
		
		var Cmail = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		var mail     =  $("#email22").val();
		
		if(!Cmail.test(mail)){
			
			$("#email22").focus();
		
			 $("#error33").html("Please Enter valid mail.")
			
		}
		
		else  {
			 $("#error33").html("")
			
		}
		});
	
	$("#mob22").on('keyup',function(e) {
		
		 if($("#mob22").val().match(/^((\\+91-?)|0)?[0-9]{10}$/)){
			 $("#error34").html("")
		return true
			 
		}
		else{
			$("#mob22").focus()
			 $("#error34").html("Please Enter valid Contact")
			
		}
	});
	
	
	$("#requirements22").on('keyup',function(e){
		var letter = /^[A-Za-z]+$/;
		if($("#requirements22").val() == ""){
			$("#requirements22").focus();
			alert("work4")
			$("#error35").html("Please Enter Name")
			
		}
		else if ($("#requirements22").val().match(letter)) {
			$("#requirements22").focus();
			$("#error35").html("Please Enter Valid Name")
			
		}
		else{
			$("#error35").html("")
		}
		
		
		
	});
	
	
	
});




function TEvalidate(){
	
	var lname = $("#lname22").val();

	 if($("#firstname22").val() == "" ){
		   $("#firstname22").focus();
		   $("#error29").html("Please Enter  Name.")
		    return false;
		  }
	 else if($("#lname22").val() == ""){
		 $("#lname22").focus();
		   $("#error30").html("Please Enter Last Name.")
		    return false;
		 
	 }
	 
	 else if($('#title22').val() == '')
	 {
		 $("#error2").html("")
		 $("#title22").focus();
		 $("#error31").html("Please Enter Title.")
		 return false;
	 }
	
	 else if($("#city22").val() == ""){
		 $("#city22").focus();
		 $("#error32").html("Please Enter City Name")
		 return false;
	 }
	
	 else if($("#email22").val() == ""){
		 $("#email22").focus();
		 $("#error33").html("Please Enter Email Id")
		 return false;
	 }
	 else if($("#mob22").val() == ""){
		 $("#mob22").focus();
		 $("#error34").html("Please Enter Contact")
		 return false;
	 }
	
	 
	 
	
}