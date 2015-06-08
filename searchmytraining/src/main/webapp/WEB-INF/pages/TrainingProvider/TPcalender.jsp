<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/datepicker/date.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/screen.css"
	type="text/css">

<script type="text/javascript">

$('#acord2').accordion({
	collapsible : true
});

jQuery(".tm-input").tagsManager();
$('#fdate,#Tdate').datepicker();
</script>
<script>
$(document).ready(function() {

$('.tagRemove').click(function(event) {
	         
              event.preventDefault();
              $(this).parent().remove();
          });
          $('ul.tags').click(function() {
              $('#tags-field').focus();
          });
          $('#tags-field').keypress(function(event) {
              if (event.which == '32') {
				  	
                  if ($(this).val() != '') {
                      $('<li class="addedTag">' + $(this).val() + '<span class="tagRemove" onclick="$(this).parent().remove();">x</span><input type="hidden" value="' + $(this).val() + '" name="tags[]"></li>').insertBefore('.tags .tagAdd');
                      $(this).val('');
                     
                  }
              }
          });

});

</script>


</head>
<body>
	<div id="acord2" class="acord">
		<h3 class="acord_head">ADD Calender</h3>
		<div class="acord_cont">
			<form id="Add_calender" method="post"
				enctype="multipart/form-data" action="uploadFile">

				<div class="title">
					<label>Title:</label> <input type="text" id="ctitle"
						placeholder="Title" name="ctitle" />
				</div>
				<div class="fdate">
					<label>From Date:</label> <input type="text" id="Fdate"
						placeholder="Start Date" name="Fdate"
						style="background-image: url('<%=request.getContextPath()%>/resources/images/calender/calendar.png');" />
					<span><img
						src="<%=request.getContextPath()%>/resources/images/calender/calendar.png" /></span>
				</div>
				<div class="Tdate">
					<label>To Date:</label> <input type="text" id="Tdate"
						placeholder="End Date" name="Tdate" /> <span><img
						src="<%=request.getContextPath()%>/resources/images/calender/calendar.png" /></span>
				</div>
				<div class="Industry">
					<label>Industry Type:</label> <select id="Itype" name="Itype">
						<option value="1">Industry Types</option>
						<option value="2">Information Technology</option>
						<option value="3">Business & Management</option>
						<option value="4">Engineering & Manufacturing</option>
						<option value="5">Health & Safety</option>
						<option value="6">Art & Craft & Sports</option>
						<option value="7">Certifications</option>
						<option value="8">Other</option>
					</select>
				</div>
				<!-- <div class="Category">
					<label>Category:</label> <select id="Catype" name="Tcate">
						<option value="C1">Industry Types</option>
						<option value="C2">Technology</option>
						<option value="C3">Business & Management</option>
						<option value="C4">Engineering & Manufacturing</option>
						<option value="C5">Health & Safety</option>
						<option value="C6">Art & Craft & Sports</option>
						<option value="C7">Certifications</option>
						<option value="C8">Other</option>
					</select>
				</div>
				<div class="SubCategory">
					<label>SubCateogy:</label> <select id="subctype" name="Tsubcat">
						<option value="sb1">Industry Types</option>
						<option value="sb2">Technology</option>
						<option value="sb3">Business & Management</option>
						<option value="sb4">Engineering & Manufacturing</option>
						<option value="sb5">Health & Safety</option>
						<option value="sb6">Art & Craft & Sports</option>
						<option value="sb7">Certifications</option>
						<option value="sb8">Other</option>
					</select>
				</div> -->
				<div class="Ctype">
					<label>Type Of Calendar:</label> <select id="Ctype" name="Ctype">
						<option>Calendar Type</option>
						<option value="Seminar">Seminar</option>
						<option value="Workshop">Workshop</option>
						<option value="Etc">Etc</option>
					</select>
				</div>
				<div class="price">
					<label>Price:</label> <input type="text" id="cPrice"
						placeholder="price" name="cPrice" />
				</div>
				<div class="price">
						<label>Place:</label> 
						<input type="text" id="place" name="place" />
					</div>
				<div class="description">
					<label>Description:</label> <input type="text" id="CDesc"
						placeholder="Description" name="CDesc" />
				</div>
				<div class="keyCode">
					<label>KeyCode:</label>
					<ul class="tags">

						<li class="tagAdd taglist"><input type="text" id="tags-field">
						</li>
					</ul>
				</div>
				<div class="browse">
					<label>Upload Calender:</label>
					<div class="fileUpload btn btn-primary">
						<span>Brouchure</span> <input type="file" class="upload"
							id="fileupload" name="fileUpload" />
					</div>
				</div>
				<div class="submit">
					<input type="submit" id="Cadd" value="Add">
				</div>
				<input type="hidden" name="userType" value="trainer"> 
			</form>
		</div>

		<h3 class="acord_head">View Calendar</h3>
		<div class="acord_cont">
			<h1>hello</h1>
		</div>


	</div>





</body>
</html>