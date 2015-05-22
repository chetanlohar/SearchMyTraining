<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Training Enquiry</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/pop-up.css" type="text/css"> 
 <script src="<%=request.getContextPath()%>/resources/js/pop-up.js"></script>
        <script src="<%=request.getContextPath()%>/resources/js/popup-box.js"></script>
        
        
</head>
<body>
<div id="pop_up_box">
            <a class="b-close"><img src="<%=request.getContextPath()%>/resources/images/images.png"></a>
            <div class="reg_form">
                <div class="head">
                    <img src="<%=request.getContextPath()%>/resources/images/enquiry-icon.png" alt="register">
                </div>
                <form action="<%=request.getContextPath()%>/trainingenquiry" name="myform" method="post" onsubmit="return (validation());">
                    <h2>Training Enquiry</h2>
                    <div class="fname">
                        <input type="text" autocomplete="off" name="FirstName" value="" placeholder="First Name" required="">
                    </div>
                    <div class="lname">
                        <input type="text" autocomplete="off" name="LastName" value="" placeholder="Last Name" required="">
                    </div>
                    <div class="title">
                        <input type="text" name="title" value="" placeholder="Course Title" required="">
                    </div>
                    <div class="city">
                        <input type="text" name="city" value="" placeholder="City">
                    </div>
                    <div class="mailto">
                        <input type="text" autocomplete="off"  name="Email" value="" placeholder="Email Id" required="">
                    </div>
                    <div class="contact">
                        <input type="text" name="contact" value="" placeholder="Contact No." required="">
                    </div>
                    <div class="req">
                        <textarea  name="requirements" placeholder="Special Requirements"  required=""></textarea>
                    </div>
                    <div class="sign">
                        <input type="submit" name="Send" value="Send" >
                        <input type="reset" name="Cancel" value="Cancel" >
                    </div>

                </form>
            </div>
        </div>
</body>
</html>