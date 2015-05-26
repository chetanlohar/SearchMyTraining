<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html><%@page
	import="com.searchmytraining.dto.FreelancerDTO,com.searchmytraining.entity.UserEntity"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

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

	
</script>
</head>
<body>
	          <div id="acord1" class="acord">
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