<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<script type="text/javascript">
	$('#calender_show').paging({
		limit : 10
	});
</script>
</head>
<body>


	
	<div id="t" class="">
		<ul id="tabmenu">
			<li class="open hvr-underline-reveal"
				onclick="loadcalender('<%=request.getContextPath()%>');"><a>Calender</a></li>

			<li class="open hvr-underline-reveal"
				onclick="loadinstitute('<%=request.getContextPath()%>');"><a>Institute</a></li>

			<li class="open hvr-underline-reveal"
				onclick="loadfreelancer('<%=request.getContextPath()%>');"><a>Freelancer</a></li>

			<li class="open hvr-underline-reveal"
				onclick="loadseminar('<%=request.getContextPath()%>');"><a>Seminar/</a></li>

		</ul>
		<div id="tabcontent">
			<div id="home-content" class="contentblock">
				<div class="Calender_wrapar">
					<table id="calender_show">
						<thead>
							<tr>
								<th>Title</th>
								<th>Start Date</th>
								<th>End Date</th>
								<th>Price</th>
								<th>Brochure</th>
								<th>Description</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="calender2" items="${calendars}">
								<tr>
									<td>${calender2.title}</td>
									<td>${calender2.start_date}</td>
									<td>${calender2.end_date}</td>
									<td>${calender2.price}</td>
									<td><a
										href="<%=request.getContextPath()%>/downloadFile?path=${calender2.brochure}">Brouchure</a></td>
									<td>${calender2.description}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>

				</div>


			</div>
			<!-- @end #home-content -->


			<div id="about-content" class="contentblock hidden">
				<div class="institute_wrapar">
					<ul class="institute_list">
						<li>
							<div class="institute_block">
								<div class="inastitute_block_left">
									<h1>
										<a href="#">Softinfology Pvt Ltd.nnn</a>
									</h1>
									<span> <span class="institute_location"> Kharadi
											| </span> <a href="#">More Date</a>
									</span> <br> <span class="institute_add">Kharadi,Opp.Zensar
										IT Park,Near Huyndai Showroom</span>

								</div>
								<div class="inastitute_block_right">
									<div class="fee_box">
										<div class="fee">
											<span class="price">$4500</span>
										</div>
										<span>Per/Person</span>
									</div>
									<div class="view_detail">
										<p>
											<a href="#" class="detail_bar">View Details</a>
										</p>
										<p>
											<a href="#" class="group_train">Group Training</a>
										</p>

									</div>
								</div>

							</div>
						</li>
						<li>
							<div class="institute_block">
								<div class="inastitute_block_left">
									<h1>
										<a href="#">Softinfology Pvt Ltd.</a>
									</h1>
									<span> <span class="institute_location"> Kharadi
											| </span> <a href="#">More Date</a>
									</span> <br> <span class="institute_add">Kharadi,Opp.Zensar
										IT Park,Near Huyndai Showroom</span>

								</div>
								<div class="inastitute_block_right">
									<div class="fee_box">
										<div class="fee">
											<span class="price">$4500</span>
										</div>
										<span>Per/Person</span>
									</div>
									<div class="view_detail">
										<p>
											<a href="#" class="detail_bar">View Details</a>
										</p>
										<p>
											<a href="#" class="group_train">Group Training</a>
										</p>

									</div>
								</div>

							</div>
						</li>
						<li>
							<div class="institute_block">
								<div class="inastitute_block_left">
									<h1>
										<a href="#">Softinfology Pvt Ltd.</a>
									</h1>
									<span> <span class="institute_location"> Kharadi
											| </span> <a href="#">More Date</a>
									</span> <br> <span class="institute_add">Kharadi,Opp.Zensar
										IT Park,Near Huyndai Showroom</span>

								</div>
								<div class="inastitute_block_right">
									<div class="fee_box">
										<div class="fee">
											<span class="price">$4500</span>
										</div>
										<span>Per/Person</span>
									</div>
									<div class="view_detail">
										<p>
											<a href="#" class="detail_bar">View Details</a>
										</p>
										<p>
											<a href="#" class="group_train">Group Training</a>
										</p>

									</div>
								</div>

							</div>
						</li>
						<li>
							<div class="institute_block">
								<div class="inastitute_block_left">
									<h1>
										<a href="#">Softinfology Pvt Ltd.</a>
									</h1>
									<span> <span class="institute_location"> Kharadi
											| </span> <a href="#">More Date</a>
									</span> <br> <span class="institute_add">Kharadi,Opp.Zensar
										IT Park,Near Huyndai Showroom</span>

								</div>
								<div class="inastitute_block_right">
									<div class="fee_box">
										<div class="fee">
											<span class="price">$4500</span>
										</div>
										<span>Per/Person</span>
									</div>
									<div class="view_detail">
										<p>
											<a href="#" class="detail_bar">View Details</a>
										</p>
										<p>
											<a href="#" class="group_train">Group Training</a>
										</p>

									</div>
								</div>

							</div>
						</li>
						<li>
							<div class="institute_block">
								<div class="inastitute_block_left">
									<h1>
										<a href="#">Softinfology Pvt Ltd.</a>
									</h1>
									<span> <span class="institute_location"> Kharadi
											| </span> <a href="#">More Date</a>
									</span> <br> <span class="institute_add">Kharadi,Opp.Zensar
										IT Park,Near Huyndai Showroom</span>

								</div>
								<div class="inastitute_block_right">
									<div class="fee_box">
										<div class="fee">
											<span class="price">$4500</span>
										</div>
										<span>Per/Person</span>
									</div>
									<div class="view_detail">
										<p>
											<a href="#" class="detail_bar">View Details</a>
										</p>
										<p>
											<a href="#" class="group_train">Group Training</a>
										</p>

									</div>
								</div>

							</div>
						</li>
						<li>
							<div class="institute_block">
								<div class="inastitute_block_left">
									<h1>
										<a href="#">Softinfology Pvt Ltd.</a>
									</h1>
									<span> <span class="institute_location"> Kharadi
											| </span> <a href="#">More Date</a>
									</span> <br> <span class="institute_add">Kharadi,Opp.Zensar
										IT Park,Near Huyndai Showroom</span>

								</div>
								<div class="inastitute_block_right">
									<div class="fee_box">
										<div class="fee">
											<span class="price">$4500</span>
										</div>
										<span class="person">Per/Person</span>
									</div>
									<div class="view_detail">
										<p>
											<a href="#" class="detail_bar">View Details</a>
										</p>
										<p>
											<a href="#" class="group_train">Group Training</a>
										</p>

									</div>
								</div>

							</div>
						</li>
					</ul>
				</div>

			</div>

			<div id="ideas-content" class="contentblock hidden">
				<div class="freelancer_wrapar">
					<table>
						<tr>
							<th style="width: 20%;">Name</th>
							<th>Location</th>
							<th>Contact Details</th>
							<th>Link to Profile Page</th>
							<th>Get Contact</th>
						</tr>
						<tr>
							<td>Prashant</td>
							<td>Pune</td>
							<td>8600249455</td>
							<td>Softinfology.com</td>
							<td>Get Contact</td>
						</tr>
						<tr>
							<td>Shailaish</td>
							<td>Mumbai</td>
							<td>8685627455</td>
							<td>Softinfology.com</td>
							<td>Get Contact</td>
						</tr>
						<tr>
							<td>Pratik</td>
							<td>Nagpur</td>
							<td>124859455</td>
							<td>Softinfology.com</td>
							<td>Get Contact</td>
						</tr>
						<tr>
							<td>Ankush</td>
							<td>Nashik</td>
							<td>860589645</td>
							<td>Softinfology.com</td>
							<td>Get Contact</td>
						</tr>
						<tr>
							<td>Vivek</td>
							<td>Pune</td>
							<td>965525845</td>
							<td>Softinfology.com</td>
							<td>Get Contact</td>
						</tr>
						<tr>
							<td>Prashant</td>
							<td>Pune</td>
							<td>8600249455</td>
							<td>Softinfology.com</td>
							<td>Get Contact</td>
						</tr>
						<tr>
							<td>Pratik</td>
							<td>Nagpur</td>
							<td>124859455</td>
							<td>Softinfology.com</td>
							<td>Get Contact</td>
						</tr>
						<tr>
							<td>Prashant</td>
							<td>Pune</td>
							<td>8600249455</td>
							<td>Softinfology.com</td>
							<td>Get Contact</td>
						</tr>
						<tr>
							<td>Shailaish</td>
							<td>Mumbai</td>
							<td>8685627455</td>
							<td>Softinfology.com</td>
							<td>Get Contact</td>
						</tr>
						<tr>
							<td>Ankush</td>
							<td>Nashik</td>
							<td>860589645</td>
							<td>Softinfology.com</td>
							<td>Get Contact</td>
						</tr>
						<tr>
							<td>Pratik</td>
							<td>Nagpur</td>
							<td>124859455</td>
							<td>Softinfology.com</td>
							<td>Get Contact</td>
						</tr>
						<tr>
							<td>Prashant</td>
							<td>Pune</td>
							<td>8600249455</td>
							<td>Softinfology.com</td>
							<td>Get Contact</td>
						</tr>
						<tr>
							<td>Prashant</td>
							<td>Pune</td>
							<td>8600249455</td>
							<td>Softinfology.com</td>
							<td>Get Contact</td>
						</tr>
						<tr>
							<td>Shailaish</td>
							<td>Mumbai</td>
							<td>8685627455</td>
							<td>Softinfology.com</td>
							<td>Get Contact</td>
						</tr>
						<tr>
							<td>Prashant</td>
							<td>Pune</td>
							<td>8600249455</td>
							<td>Softinfology.com</td>
							<td>Get Contact</td>
						</tr>

					</table>

				</div>

			</div>
			<!-- @end #ideas-content -->

			<div id="contact-content" class="contentblock hidden">
				<div class="top-institute">
					<ul>
						<li><h1>Training Institute</h1></li>
						<ul>
							<li><a href="#">Training Institute</a></li>
							<li><a href="#">Training Institute</a></li>
							<li><a href="#">Training Institute</a></li>
							<li><a href="#">Training Institute</a></li>
							<li><a href="#">Training Institute</a></li>
							<li><a href="#">Training Institute</a></li>
							<li><a href="#">Training Institute</a></li>
							<li><a href="#">Training Institute</a></li>
							<li><a href="#">Training Institute</a></li>
							<li><a href="#">Training Institute</a></li>
							<li><a href="#">Training Institute</a></li>
							<li><a href="#">Training Institute</a></li>
							<li><a href="#">Training Institute</a></li>
							<li><a href="#">Training Institute</a></li>
							<li><a href="#">Training Institute</a></li>
							<li><a href="#">Training Institute</a></li>
							<li><a href="#">Training Institute</a></li>
							<li><a href="#">Training Institute</a></li>
							<li><a href="#">Training Institute</a></li>
						</ul>
					</ul>
				</div>
				<div class="top-institute">
					<ul>
						<li><h1>Training Institute</h1></li>
						<ul>
							<li><a href="#"> Institute</a></li>
							<li><a href="#"> Institute</a></li>
							<li><a href="#"> Institute</a></li>
							<li><a href="#"> Institute</a></li>
							<li><a href="#"> Institute</a></li>
							<li><a href="#"> Institute</a></li>
							<li><a href="#"> Institute</a></li>
							<li><a href="#"> Institute</a></li>
							<li><a href="#"> Institute</a></li>
							<li><a href="#"> Institute</a></li>
							<li><a href="#"> Institute</a></li>
							<li><a href="#"> Institute</a></li>
							<li><a href="#"> Institute</a></li>
							<li><a href="#"> Institute</a></li>
							<li><a href="#"> Institute</a></li>
							<li><a href="#"> Institute</a></li>
							<li><a href="#"> Institute</a></li>
							<li><a href="#"> Institute</a></li>
							<li><a href="#"> Institute</a></li>
						</ul>
					</ul>
				</div>
				<div class="top-institute">
					<ul>
						<li><h1>Training Institute</h1></li>
						<ul>
							<li><a href="#"> Institute</a></li>
							<li><a href="#"> Institute</a></li>
							<li><a href="#"> Institute</a></li>
							<li><a href="#"> Institute</a></li>
							<li><a href="#"> Institute</a></li>
							<li><a href="#"> Institute</a></li>
							<li><a href="#"> Institute</a></li>
							<li><a href="#"> Institute</a></li>
							<li><a href="#"> Institute</a></li>
							<li><a href="#"> Institute</a></li>
							<li><a href="#"> Institute</a></li>
							<li><a href="#"> Institute</a></li>
							<li><a href="#"> Institute</a></li>
							<li><a href="#"> Institute</a></li>
							<li><a href="#"> Institute</a></li>
							<li><a href="#"> Institute</a></li>
							<li><a href="#"> Institute</a></li>
							<li><a href="#"> Institute</a></li>
							<li><a href="#"> Institute</a></li>
						</ul>
					</ul>
				</div>



			</div>
			<!-- @end #contact-content -->
		</div>
	</div>
	<!-- @end #w -->
	</div>
</body>
</html>