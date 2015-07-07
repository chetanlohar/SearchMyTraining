<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Login SMT</title>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/jquery/jquery-1.10.2.js"></script>

<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/modernizr-1.5.min.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/combine.css"
	media="all" type="text/css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/LogIn.css"
	media="all" type="text/css">

<script type="text/javascript">
	$(window).scroll(function() {
		if ($(window).scrollTop() >= 10) {
			$('.header').addClass('fixed_header');
		} else {
			$('.header').removeClass('fixed_header');
		}
	});

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
	<%@include file="../layouts/Header.jsp"%>

	<div class="Log_container">
		<div class="Log_warapar">
			<div class="log_bar">
				<div class="form_container ">
					<h1>Sign In</h1>
					
				
					<c:if test="${'true' eq param.logout}">
						<div style="color: blue">
							Logout successful!!!<br />

						</div>
					</c:if>
					<c:if test="${'true' eq param.access_denied}">
						<div style="color: blue">
							Access Denied!!!<br />

						</div>
					</c:if>
					
					
					<form action="#">
						<div class="user">
							<input type="text" name="username"
								placeholder="  User or Email Address">

						</div>
						<div class="pass">
							<input type="password" name="password" placeholder="  Password">
						</div>

						<div class="submit">
							<input type="submit" value="Sign In"> <a href="<%=request.getContextPath()%>/ForgotPass">Forgot
								Password ?</a>

						</div>

					</form>
					<div class="social">
						<h1>Connect With Us:</h1>
						<ul>
							<li><a href="#"><img alt="facebook"
									src=" <%=request.getContextPath()%>/resources/images/social/face.png"></a>
							</li>
							<li><a href="#"><img alt="facebook"
									src=" <%=request.getContextPath()%>/resources/images/social/google.png"></a></li>
							<li><a href="#"><img alt="facebook"
									src=" <%=request.getContextPath()%>/resources/images/social/in.png"></a></li>
							<li><a href="#"><img alt="facebook"
									src=" <%=request.getContextPath()%>/resources/images/social/pin.png"></a></li>
							<li><a href="#"><img alt="facebook"
									src=" <%=request.getContextPath()%>/resources/images/social/twit .png"></a></li>
							<li><a href="#"><img alt="facebook"
									src=" <%=request.getContextPath()%>/resources/images/social/yout.png"></a></li>
						</ul>

					</div>


					<div class="Nuser">
						<p>Not Account Yet ?</p>
						<a href="#">Sign Up</a>
					</div>

				</div>



			</div>
			<div class="advertise"></div>

		</div>



	</div>




	<%@include file="../layouts/footer.jsp"%>

</body>
</html>