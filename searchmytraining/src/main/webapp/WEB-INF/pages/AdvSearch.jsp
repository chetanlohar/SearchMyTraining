<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" 	href="<%=request.getContextPath()%>/resources/css/pop-up.css" type="text/css">
<<<<<<< HEAD
 <script src="<%=request.getContextPath()%>/resources/js/pop-up.js"></script>
=======
<%--<script src="<%=request.getContextPath()%>/resources/js/pop-up.js"></script>
>>>>>>> c6f3011c708578ea6f66ff16aae938c005884dcb
<script src="<%=request.getContextPath()%>/resources/js/popup-box.js"></script>
 <title>Advance Search</title>
</head>
<body>

<div id="pop_up_box_9">

<div id="pop-up-box-head">Advanced Search</div>
<div id="pop-up-box-contents">
<form action="">
<div class="row1">
<label>Keywords</label>
<input type="text" id="keyword">
</div>
<div class="row2">
<label>Country </label>
<input type="text" id="country">
<label>City </label>
<input type="text" id="city">
</div>
<div class="row3">
<label>From Date </label>
<input type="text" id="from_date">
<label id="sd">To Date </label>
<input type="text" id="to_date">
</div>
<div class="row4">
<label >Price Range </label>
<select id="price_range" dir="ltr">
<option value=""> Select Price Range </option>
<option value="">0-2000</option> 
<option value="">2001-4000</option>
<option value="">4001-7000</option>
<option value="">7001-10000</option>
<option value="">10001-15000</option>
<option value="">15001-25000</option>
<option value="">25000-Above</option>
</select>
</div>
<div class="row5">
<label >Training By Industry </label>
<select id="training_by_industry">
<option value="">Select Industry</option>
<option value=""></option>
<option value=""></option>
<option value=""></option>
 </select>
</div>
<div class="row6">
<label >Training By Category </label>
<select id="training_by_category">
<option value="">Select Category</option> 
<option value=""></option>
<option value=""></option>
<option value=""></option>
<option value=""></option>
</select>
</div>
<div id="button2"><input type="submit" id="search_button" value="Search"> 
<input type="reset" id="reset_button" value="Clear">
</div>
	</form>
	</div>
</div>
</body>
</html>