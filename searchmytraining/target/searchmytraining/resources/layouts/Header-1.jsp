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
            
            <div id='cssmenu'>

                <ul id="coolMenu">
                    <li class='active has-sub'><a href='#'><span>Browse</span></a>
                        <ul>
                            <li><a href='#'><span>All Training</span></a></li>
                            <li ><a href='#'><span>Training By Category</span></a></li>
                            <li><a href='#'><span>Training By Institute</span></a></li>
                            <li><a href='#'><span>Training By Location</span></a></li>
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
                        <a href="#" id="sign-out">Sign-Out</a>
                    </li>

                </ul>
            </div>

             
        </div>


</body>
</html>