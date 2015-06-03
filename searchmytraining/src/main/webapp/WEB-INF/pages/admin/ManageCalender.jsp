<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page
	import="com.searchmytraining.dto.FreelancerDTO,com.searchmytraining.entity.UserEntity"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/datepicker/date.js"></script>
	
<script type="text/javascript">
$('#acord1').accordion({
	collapsible : true
});

jQuery(document).ready(function () {
	  
    jQuery(".acord .skip").click(function () {
        var $nextContent = jQuery(this).parent().next().next();
        jQuery(".acord .acord_cont").slideUp("fast", function () {
       
            $nextContent.show()
        });
        jQuery(".acord ").next().slideDown("fast", function () {
            
            $nextContent.show()
        });
     

    });
}); 

$(document).ready(function() {
	function Validate() {
		var image = document.getElementById("file").value;
		if (image == '') {
			alert("Please enter Image Path");
			document.getElementById("image").focus();
			return false;
		}	
	}
	$('#Fdate,#Tdate').datepicker();
});	
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
	          <div id="acord1" class="acord">
	           <h3 class="acord_head">
		          <span></span>
		         Add Calender</h3>
		           
							<div class="acord_cont">
								<form id="Add_calender" name="frm" method="post"
				enctype="multipart/form-data" action="uploadFile"
				onSubmit="return Validate();">
                        	
                        	<div class="title">
                        	<label>Title:</label>
                        	<input type="text" id="ctitle" placeholder="Title" autocomplete="off" name="ctitle"/>
                        	</div>
                          	<div class="fdate">
                        	<label>From Date:</label>
                        	<input type = "text" class="tdate1" id ="Fdate" placeholder="Start Date" autocomplete="off" name="Fdate"/>
                        	<%-- <span><img src="<%=request.getContextPath()%>/resources/images/calender/calendar.png"/></span> --%>
                        	
                        	</div>
                        	<div class="Tdate">
                        	<label>To Date:</label>
                        	<input type = "text" class="tdate1"  id ="Tdate" placeholder="End Date" autocomplete="off" name="Tdate"/>
                        	<%-- <span><img src="<%=request.getContextPath()%>/resources/images/calender/calendar.png"/></span> --%>
                        	</div>
                        	<div class="Industry">
                        	<label>Industry Type:</label>
                        	<select id ="Itype" name="Itype">
                        	  <option value="1">Industry Types</option>
                        	  <option value="1"> Technology</option>
                        	  <option value="2">Business & Management</option>
                        	  <option value="3">Engineering & Manufacturing</option>
                        	  <option value="4">Health & Safety</option>
                        	  <option value="5">Art & Craft & Sports</option>
                        	  <option value="6">Certifications</option>
                        	  <option value="7">Other</option>
                        	</select>
                        	</div>
                        	<div class="Ctype">
                        	<label>Type Of Calendar:</label>
                        	<select id ="Ctype" name="Ctype">
                        	 <option>Calendar Type</option>
                        	 <option>Seminar</option>
                        	 <option>Workshop</option>
                        	  <option>Etc</option>
                        	</select>
                        	</div>
                        	<div class="price">
                        	
                        	<label>Price:</label>
                        	<input type="text"   id = "cPrice" placeholder="price" autocomplete="off" name="cPrice"/>   
                        	</div>
                        	<div class="description">
                        	<label>Description:</label>
                        	<input type="text"   id = "CDesc" placeholder="Description" autocomplete="off" name="CDesc"/>
                        	</div>
                        	<div class="keyCode">
                        	<label>KeyCode:</label>
                        	 <ul class="tags">
    
                           <li class="tagAdd taglist">
                          <input type="text" id="tags-field">
                               </li>
                                 </ul>
                        
                        	</div>
                        	          	
                        
                        	
                        	<div class="browse">
                        	<label>Upload Calender:</label>
                        	<input id="uploadFile" placeholder="Choose File" disabled="disabled" />
                        	<div class="fileUpload btn btn-primary">
                                     <span>Brouchure</span>
                                      <input type="file" class="upload" id="fileupload" name="fileUpload"/>
                              </div>
                              <script type="text/javascript">
                              document.getElementById("fileupload").onchange = function () {
                            	    document.getElementById("uploadFile").value = this.value;};
                              </script>
    

                              </div>
                             <div class="submit">
                        	<input type="submit"  id="Cadd"  value="Add">
                        	</div>
                        	</form>
       
							</div>
		       <h3 class="acord_head plus">
		       <span></span>
		       Industrywise Calender Selection
		        </h3>
		       
							<div class="acord_cont">
								<form action="#">
									<div class="selectCalender">
									  <label>Industry </label>
									  <select id="industryLists">
									  <option>A</option>
									  <option>B</option>
									  <option>C</option>
									  <option>D</option>
									  <option>E</option>
									  <option>F</option>
									  </select>
									</div>									
								</form>
							</div>

		          <h3 class="acord_head">
		          <span></span>
		          Recently Added Calenders</h3>
		           
							<div class="acord_cont">
								<form action="#">
									
								</form>
							</div>

	            <h3 class="acord_head" >
	            <span></span>
		          Ranking As Per Industry</h3>
		           
							<div class="acord_cont">
								<form action="#">
									        
								</form>
							</div>
							
							<h3 class="acord_head" >
							<span></span>
							Delete Calender</h3>
							
							<div class="acord_cont">
								<form action="#">
									
								</form>
							</div>
		
	</div>
</body>
</html>