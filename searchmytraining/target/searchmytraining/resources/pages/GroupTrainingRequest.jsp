<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Group Training Request</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/pop-up.css" type="text/css"> 
 <script src="<%=request.getContextPath()%>/resources/js/pop-up.js"></script>
        <script src="<%=request.getContextPath()%>/resources/js/popup-box.js"></script>
   
   
</head>
<body>
 <div id="pop_up_box_1">
            <a class="b-close"><img src="<%=request.getContextPath()%>/resources/images/images.png"></a>
            <div class="reg_form">
                <div class="head">
                    <img src="<%=request.getContextPath()%>/resources/images/User group.png" alt="register">
                </div>
                <form action="<%=request.getContextPath()%>/requesttraining" name="myform" method="post" onsubmit="return (validation());">
                    <h2>Group Training</h2>
                    <div class="name">
                        <input type="text" autocomplete="off" name="Name" value="" placeholder="Name" required="">
                    </div>
                    <div class="cmpnyname">
                        <input type="text" autocomplete="off" name="CompanyName" value="" placeholder="Company Name" required="">
                    </div>
                    <div class="coursetitle">
                        <input type="text" name="title" value="" placeholder="Course Title" required="">
                    </div>
                    <div class="mailto">
                        <input type="text" autocomplete="off"  name="Email" value="" placeholder="Email Id" required="">
                    </div>
                    <div class="contact">
                        <input type="text" name="contact" value="" placeholder="Contact No." required="">
                    </div>
                    <div class="contact">
                        <input type="text" name="contact" value="" placeholder="Approx No of Participents" required="">
                    </div>
                    <div class="city">
                        <input type="text" name="city" value="" placeholder="City" required="">
                    </div>
                    <div class="req">
                        <textarea  name="requirements" placeholder="Special Requirements"  required=""></textarea>
                    </div>
                    <div class="sign">
                        <input type="submit"   name="Send" value="Send" >
                        <input type="reset"    name="Cancel" value="Cancel" >
                    </div>
                </form>
            </div>
        </div>
</body>
</html>