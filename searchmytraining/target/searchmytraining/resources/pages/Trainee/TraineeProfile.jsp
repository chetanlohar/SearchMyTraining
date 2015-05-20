<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html lang=''>
<head>
<title>Trainee Profile</title>
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
	href="<%=request.getContextPath()%>/resources/css/TraineeProfile.css"
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
							<h3 class="acord_head">Personal Details</h3>
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
									<div class="email">
										<label>Email Id :</label> <input type="email" name="email" />
									</div>
									<div class="contact">
										<label>Phone No :</label> <input type="text" name="phone" />
									</div>
									<div class=save>
										<input type="submit" value="Save" name="save" /> <input
											type="reset" value="Edit" name="Edit" />
									</div>
								</form>
							</div>

							<h3 class="acord_head">Employment Details</h3>
							<div class="acord_cont">
								<form class="multi">
									<div class="emptype">
										<label>Employment Type :</label> <select>
											<option value="emptype1">Full Time</option>
											<option value="emptype2">Part Time</option>
											<!-- <option value="emptype3">C</option> -->
										</select>
									</div>
									<div class="industry">
										<label> Industry :</label> <select>
											<option value="ind1">P</option>
											<option value="ind2">Q</option>
											<option value="ind3">R</option>
										</select>
									</div>
									<div class="funArea">
										<label>Functional Area :</label> <input type="text"
											name="website" value="">
									</div>
									<div class="employer">
										<label>Employer :</label> <select>
											<option value="emp1">A</option>
											<option value="emp2">B</option>
											<option value="emp3">C</option>
										</select>
									</div>

									<div class="jobProf">
										<label>Job Profile </label>
										<textarea type="text" name="jobprof"></textarea>
									</div>
									<div class=save>
										<input type="submit" value="Save" name="save" /> <input
											type="reset" value="Edit" name="Edit" />
									</div>
								</form>
							</div>


							<h3 class="acord_head">Location Details</h3>
							<div class="acord_cont">
								<form action="" class="multi">
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
									<div class=save>
										<input type="submit" value="Save" name="save" /> <input
											type="reset" value="Edit" name="Edit" />
									</div>
								</form>

							</div>

							<h3 class="acord_head">Contact Details</h3>
							<div class="acord_cont">
								<form action="#">
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
									<div class="secmail">
										<label>Secondary Mail :</label> <input type="email" name="name" />
									</div>
									<div class=save>
										<input type="submit" value="Save" name="save" /> <input
											type="reset" value="Edit" name="Edit" />
									</div>
								</form>
							</div>
						</div>

					</div>
					<!-- @end #home-content -->


					<div id="about-content" class="contentblock hidden">

						
					</div>

					<div id="ideas-content" class="contentblock hidden">
					<div id="acord1" class="acord">
					<h3 class="acord_head">Change Password</h3>
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
									<div class="email">
										<label>Email Id :</label> <input type="email" name="email" />
									</div>
									<div class="contact">
										<label>Phone No :</label> <input type="text" name="phone" />
									</div>
									<div class=save>
										<input type="submit" value="Save" name="save" /> <input
											type="reset" value="Edit" name="Edit" />
									</div>
								</form>
							</div>
					</div>
					
					</div>
				

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
