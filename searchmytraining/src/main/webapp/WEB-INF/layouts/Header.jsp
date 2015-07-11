<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/header.css"> 
<link
	href="<%=request.getContextPath()%>/resources/css/font-awesome.min.css"
	rel="stylesheet" type="text/css"> 
<script type="text/javascript">
$(document).ready(function(){
	

$('#dropM').on('click',function(e){
	$('#coolMenu').slideToggle();

})
	
})
  function randString(x){
	             
         	 var text = " ";

         	    var charset = "QWERTYUIOPASDFGHJKLZXCVBNMabcdefghijklmnopqrstuvwxyz0123456789";

         	    for( var i=0; i < x; i++ )
         	        text += charset.charAt(Math.floor(Math.random() * charset.length));
         	    
                    $(".Ccode").html(text);
         	
         		
         	}
</script>
</head>
<body>
<%@include file="../pages/Trainee/TraineeRegistration.jsp"%>
	<%@include
		file="../pages/TrainingProvider/TrainingProviderRegistration.jsp"%>
	<%@include file="../pages/FreeLancer/FreelancerResistration.jsp"%>
	<%@include file="../pages/TrainingEnquiry.jsp"%>
	<%@include file="../pages/GroupTrainingRequest.jsp"%>
	<%@include file="../pages/Sign-In.jsp"%>
	<%@include file="../pages/AdvSearch.jsp"%>
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
                        <span class="menubtn" id ="dropM"></span>
                <ul id="coolMenu">
                <li class='active has-sub'><a href='${pageContext.request.contextPath}'><i class="fa fa-home"></i></a>
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
                            <li><a href='Benefit'><span>Benefits Of Registration</span></a></li>
                        </ul>

                    </li>
                    <li class='active has-sub'><a href='#'><span>Training Provider</span></a>
                        <ul >
                            <li><a href="#" id="regi_pop2"><span>Registration</span></a></li>
                           <li><a href='Benefit'><span>Benefits Of Registration</span></a></li>
                        </ul>
                    </li>
                    <li class='active has-sub'><a href='#'><span>Freelancer</span></a>
                        <ul >
                            <li><a href="#" id="regi_pop3"><span>Registration</span></a></li>
                            <li><a href='Benefit'><span>Benefits Of Registration</span></a></li>
                        </ul>
                    </li>

                    <li class='active has-sub'><a href='about'><span>About Us</span></a>
                        <ul>
                            <li><a href="about"><span>Why SearchMyTraining</span></a></li>
                            <li><a href='Team'><span>About Us</span></a></li>
                            <li><a href='News'><span>SearchMyTraining News</span></a></li>
                             <li><a href='Career'><span>Career With Us</span></a></li>
                            <li><a href="contact"><span>Contact Us</span></a></li>
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