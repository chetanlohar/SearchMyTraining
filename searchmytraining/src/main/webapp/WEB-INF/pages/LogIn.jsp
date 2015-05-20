<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Login SMT</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery/jquery-1.10.2.js"></script>
<link rel="stylesheet"href="<%=request.getContextPath()%>/resources/css/combine.css" media="all" type="text/css">
<link rel="stylesheet"href="<%=request.getContextPath()%>/resources/css/LogIn.css" media="all" type="text/css">
<script type="text/javascript">
$(function(){
	  $('ul.tabs li:first').addClass('active');
	  $('.tab_block div').hide();
	  $('.tab_block div:first').show();
	  $('ul.tabs li').on('click',function(){
	    $('ul.tabs li').removeClass('active');
	    $(this).addClass('active')
	    $('.tab_block div').hide();
	    var activeTab = $(this).find('a').attr('href');
	    $(activeTab).slideDown('slow');
	    return false;
	  });
	})

</script>
<script type="text/javascript">
$(window).scroll(function(){
    if ($(window).scrollTop() >= 10) {
       $('.header').addClass('fixed_header');
    }
    else {
       $('.header').removeClass('fixed_header');
    }
});

</script>
</head>

<body>
<%@include file="../layouts/Header.jsp"%>

<div class="Log_container">
  <div class="Log_warapar">
      <div class="Registration_Feature">
          <div class="Infowrap">
              <div class="Detail_info">
               <h1>Features Of SearchMyTraining MemberShip.</h1>
                <table>
                   <tbody>
                      <tr>
                     <td style="width: 6%; vertical-align: center;"><img alt="yes" src="<%=request.getContextPath()%>/resources/images/yes1.png"></td>
                     <td><span>Create Multiple Profile.</span>
                           <br>
                         <p>  "Create Customized Profiles to apply in Different Training Type"</p>
                     </td>
                      </tr>
                   
                      <tr>
                      
                      <td style="width: 6%; vertical-align: center;"><img alt="yes" src="<%=request.getContextPath()%>/resources/images/yes1.png"></td>
                     <td><span>Create Multiple Profile.</span>
                           <br>
                         <p>  "Create Customized Profiles to apply in Different Training Type"</p>
                     </td>
                      </tr>
                      <tr>
                      <td style="width: 6%; vertical-align: center;"><img alt="yes" src="<%=request.getContextPath()%>/resources/images/yes1.png"></td>
                     <td><span>Create Multiple Profile.</span>
                           <br>
                         <p>  "Create Customized Profiles to apply in Different Training Type"</p>
                     </td>
                      </tr>
                      <tr>
                      <td style="width: 6%; vertical-align: center;"><img alt="yes" src="<%=request.getContextPath()%>/resources/images/yes1.png"></td>
                     <td><span>Create Multiple Profile.</span>
                           <br>
                         <p>  "Create Customized Profiles to apply in Different Training Type"</p>
                     </td>
                      </tr>
                      <tr>
                      <td style="width: 6%; vertical-align: center;"><img alt="yes" src="<%=request.getContextPath()%>/resources/images/yes1.png"></td>
                     <td><span>Create Multiple Profile.</span>
                           <br>
                         <p>  "Create Customized Profiles to apply in Different Training Type"</p>
                     </td>
                      </tr>
                      <tr>
                      <td style="width: 6%; vertical-align: center;"><img alt="yes" src="<%=request.getContextPath()%>/resources/images/yes1.png"></td>
                     <td><span>Create Multiple Profile.</span>
                           <br>
                         <p>  "Create Customized Profiles to apply in Different Training Type"</p>
                     </td>
                      </tr>
                      <tr>
                      <td style="width: 6%; vertical-align: center;"><img alt="yes" src="<%=request.getContextPath()%>/resources/images/yes1.png"></td>
                     <td><span>Create Multiple Profile.</span>
                           <br>
                         <p>  "Create Customized Profiles to apply in Different Training Type"</p>
                     </td>
                      </tr>
                
                   </tbody>
                </table>
                
              
          </div>
    </div>
   </div>
    <div class="log_wrap">
      <div class="tab_wrapar">
      <ul class="tabs">
      <li><a href="#tab1">Register</a></li>
       <li><a href="#tab2">Login</a></li>
      </ul>
      <div class="clr"></div>
        <div class="tab_block">
          <div id ="tab1">
          <form action="#">
          <p>
             <label for="email1">Email Id:</label>
             <input type="email" id="username" name="username" value="" placeholder="Email Id" required=""/> 
           </p>
           <p>
             <label for="Remail1">Re Enter Email Id:</label>
             <input type="email" id="Remail1" name="Remail1" value="" placeholder="Email Id"/> 
           </p>
           
           <p>
             <label for="Password1">Password:</label>
             <input type="password" id="password" name="password" value="" placeholder="Password"/> 
           </p>
           <p>
            
             <input type="checkbox" id="termc" name="term" value=""checked="checked"/> 
             <label>I agree to the <a href="#">Term and Condition</a> </label>
           </p>
           
           <input type="submit" id="register" value="Register Now"/>
           </form>
           </div>
         
         
        <div id ="tab2">
        
        <form action="#">
            <p>
             <label for="email2">Email Id:</label>
             <input type="email" id="email2" name="email2" value="" placeholder="Email Id" /> 
           </p>
             <p>
             <label for="Password2">Password:</label>
             <input type="password" id="password2" name="password2" value="" placeholder="Password"/> 
           </p>
           <p>
           <input type="button" id="Sign" value="Sign In" style="margin: 5px;"/>
           <a href="#">Forgot Password ?</a>
           </p>
        </form>
          </div>
          </div>
        </div>
      </div>
    
    </div>
  </div>




	<%@include file="../layouts/footer.jsp" %>

</body>
</html>