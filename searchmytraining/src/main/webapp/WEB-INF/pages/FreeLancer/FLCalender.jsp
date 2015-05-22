<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/AddDel.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/FreeLancerProfile.css"
	type="text/css">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/datepicker/date.js"></script>
<script type="text/javascript">
$('#acord2').accordion({
	collapsible : true
});
function freelAddCalender(path) {
	try {
		 alert('ctitle '+$('#ctitle').val()+" Fdate "+$('#Fdate').val()+" Tdate "+$('#Tdate').val()+" Ctype "+$('#Ctype').val()+" cPrice "+$('#cPrice').val()+" CDesc "+$('#CDesc').val()+" Ckey "+$('#Ckey').val()+"file "+$('#file').val()); 
		$.ajax({

			url :path+'/freelanceFileUpload',

			type : 'post',
			
			dataType : 'json',

			data : JSON.stringify({

				"ctitle" : $('#ctitle').val(),

				"Fdate" : $('#Fdate').val(),

				"Tdate" : $('#Tdate').val(),
				
				"Ctype" : $('#Ctype').val(),
				
				"cPrice" : $('#cPrice').val(),
				
				"CDesc" : $('#CDesc').val(),
				
				"Ckey" : $('#Ckey').val(),
				
				"fileData" : $('#file').val(),
				
				"userid":$('#userid').val()

			}),

			contentType : "application/json",
			
			success : function(response) {
				alert("Thank you for Your Registration, Please Update Your Profile:");
				<%-- window.location.href="<%=request.getContextPath()%>/freelancer_updateprofile"; --%>

						}
					});

		} catch (ex) {

			alert(ex);

		}

	}
</script>

<script language="JavaScript">
$(document).ready(function() {
	

	function Validate() {
		var image = document.getElementById("file").value;
		if (image == '') {
			alert("Please enter Image Path");
			document.getElementById("image").focus();
			return false;
		}
	}
	jQuery(".tm-input").tagsManager();
	$('#fdate,#Tdate').datepicker();
});
</script>
</head>
<body>
<div id="acord2" class="acord">
                        	<h3 class="acord_head">ADD Calender</h3>
                        	<div class="acord_cont">
                        	<form id="Add_calender" name="frm" method="post"
				enctype="multipart/form-data" action="uploadFile"
				onSubmit="return Validate();">
                        	
                        	<div class="title">
                        	<label>Title:</label>
                        	<input type="text" id="ctitle" placeholder="Title" autocomplete="off"/>
                        	</div>
                        	<div class="fdate">
                        	<label>From Date:</label>
                        	<input type = "text"  id ="Fdate" placeholder="Start Date" autocomplete="off"/>
                        	<span><img src="<%=request.getContextPath()%>/resources/images/calender/calendar.png"/></span>
                        	
                        	</div>
                        	<div class="Tdate">
                        	<label>To Date:</label>
                        	<input type = "text"  id ="Tdate" placeholder="End Date" autocomplete="off"/>
                        	<span><img src="<%=request.getContextPath()%>/resources/images/calender/calendar.png"/></span>
                        	</div>
                        	<div class="Industry">
                        	<label>Industry Type:</label>
                        	<select id ="Itype">
                        	 <option>Industry Types</option>
                        	 <option>Information Technology</option>
                        	  <option>Business & Management</option>
                        	  <option>Engineering & Manufacturing</option>
                        	  <option>Health & Safety</option>
                        	  <option>Art & Craft & Sports</option>
                        	  <option>Certifications</option>
                        	  <option>Other</option>
                        	</select>
                        	</div>
                        	<div class="Ctype">
                        	<label>Type Of Calendar:</label>
                        	<select id ="Ctype">
                        	 <option>Calendar Type</option>
                        	 <option>Seminar</option>
                        	 <option>Workshop</option>
                        	  <option>Etc</option>
                        	</select>
                        	</div>
                        	<div class="price">
                        	<label>Price:</label>
                        	<input type="text"   id = "cPrice" placeholder="price" autocomplete="off"/>   
                        	</div>
                        	<div class="description">
                        	<label>Description:</label>
                        	<input type="text"   id = "CDesc" placeholder="Description" autocomplete="off"/>
                        	</div>
                        	<div class="keyCode">
                        	<label>KeyCode:</label>
                        	<input type="text" name="tags" placeholder="Tags" class="tm-input" autocomplete="off"/>
                        	</div>
                        	<div class="browse">
                        	<label>Upload Calender:</label>
                        	<div class="fileUpload btn btn-primary">
                                     <span>Brouchure</span>
                                      <input type="file" class="upload" id="fileupload" name="fileupload"/>
                              </div>
                              </div>
                             <div class="submit">
                        	<input type="submit"  id="Cadd"  value="Add">
                        	</div>
                        	</form>
                        	 </div>
                        	 
                     <h3 class="acord_head">View Calendar</h3>
                        	 <div class="acord_cont">
                        	 <h1>hello</h1>
                        	 </div>
                        	 
                        	 
                      </div>
                      
                      
</body>
</html>