<%@page
	import="com.searchmytraining.dto.FreelancerDTO,com.searchmytraining.entity.UserEntity"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/datepicker/date.js"></script>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/tooltip.css"
	type="text/css">
<script type="text/javascript">
	$('#Fdate,#Tdate').datepicker();
</script>
</head>
<body>
	<div class="calender">
		<form action="">
			<div class="ctype">
				<label class="a">Select Calender Detail Type :</label>&nbsp;&nbsp; <select>
					<option>Newest</option>
					<option>Oldest</option>
				</select>
			</div>
			<div class="industry">
				<label class="a">Select Industry :</label>&nbsp;&nbsp; <select>
					<option>a</option>
					<option>b</option>
					<option>c</option>
					<option>d</option>
				</select>
			</div>
			<div class="industry">
				<label class="a">Select Category :</label>&nbsp;&nbsp; <select>
					<option>a</option>
					<option>b</option>
					<option>c</option>
					<option>d</option>
				</select>
			</div>
			<div class="industry">
				<label class="a">Select Sub-Category :</label>&nbsp;&nbsp; <select>
					<option>a</option>
					<option>b</option>
					<option>c</option>
					<option>d</option>
				</select>
			</div>
			<div class="citynew">
				<label class="a">Select City :</label> <select>
					<option>Pune,Maharashtra,India</option>
					<option>Mumbai,Maharashtra,India</option>
					<option>Solapur,Maharashtra,India</option>

				</select>
			</div>
			<div class="date-range">
				<label class="a">Select Date Range :</label>
				<text>From </text>
				<input type="text" id="Fdate" placeholder="Start Date"
					autocomplete="off" name="Fdate" /> <span><img
					src="<%=request.getContextPath()%>/resources/images/calender/calendar.png" /></span>



				<text>To </text>
				<input type="text" id="Tdate" placeholder="End Date"
					autocomplete="off" name="Tdate" /> <span><img
					src="<%=request.getContextPath()%>/resources/images/calender/calendar.png" /></span>
			</div>
			<div class="search1">
				<input type="button" value="Search">
			</div>

		</form>
		<div class="result_section">
			<div class="sort_by">	
				<select>
					<option>Training Location</option>
					<option>Training Date</option>
				</select>
				<h4>Sort By</h4>
			</div>
			<div class="calender_display">
			<div class="cal">
			<h3>Training Provider Name<br>
			     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pune</h3>
			
			<input type="button" Value="View Calender">
			</div>
			<div class="cal">
			<h3>Training Provider Name<br>
			     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pune</h3>
			
			<input type="button" Value="View Calender">
			</div>
			<div class="cal">
			<h3>Training Provider Name<br>
			     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pune</h3>
			
			<input type="button" Value="View Calender">
			</div>
			</div>
		</div>
	</div>

</body>
</html>