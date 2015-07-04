<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/pop-up.css"
	type="text/css">
<script src="<%=request.getContextPath()%>/resources/js/pop-up.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/popup-box.js"></script>
</head>
<script type="text/javascript">
$( document ).ready(function() {
    console.log( "ready!" );
});

</script>
<body>
	<div id="pop_up_box_11">
		<a class="b-close close1"><img
			src="<%=request.getContextPath()%>/resources/images/images.png"></a>
		<form action="./getContacted">
			Name: <input id="nameid" type="text"><br> 
			Submit: <input type="button" value="Register" onClick="giveLink('getContacted')"/>
		</form>
	</div>
</body>
</html>