<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript">

function recenAddedCalendera() {

	$("#xyz").load("<%=request.getContextPath()%>/getUserCalender",function(responseText, statusText, xhr) {
					if (statusText == "success")
					// alert("Successfully loaded the content!"); 
						if (statusText == "error")
							alert("An error occurred: " + xhr.status + " - "
									+ xhr.statusText);
				});
	
	}

</script>
</head>
<body>

<div id=xyz>
		
		 <table class="viewcalender">
				<tr>
					<th>Title</th>
					<th>Start Date</th>
					<th>End Date</th>
					<th>Price</th>
					<th>Brochure</th>
					<th>Description</th>
				</tr>
				<c:forEach var="calender1" items="${userAllCalender}">
					<tr>
						<td>${calender1.title}</td>
						<td>${calender1.start_date}</td>
						<td>${calender1.end_date}</td>
						<td>${calender1.price}</td>
						<td><a href="<%=request.getContextPath()%>/downloadFile?path=${calender1.brochure}">Brouchure</a></td>
						<td>${calender1.description}</td>
					</tr>
				</c:forEach>


			</table> 

		</div>
</body>
</html>