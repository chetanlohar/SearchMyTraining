<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script type="text/javascript">
function show_checked()
{
	var arrCB = {};

	$("input[name='Question1']:checked").each(
	    function(){
	        var id = this.id;
	        arrCB[id] = (this.checked ? 1 : 0)
	    }
	);

	var text = JSON.stringify(arrCB);
	alert(text);
	document.getElementById("demo").innerHTML = text;
	
	
}
</script>
</head>
<body>
<h1>SearchMyTraining</h1> 
<h2>SMT123</h2>
<h3>Test</h3>
<form>
	<input type="checkbox" name="Question1" id="Answer1" value="Answer1" onclick="show_checked()"/><label for="Answer1">Answer 1</label><br/>
	<input type="checkbox" name="Question1" id="Answer2" value="Answer2" onclick="show_checked()"/><label for="Answer2">Answer 2</label><br/>
	<input type="checkbox" name="Question1" id="Answer3" value="Answer3" onclick="show_checked()"/><label for="Answer3">Answer 3</label><br/>
</form>
<br><br>

<p id="demo"></p>
</body>
</html>