<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/header.css"> 
</head>
<body>
  <div class="header">
            <div class="special_link">
                <div class="group">
                    <a href=#  class="animate my-button-new">
                        <span id="outerCircle"></span>
                        <span id="center"></span>
                    </a>
                    <a href="#" class="text my-button-new">    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Group<br> Training Request</a>
                </div>
            </div>
            <div id='cssmenu'>

                <ul id="coolMenu">
                    <li class='active has-sub'><a href='#'><span>Browse</span></a>
                        <ul>
                            <li><a href='#'><span>All Training</span></a></li>
                            <li ><a href='#'><span>Training By Category</span></a></li>
                           <!--  <li><a href='#'><span>By Category</span></a></li> -->
                            <li><a href='#'><span>Training By Institute</span></a></li>
                            <li><a href='#'><span>Training By Location</span></a></li>
                        </ul>
                    </li>

                    <li class='active has-sub'><a href='#'><span>Trainee</span></a>

                        <ul>
                            <li ><a href="#" id="regi_pop"><span >Registration</span></a></li>
                            <!-- <li><a href="#login_form" class="login_pop"><span>Login</span></a></li> -->
                        </ul>

                    </li>
                    <li class='active has-sub'><a href='#'><span>Training Provider</span></a>
                        <ul >
                            <li><a href="#" id="regi_pop2"><span>Registration</span></a></li>
                           <!--  <li><a href="#login_form2" id="login_pop2"><span>Login</span></a></li> -->
                        </ul>
                    </li>
                    <li class='active has-sub'><a href='#'><span>Freelancer</span></a>
                        <ul >
                            <li><a href="#" id="regi_pop3"><span>Registration</span></a></li>
                            
                        </ul>
                    </li>

                    <li class='active has-sub'><a href='#'><span>About Us</span></a>
                        <ul>
                            <li><a href='#'><span>About Us</span></a></li>
                            <li><a href='#'><span>Meet Our Team</span></a></li>
                            <li><a href='#'><span>Training News</span></a></li>
                            <li><a href='#'><span>Contact Us</span></a></li>
                        </ul>
                    </li>
                    <li class='active has-sub'>
                        <a href="javascript:void 0">Blog</a>
                    </li>
                    <li class='active has-sub'>
                        <a href="#" id="sign-up">Sign-In</a>
                    </li>

                </ul>
            </div>

            <div class="logo">
                <div class="training">
                    <a href=#  class="animate my-button ">
                        <span id="outerCircle"></span>
                        <span id="center"></span>
                    </a>
                    <a href="#" class="text my-button">Training Enquiry</a>
                </div>
            </div>    
        </div>


</body>
</html>