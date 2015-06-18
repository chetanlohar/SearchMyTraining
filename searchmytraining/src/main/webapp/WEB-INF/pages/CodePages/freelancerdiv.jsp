<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<script type="text/javascript">
$('#table-demo').paging({limit:5});
</script>
</head>
<body>
	<div class="pagination_sort">
		<div class="Sortby">
			<div class="filter">
				<label>Filter By</label> <select>
					<option value="a">Course Name</option>
					<option value="a">Price</option>
					<option value="a">Course Provider</option>
					<option value="a">Course Location</option>
					<option value="a">Course Date</option>
				</select>
			</div>
		</div>
		<div class="paging_wrapper">
			<div class="paging">

				<!--Pagination Start-->

				<!--End-->

			</div>
		</div>

	</div>
	<div id="t" class="clearfix">
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
			<div id="ideas-content" class="contentblock ">
				<div class="freelancer_wrapar">
					<table id='table-demo'>
						<tr>
							<td rowspan="2" width="450px;">
								<div class="Freelance_block_left">
									<h1>
										<a href="#">Softinfology Pvt Ltd.nnn</a>
									</h1>
									<div class="address">
										<span class="institute_location"><img alt="loc"
											src="<%=request.getContextPath()%>/resources/images/list-loc.png">
											Kharadinnn | </span> <a href="#" class="tooltip"
											title="15-Nov-2015,10-Dec-2015"><span>More Date</span></a> <br>
										<span class="institute_add">Kharadi,Opp.Zensar IT
											Park,Near Huyndai Showroom</span>
									</div>
								</div>

							</td>

							<td rowspan="2" width="250px;">
								<div class="Freelance_block_right">

									<div class="view_detail">
										<p>
											<a href="#" class="detail_bar">View Details</a>
										</p>
										<p>
											<a href="#" class="group_train">Group Training</a>
										</p>

									</div>
								</div>
							</td>

						</tr>
						<tr>
							<td rowspan="2" width="450px;">
								<div class="Freelance_block_left">
									<h1>
										<a href="#">Softinfology Pvt Ltd.nnn</a>
									</h1>
									<div class="address">
										<span class="institute_location"><img alt="loc"
											src="<%=request.getContextPath()%>/resources/images/list-loc.png">
											Kharadinnn | </span> <a href="#" class="tooltip"
											title="15-Nov-2015,10-Dec-2015"><span>More Date</span></a> <br>
										<span class="institute_add">Kharadi,Opp.Zensar IT
											Park,Near Huyndai Showroom</span>
									</div>
								</div>

							</td>

							<td rowspan="2" width="250px;">
								<div class="Freelance_block_right">

									<div class="view_detail">
										<p>
											<a href="#" class="detail_bar">View Details</a>
										</p>
										<p>
											<a href="#" class="group_train">Group Training</a>
										</p>

									</div>
								</div>
							</td>

						</tr>
						<tr>
							<td rowspan="2" width="450px;">
								<div class="Freelance_block_left">
									<h1>
										<a href="#">Softinfology Pvt Ltd.nnn</a>
									</h1>
									<div class="address">
										<span class="institute_location"><img alt="loc"
											src="<%=request.getContextPath()%>/resources/images/list-loc.png">
											Kharadinnn | </span> <a href="#" class="tooltip"
											title="15-Nov-2015,10-Dec-2015"><span>More Date</span></a> <br>
										<span class="institute_add">Kharadi,Opp.Zensar IT
											Park,Near Huyndai Showroom</span>
									</div>
								</div>

							</td>

							<td rowspan="2" width="250px;">
								<div class="Freelance_block_right">

									<div class="view_detail">
										<p>
											<a href="#" class="detail_bar">View Details</a>
										</p>
										<p>
											<a href="#" class="group_train">Group Training</a>
										</p>

									</div>
								</div>
							</td>

						</tr>
						<tr>
							<td rowspan="2" width="450px;">
								<div class="Freelance_block_left">
									<h1>
										<a href="#">Softinfology Pvt Ltd.nnn</a>
									</h1>
									<div class="address">
										<span class="institute_location"><img alt="loc"
											src="<%=request.getContextPath()%>/resources/images/list-loc.png">
											Kharadinnn | </span> <a href="#" class="tooltip"
											title="15-Nov-2015,10-Dec-2015"><span>More Date</span></a> <br>
										<span class="institute_add">Kharadi,Opp.Zensar IT
											Park,Near Huyndai Showroom</span>
									</div>
								</div>

							</td>

							<td rowspan="2" width="250px;">
								<div class="Freelance_block_right">

									<div class="view_detail">
										<p>
											<a href="#" class="detail_bar">View Details</a>
										</p>
										<p>
											<a href="#" class="group_train">Group Training</a>
										</p>

									</div>
								</div>
							</td>

						</tr>
						<tr>
							<td rowspan="2" width="450px;">
								<div class="Freelance_block_left">
									<h1>
										<a href="#">Softinfology Pvt Ltd.nnn</a>
									</h1>
									<div class="address">
										<span class="institute_location"><img alt="loc"
											src="<%=request.getContextPath()%>/resources/images/list-loc.png">
											Kharadinnn | </span> <a href="#" class="tooltip"
											title="15-Nov-2015,10-Dec-2015"><span>More Date</span></a> <br>
										<span class="institute_add">Kharadi,Opp.Zensar IT
											Park,Near Huyndai Showroom</span>
									</div>
								</div>

							</td>

							<td rowspan="2" width="250px;">
								<div class="Freelance_block_right">

									<div class="view_detail">
										<p>
											<a href="#" class="detail_bar">View Details</a>
										</p>
										<p>
											<a href="#" class="group_train">Group Training</a>
										</p>

									</div>
								</div>
							</td>

						</tr>
						<tr>
							<td rowspan="2" width="450px;">
								<div class="Freelance_block_left">
									<h1>
										<a href="#">Softinfology Pvt Ltd.nnn</a>
									</h1>
									<div class="address">
										<span class="institute_location"><img alt="loc"
											src="<%=request.getContextPath()%>/resources/images/list-loc.png">
											Kharadinnn | </span> <a href="#" class="tooltip"
											title="15-Nov-2015,10-Dec-2015"><span>More Date</span></a> <br>
										<span class="institute_add">Kharadi,Opp.Zensar IT
											Park,Near Huyndai Showroom</span>
									</div>
								</div>

							</td>

							<td rowspan="2" width="250px;">
								<div class="Freelance_block_right">

									<div class="view_detail">
										<p>
											<a href="#" class="detail_bar">View Details</a>
										</p>
										<p>
											<a href="#" class="group_train">Group Training</a>
										</p>

									</div>
								</div>
							</td>

						</tr>
						<tr>
							<td rowspan="2" width="450px;">
								<div class="Freelance_block_left">
									<h1>
										<a href="#">Softinfology Pvt Ltd.nnn</a>
									</h1>
									<div class="address">
										<span class="institute_location"><img alt="loc" src="<%=request.getContextPath()%>/resources/images/list-loc.png"> Kharadinnn | </span> <a
											href="#" class="tooltip" title="15-Nov-2015,10-Dec-2015"><span>More
												Date</span></a> <br> <span class="institute_add">Kharadi,Opp.Zensar
											IT Park,Near Huyndai Showroom</span>
									</div>
								</div>

							</td>
							
							<td rowspan="2" width="250px;">
								<div class="Freelance_block_right">

									<div class="view_detail">
										<p>
											<a href="#" class="detail_bar">View Details</a>
										</p>
										<p>
											<a href="#" class="group_train">Group Training</a>
										</p>

									</div>
								</div>
							</td>

						</tr>
					</table>
				</div>

			</div>
			<!-- @end #ideas-content -->

		</div>
	</div>
	<!-- @end #w -->

</body>
</html>