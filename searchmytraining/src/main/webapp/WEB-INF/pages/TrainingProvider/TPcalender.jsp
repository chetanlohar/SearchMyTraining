<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/datepicker/date.js"></script>

<script type="text/javascript">

$('#acord2').accordion({
	collapsible : true
});
jQuery(".tm-input").tagsManager();
$('#fdate,#Tdate').datepicker();
</script>


</head>
<body>
 <div id="acord2" class="acord">
                        	<h3 class="acord_head">ADD Calender</h3>
                        	<div class="acord_cont">
                        	<form id="Add_calender">
                        	
                        	<div class="title">
                        	<label>Title:</label>
                        	<input type="text" id="ctitle" placeholder="Title"/>
                        	</div>
                        	<div class="fdate">
                        	<label>From Date:</label>
                        	<input type = "text"  id ="Fdate" placeholder="Start Date"/>
                        	<span><img src="<%=request.getContextPath()%>/resources/images/calender/calendar.png"/></span>
                        	</div>
                        	<div class="Tdate">
                        	<label>To Date:</label>
                        	<input type = "text"  id ="Tdate" placeholder="End Date"/>
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
                        	<input type="text"   id = "cPrice" placeholder="price"/>   
                        	</div>
                        	<div class="description">
                        	<label>Description:</label>
                        	<input type="text"   id = "CDesc" placeholder="Description"/>
                        	</div>
                        	<div class="keyCode">
                        	<label>KeyCode:</label>
                        	<input type="text" name="tags" placeholder="Tags" class="tm-input"/>
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