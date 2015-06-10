<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript">

function recenAddedCalender() {

	$("#abc").load("<%=request.getContextPath()%>/getRecentelyAdded",function(responseText, statusText, xhr) {
					if (statusText == "success")
					/*  alert("Successfully loaded the content!"); */
						if (statusText == "error")
							alert("An error occurred: " + xhr.status + " - "
									+ xhr.statusText);
				});
	
	}

</script>
</head>
<body>

<div id=abc>
		
		 <table class="viewcalender">
				<tr>
					<th>Title</th>
					<th>Start Date</th>
					<th>End Date</th>
					<th>Price</th>
					<th>Brochure</th>
					<th>Description</th>
				</tr>
				<c:forEach var="calender" items="${recentelyAdded}">
					<tr>
						<td>${calender.title}</td>
						<td>${calender.start_date}</td>
						<td>${calender.end_date}</td>
						<td>${calender.price}</td>
						<td><a href="<%=request.getContextPath()%>/downloadFile?path=${calender.brochure}">Brouchure</a></td>
						<td>${calender.description}</td>
					</tr>
				</c:forEach>


			</table> 

		</div>
		
	
</body>
</html>