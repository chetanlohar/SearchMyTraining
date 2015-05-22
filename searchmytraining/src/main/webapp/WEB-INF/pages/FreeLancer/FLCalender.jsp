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
	function Validate() {
		var image = document.getElementById("file").value;
		if (image == '') {
			alert("Please enter Image Path");
			document.getElementById("image").focus();
			return false;
		}
	}
</script>
</head>
<body>

	<div id="acord2" class="acord">

		<h3 class="acord_head">ADD Calender</h3>
		<div class="acord_cont">
			<form id="Add_calender" name="frm" method="post"
				enctype="multipart/form-data" action="uploadFile"
				onSubmit="return Validate();">

				<!-- hidden For filed -->
				<div id="addC" class="add_calender">
					<input type="text" id="ctitle" name="ctitle" placeholder="Title" />
					<input type="text" id="Fdate" name="Fdate" placeholder="Start Date" />
					<input type="text" id="Tdate" name="Tdate" placeholder="End Date" />
					<select path="Ctype" id="Ctype" name="Ctype">
						<option value="Seminar">Seminar</option>
						<option value="Workshop">Workshop</option>
						<option value="Etc">Etc</option>
					</select> <input type="text" id="cPrice" name="cPrice" placeholder="price" />
					<input type="text" id="CDesc" name="CDesc"
						placeholder="Description" /> <input type="text" id="Ckey"
						name="Ckey" placeholder="Keyword" />
					<div class="fileUpload btn btn-primary">
						<span>Upload</span> <input type="file" id="file" name="fileUpload"
							class="upload" />
					</div>
					<input type="submit" style="float: right;" id="Cadd" value="Add" />
					<%-- onclick="freelAddCalender('<%=request.getContextPath()%>');"/> --%>
				</div>
			</form>
			<table id="calender_data" class="Acalender">
				<thead>
					<tr>
						<td>Title</td>
						<td>From Date</td>
						<td>To Date</td>
						<td>Type</td>
						<td>Price</td>
						<td>Description</td>
						<td>Keyword</td>
						<td>Brochure</td>
						<td>Edit/Delete</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>Web Design</td>
						<td>5/5/2015</td>
						<td>10/5/2015</td>
						<td>Seminar</td>
						<td>5000 $</td>
						<td>Brochure</td>
						<td>Description</td>
						<td>Web123</td>
						<td>Edit/Delete</td>

					</tr>
				</tbody>

			</table>
		</div>


	</div>
</body>
</html>