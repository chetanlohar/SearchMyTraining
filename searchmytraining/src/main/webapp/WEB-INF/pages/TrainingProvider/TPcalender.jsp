<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script type="text/javascript">

$('#acord2').accordion({
	collapsible : true
});


jQuery(document).ready(function () {
	  
    jQuery(".acord .skip").click(function () {
        var $nextContent = jQuery(this).parent().next().next();
        jQuery(".acord .acord_cont").slideUp("fast", function () {
       
            $nextContent.show()
        });
        jQuery(".acord .acord_cont").hasClass().next().slideDown("fast", function () {
            
            $nextContent.show()
        });
     

    });
})

$("form #Cadd").click(function() {
   var title =$('#ctitle').val();
   var From =$('#Fdate').val();
   var To =$('#Tdate').val();
   var sele =$('#Ctype').val();
   var price =$('#cPrice').val();
   var dec =$('#CDesc').val();
   var key =$('#Ckey').val();
   
    var new_row = "<tr><td>" + title + "</td><td>" + From + "</td><td>" + To + "</td><td>" + sele + "</td><td>" + price + "</td><td>" + dec + "</td><td>" + key + "</td></tr>";
    $("table tbody").append(new_row);
    return false;
});


</script>


</head>
<body>
 <div id="acord2" class="acord">
                        	<h3 class="acord_head">ADD Calender</h3>
                        	<div class="acord_cont">
                        	<form id="Add_calender">
                        	<div id="addC" class="add_calender">
                        	<input type="text" id="ctitle" placeholder="Title"/>
                        	<input type = "date" id ="Fdate" placeholder="Start Date"/>
                        	<input type = "date" id ="Tdate" placeholder="End Date"/>
                        	<select id ="Ctype">
                        	 <option>Seminar</option>
                        	 <option>Workshop</option>
                        	  <option>Etc</option>
                        	</select>
                        	<input type="text"   id = "cPrice" placeholder="price"/>   
                        	<input type="text"   id = "CDesc" placeholder="Description"/>
                        	<input type="text"   id = "Ckey" placeholder="Keyword"/>
                        	<div class="fileUpload btn btn-primary">
                                     <span>Upload</span>
                                      <input type="file" class="upload" />
                              </div>
                        	<input type="button" style="width: 70px; float: right; margin-right: 20px;" id="Cadd"  value="Add">
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