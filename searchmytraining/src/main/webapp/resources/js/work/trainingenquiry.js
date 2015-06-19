function enquiry() {
	var flag = TEvalidate();
	console.log("from enquiry: " + flag);
	if (flag) {
		try {
			$.ajax({
				url : path + '/trainingenquiry',
				type : 'post',
				contentType : "application/json",
				dataType : 'json',
				data : JSON.stringify({
					"firstname" : $('#firstname22').val(),
					"lastname" : $('#lname22').val(),
					"coursetitle" : $('#title22').val(),
					"city" : $('#city22').val(),
					"phone" : $('#mob22').val(),
					"email" : $('#email22').val(),
					"trngneeds" : $('#requirements22').val()
					}),
				success : function(response) {
					alert("Thank you for Your Registration, Please Update Your Profile:");
					window.location.href = "<%=request.getContextPath()%>/freelancer_updateprofile";
					}
			});
			} 
		catch (ex) {
			alert(ex);
		}
	}
}