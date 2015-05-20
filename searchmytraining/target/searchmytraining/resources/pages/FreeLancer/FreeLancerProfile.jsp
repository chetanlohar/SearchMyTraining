<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html lang=''>
<head>
<title>Free Lancer Profile</title>
<meta charset='utf-8'>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/header.css">
<script src="http://code.jquery.com/jquery-latest.min.js"
	type="text/javascript"></script>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/reset.css"
	type="text/css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/FreeLancerProfile.css"
	type="text/css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/tabs.css"
	type="text/css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/form.css"
	type="text/css">



<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/jquery/jquery-1.10.2.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/jquery/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/jquery/jquery-ui-1.10.4.custom.js"></script>
<!--color-->
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/accordion.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/AddDel.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/jquery/jquery.iconmenu.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/include.js"></script>

</head>
<body style="min-width: 960px;">
	<%@include file="/resources/layouts/Header-1.jsp"%>
	<div class="container">
		<div class=" container-form-wrapar">
			<div class="banner"></div>
			<div style="margin-top: 0px;" id="w" class="clearfix">
				<ul id="sidemenu">
					<li><a href="#home-content" class="open"><strong>Profile</strong></a>
					</li>

					<li><a href="#about-content"><strong>Insights</strong></a></li>

					<li><a href="#ideas-content"><strong>Settings</strong></a></li>

					<li><a href="#contact-content"><strong>Send SMS</strong></a></li>
					<li><a href="#contact-content"><strong>Send Email</strong></a>
					</li>
					<li><a href="#contact-content"><strong>Add
								Brouchers</strong></a></li>
				</ul>
				<div id="content">
					<div id="home-content" class="contentblock">
						<!--<h1>Update Profile</h1>-->
						<div id="acord1" class="acord">
							<h3 class="acord_head">Profile Details</h3>
							<div class="acord_cont">
								<form action="#">
									<div class="name">
										<label>First Name :</label> <input type="text" name="name" />
									</div>
									<div class="name">
										<label>Middle Name :</label> <input type="text" name="name" />
									</div>
									<div class="name">
										<label>Last Name :</label> <input type="text" name="name" />
									</div>
									<div class="Email">
										<label>Email(Login Id) :</label> <input type="email"
											name="email" />
									</div>

									<input type="submit" value="Save" name="save" /> <input
										type="reset" value="Edit" name="Edit" />
								</form>
							</div>

							<h3 class="acord_head">Contact Information</h3>
							<div class="acord_cont">
								<form action="" class="multi">
								<div id="cont">
										<p>
											<label>Contact No : </label> <select>
												<option value="Phone">Phone</option>
												<option value="Phone">Land Line</option>
												<option value="Phone">Fax</option>
											</select> <input type="text" name="website" value="">
										</p>
									</div>
									<input type="button" value="+" id="addcontact" />
									<div class="website">
										<label>Website :</label> <input type="text" name="name" />
									</div>
								
								 <fieldset>
								 <legend><b>Contact Info :</b></legend>
									<div class="flatNo">
										<label>Building No./Flat No./Society No. :</label> <input
											type="text" name="name" />
									</div>
									<div class="street">
										<label>Street :</label> <input type="text" name="name" />
									</div>
									<div class="landmark">
										<label>Landmark :</label> <input type="text" name="name" />
									</div>
									<div class="pin">
										<label>Pincode :</label> <input type="text" name="name" />
									</div>
									<div class="country">
										<label>Country :</label> <select>
											<option value="con1">India</option>
											<option value="con2">B</option>
											<option value="con3">C</option>
										</select>
									</div>
									<div class="state">
										<label>State :</label> <select>
											<option value="state1">Maharashtra</option>
											<option value="state2">B</option>
											<option value="state3">C</option>
										</select>
									</div>
									<div class="city">
										<label>City :</label> <select>
											<option value="city1">Pune</option>
											<option value="city2">Mumbai</option>
											<option value="city3">Nagpur</option>
										</select>
									</div>
									</fieldset>
									<div class=save>
										<input type="submit" value="Save" name="save" /> <input
											type="reset" value="Edit" name="Edit" />
									</div>
								</form>

							</div>

							<h3 class="acord_head">Education Details</h3>
							<div class="acord_cont">
								<form class="multi">
									<div class="name">
										<label>Degree Type :</label> <select
											style="width: 100px;">
											<option value="qua">Diploma</option>
											<option value="qua">Graduate</option>
											<option value="qua">Post Graduate</option>
										</select>
									</div>
									<div class="qua">
										<label>Qualification :</label> <input type="text"
											name="website" value="">
									</div>
									<div class="spec">
										<label>Specification :</label> <select style="width: 100px;">
											<option value="spe">A</option>
											<option value="spe">B</option>
											<option value="spe">C</option>
										</select>
									</div>
									<!--<div class="seperate">-->
									<div class="university">

										<label>University: </label> <input type="text" name="website"
											value="">
									</div>

									<div class="year">

										<label>Year Of Passing : </label> <select>
											<option value="Phone">2000</option>
											<option value="Phone">2001</option>
											<option value="Phone">2002</option>
											<option value="Phone">2003</option>
											<option value="Phone">2004</option>
											<option value="Phone">2005</option>
											<option value="Phone">2006</option>
											<option value="Phone">2007</option>
										</select>

									</div>
									<input type="submit" value="Save" name="save" /> <input
										type="reset" value="Edit" name="Edit" />
								</form>
							</div>


							<h3 class="acord_head">Certification/Awards/Achievements</h3>
							<div class="acord_cont">
								<form action="" class="multi">
									<div id="client">
										<p>
											<label >Achievements/Awards/Certification :</label> 
											<textarea type="text" > </textarea> 
										</p>
										<h3>(Max 250 characters)</h3>
									</div>
									
									<!-- <input type="button" value="+" id="addClient" /><br> --> 
									<input type="submit" value="Save" name="save" /> <input type="reset"
										value="Edit" name="Edit" />
								</form>

							</div>
						</div>

					</div>
					<!-- @end #home-content -->


					<div id="about-content" class="contentblock hidden">

						<p>ygygiugyi</p>
					</div>

					<div id="ideas-content" class="contentblock hidden"></div>
					<!-- @end #ideas-content -->

					<div id="contact-content" class="contentblock hidden">
						<h1>ooioioi</h1>






					</div>
					<!-- @end #contact-content -->
				</div>
			</div>
			<!-- @end #w -->

			<script>
				$('#acord1').accordion({
					collapsible : true
				});
			</script>


		</div>
	</div>
	<%@include file="/resources/layouts/footer.jsp"%>
</body>
</html>
