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
       <script src="<%=request.getContextPath()%>/resources/js/validation.js"></script>
  <script src="<%=request.getContextPath()%>/resources/js/Validations/TEvalidation.js"></script>  
  <script src="<%=request.getContextPath()%>/resources/js/work/trainingenquiry.js"></script>  
  
  
    
</head>
<body>
<div id="pop_up_box">
            <a class="b-close " href="javascript:void(0);"><img src="<%=request.getContextPath()%>/resources/images/images.png"></a>
            <div class="reg_form">
                <div class="head">
                    <img src="<%=request.getContextPath()%>/resources/images/enquiry-icon.png" alt="register">
                </div>
                <form id="enquiryform" name="myform" method="post" onsubmit="return TEvalidate();">
                    <h2>Training Enquiry</h2>
                    <div class="fname">
                        <input type="text" autocomplete="off" name="firstname" id="firstname22" placeholder=" First Name" autofocus >
                    </div>
                    <span id="error29" class="errorm"><text>.</text></span>
                    <div class="lname">
                        <input type="text" autocomplete="off" name="lname" id="lname22" placeholder="Last Name" >
                    </div>
                    <span id="error30" class="errorm"><text>.</text></span>
                    <div class="title">
                        <input type="text" autocomplete="off" name="title" id="title22" placeholder="Subject / Title" >
                    </div>
                    <span id="error31" class="errorm"><text>.</text></span>
                    <div class="city">
                        <input type="text" autocomplete="off" name="city" id="city22" placeholder="City">
                    </div>
                    <span id="error32" class="errorm"><text>.</text></span>
                    <div class="mailto">
                        <input type="text" autocomplete="off"  name="email" id="email22" placeholder="Email Id" >
                    </div>
                    <span id="error33" class="errorm"><text>.</text></span>
                    <div class="contact">
                        <input type="text" autocomplete="off" name="mob" id="mob22" placeholder="Contact No." onkeypress="return TEValidate(event)">
                    </div>
                    <span id="error34" class="errorm"><text>.</text></span>
                    <div class="req">
                        <textarea  name="requirements" id="requirements22" class="require" placeholder="Requirement Description"></textarea>
                    </div>
                  
                    <div class="sign">
                        <input type="button" name="Submit" value="Send" onclick="enquiry();">
                        <input type="reset" name="Cancel" value="Reset" class="cancel close1" >
                    </div>

                </form>
            </div>
        </div>
</body>
</html>