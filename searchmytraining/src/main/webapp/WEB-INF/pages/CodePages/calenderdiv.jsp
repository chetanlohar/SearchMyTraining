<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
</head>
<body>

 
		<div class="pagination_sort">
			    <div class="Sortby">
			     <div class="filter">
			     <label>Filter By</label>
			     <select>
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
  <section class="archive-pages">
    <ul>
      <li class="first"><a href="#" title="first page">first page</a></li>
      <li class="previous"><a href="#" title="previous page">previous page</a></li>
      <li class="selected">1</li>
      <li><a href="#" title="Page 2">2</a></li>
      <li><a href="#" title="Page 3">3</a></li>
      <li><a href="#" title="Page 4">4</a></li>
      <li><a href="#" title="Page 5">5</a></li>
      <li class="next"><a href="#" title="next page">next page</a></li>
      <li class="last"><a href="#" title="last page">last page</a></li>
    </ul>
  </section>
  <!--End-->  
  
 </div>
   </div>
					
			</div>
			<div id="t" class="" >
				<ul id="tabmenu">
					<li class="open hvr-underline-reveal" onclick="loadcalender('<%=request.getContextPath()%>');"><a>Calender</a></li>

					<li class="open hvr-underline-reveal" onclick="loadinstitute('<%=request.getContextPath()%>');"><a>Institute</a></li>

					<li class="open hvr-underline-reveal" onclick="loadfreelancer('<%=request.getContextPath()%>');"><a>Freelancer</a></li>

					<li class="open hvr-underline-reveal" onclick="loadseminar('<%=request.getContextPath()%>');"><a>Seminar/</a></li>

				</ul>
				<div id="tabcontent">
					<div id="home-content" class="contentblock">
					 <div class="Calender_wrapar">
					    <table id="">
					    <tr>
					      <th> Training Code</th>
					      <th> Training Name</th>
					      <th> Location</th>
					      <th> Date</th>
					      <th> Price</th>
					      <th> Brochure</th>
					      <th> Get Contact</th>
					    </tr>
					   <tbody>
					    <tr id ="shadow">
					      <td> WD007</td>
					      <td> Web Designing</td>
					      <td> Pune</td>
					      <td> 30-May-2015</td>
					      <td> 9000 $</td>
					      <td><a href="#"><span title="Download Brochure"><img src="${pageContext.request.contextPath}/resources/images/pdf.png" alt="brochure" height="30px" width="30px;"></span></a></td>
					      <td><a href="#">Get Contact</a></td>
					    </tr>
					    <tr>
					      <td> GD157</td>
					      <td> Graphics Design</td>
					      <td> Mumbai</td>
					      <td> 20-Jan-2015</td>
					      <td> 5000 $</td>
					      <td><a href="#"><img src="${pageContext.request.contextPath}/resources/images/pdf.png" alt="brochure" height="30px" width="30px;"></a></td>
					      <td><a href="#">Get Contact</a></td>
					    </tr>
					    <tr>
					      <td> WDP899</td>
					      <td> Web Development</td>
					      <td> Nagpur</td>
					      <td> 1-Feb-2015</td>
					      <td> 10000$</td>
					      <td><a href="#"> Brochure</a></td>
					      <td><a href="#">Get Contact</a></td>
					    </tr>
					     <tr>
					      <td> J409</td>
					      <td>Java Programing</td>
					      <td> Solapur</td>
					      <td> 8-Oct-2015</td>
					      <td> 1050$</td>
					      <td><a href="#"> Brochure</a></td>
					      <td><a href="#">Get Contact</a></td>
					    </tr>
					     <tr>
					      <td> PH789</td>
					      <td> PHP Programing</td>
					      <td> Nashik</td>
					      <td> 25-Aug-2015</td>
					      <td> 3000$</td>
					      <td><a href="#"> Brochure</a></td>
					      <td><a href="#">Get Contact</a></td>
					    </tr>
					     <tr>
					      <td> Aj454</td>
					      <td> Ajax Programing</td>
					      <td> pune</td>
					      <td> 10-Dec-2015</td>
					      <td> 4000$</td>
					      <td><a href="#"> Brochure</a></td>
					      <td><a href="#">Get Contact</a></td>
					    </tr>
					     <tr>
					      <td>Ora99</td>
					      <td> Oracle Progaming</td>
					      <td> mumbai</td>
					      <td> 20-Nov-2015</td>
					      <td> 1800$</td>
					      <td><a href="#"> Brochure</a></td>
					      <td><a href="#">Get Contact</a></td>
					    </tr>
					     <tr>
					      <td> WDP899</td>
					      <td> Web Development</td>
					      <td> Nagpur</td>
					      <td> 1-Feb-2015</td>
					      <td> 10000$</td>
					      <td><a href="#"> Brochure</a></td>
					      <td><a href="#">Get Contact</a></td>
					    </tr>
					     <tr>
					      <td> WD859</td>
					      <td> Web Designing</td>
					      <td> pune</td>
					      <td> 10-Mar-2015</td>
					      <td> 1000$</td>
					      <td><a href="#"> Brochure</a></td>
					      <td><a href="#">Get Contact</a></td>
					    </tr>
					     <tr>
					      <td> WDP899</td>
					      <td> Web Development</td>
					      <td> Nagpur</td>
					      <td> 1-Feb-2015</td>
					      <td> 10000$</td>
					      <td><a href="#"> Brochure</a></td>
					      <td><a href="#">Get Contact</a></td>
					    </tr>
					     <tr>
					      <td> WDP899</td>
					      <td> Web Development</td>
					      <td> Nagpur</td>
					      <td> 25-Aug-2015</td>
					      <td> 10000$</td>
					    <td><a href="#"> Brochure</a></td>
					      <td><a href="#">Get Contact</a></td>
					    </tr>
					     <tr>
					      <td> Aj454</td>
					      <td> Ajax Programing</td>
					      <td> pune</td>
					      <td>20-Nov-2015</td>
					      <td> 4000$</td>
					      <td><a href="#"> Brochure</a></td>
					      <td><a href="#">Get Contact</a></td>
					    </tr>
					     <tr>
					      <td> WDP899</td>
					      <td> Web Development</td>
					      <td> Nagpur</td>
					      <td>20-Nov-2015</td>
					      <td> 10000$</td>
					      <td><a href="#"> Brochure</a></td>
					      <td><a href="#">Get Contact</a></td>
					    </tr>
					     <tr>
					      <td> Aj454</td>
					      <td> Ajax Programing</td>
					      <td> pune</td>
					      <td>  25-Aug-2015</td>
					      <td> 4000$</td>
					      <td><a href="#"> Brochure</a></td>
					      <td><a href="#">Get Contact</a></td>
					    </tr>
					     <tr>
					      <td> WDP899</td>
					      <td> Web Development</td>
					      <td> Nagpur</td>
					      <td> 20-Nov-2015</td>
					      <td> 10000$</td>
					      <td><a href="#"> Brochure</a></td>
					      <td><a href="#">Get Contact</a></td>
					    </tr>
					     <tr>
					      <td> Aj454</td>
					      <td> Ajax Programing</td>
					      <td> pune</td>
					      <td> 20-Nov-2015</td>
					      <td> 4000$</td>
					      <td><a href="#"> Brochure</a></td>
					      <td><a href="#">Get Contact</a></td>
					    </tr>
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
                               <h1><a href="#">Softinfology Pvt Ltd.nnn</a></h1>
                               <span>
                               <span class="institute_location"> Kharadi | </span>
                               <a href="#">More Date</a>
                               </span>
                               <br>
                               <span class="institute_add">Kharadi,Opp.Zensar IT Park,Near Huyndai Showroom</span>
                               
                               </div> 
                               <div class="inastitute_block_right">
                                   <div class="fee_box">
                                       <div class="fee">
                                           <span class="price">$4500</span>
                                       </div>
                                       <span>Per/Person</span>
                                   </div>
                                  <div class="view_detail">
                                     <p><a href="#" class="detail_bar">View Details</a></p>
                                     <p><a href="#" class="group_train">Group Training</a></p>
                                     
                                  </div>
                                   </div> 
                           
                           </div>
                           </li>
                           <li>
                           <div class="institute_block">
                               <div class="inastitute_block_left">
                               <h1><a href="#">Softinfology Pvt Ltd.</a></h1>
                               <span>
                               <span class="institute_location"> Kharadi | </span>
                               <a href="#">More Date</a>
                               </span>
                               <br>
                               <span class="institute_add">Kharadi,Opp.Zensar IT Park,Near Huyndai Showroom</span>
                               
                               </div> 
                               <div class="inastitute_block_right">
                                   <div class="fee_box">
                                       <div class="fee">
                                           <span class="price">$4500</span>
                                       </div>
                                       <span>Per/Person</span>
                                   </div>
                                  <div class="view_detail">
                                     <p><a href="#" class="detail_bar">View Details</a></p>
                                     <p><a href="#" class="group_train">Group Training</a></p>
                                     
                                  </div>
                                   </div> 
                           
                           </div>
                           </li>
                           <li>
                           <div class="institute_block">
                               <div class="inastitute_block_left">
                               <h1><a href="#">Softinfology Pvt Ltd.</a></h1>
                               <span>
                               <span class="institute_location"> Kharadi | </span>
                               <a href="#">More Date</a>
                               </span>
                               <br>
                               <span class="institute_add">Kharadi,Opp.Zensar IT Park,Near Huyndai Showroom</span>
                               
                               </div> 
                               <div class="inastitute_block_right">
                                   <div class="fee_box">
                                       <div class="fee">
                                           <span class="price">$4500</span>
                                       </div>
                                       <span>Per/Person</span>
                                   </div>
                                  <div class="view_detail">
                                     <p><a href="#" class="detail_bar">View Details</a></p>
                                     <p><a href="#" class="group_train">Group Training</a></p>
                                     
                                  </div>
                                   </div> 
                           
                           </div>
                           </li>
                           <li>
                           <div class="institute_block">
                               <div class="inastitute_block_left">
                               <h1><a href="#">Softinfology Pvt Ltd.</a></h1>
                               <span>
                               <span class="institute_location"> Kharadi | </span>
                               <a href="#">More Date</a>
                               </span>
                               <br>
                               <span class="institute_add">Kharadi,Opp.Zensar IT Park,Near Huyndai Showroom</span>
                               
                               </div> 
                               <div class="inastitute_block_right">
                                   <div class="fee_box">
                                       <div class="fee">
                                           <span class="price">$4500</span>
                                       </div>
                                       <span>Per/Person</span>
                                   </div>
                                  <div class="view_detail">
                                     <p><a href="#" class="detail_bar">View Details</a></p>
                                     <p><a href="#" class="group_train">Group Training</a></p>
                                     
                                  </div>
                                   </div> 
                           
                           </div>
                           </li>
                           <li>
                           <div class="institute_block">
                               <div class="inastitute_block_left">
                               <h1><a href="#">Softinfology Pvt Ltd.</a></h1>
                               <span>
                               <span class="institute_location"> Kharadi | </span>
                               <a href="#">More Date</a>
                               </span>
                               <br>
                               <span class="institute_add">Kharadi,Opp.Zensar IT Park,Near Huyndai Showroom</span>
                               
                               </div> 
                               <div class="inastitute_block_right">
                                   <div class="fee_box">
                                       <div class="fee">
                                           <span class="price">$4500</span>
                                       </div>
                                       <span>Per/Person</span>
                                   </div>
                                  <div class="view_detail">
                                     <p><a href="#" class="detail_bar">View Details</a></p>
                                     <p><a href="#" class="group_train">Group Training</a></p>
                                     
                                  </div>
                                   </div> 
                           
                           </div>
                           </li>
                            <li>
                           <div class="institute_block">
                               <div class="inastitute_block_left">
                               <h1><a href="#">Softinfology Pvt Ltd.</a></h1>
                               <span>
                               <span class="institute_location"> Kharadi | </span>
                               <a href="#">More Date</a>
                               </span>
                               <br>
                               <span class="institute_add">Kharadi,Opp.Zensar IT Park,Near Huyndai Showroom</span>
                               
                               </div> 
                               <div class="inastitute_block_right">
                                   <div class="fee_box">
                                       <div class="fee">
                                           <span class="price">$4500</span>
                                       </div>
                                       <span class="person">Per/Person</span>
                                   </div>
                                  <div class="view_detail">
                                     <p><a href="#" class="detail_bar">View Details</a></p>
                                     <p><a href="#" class="group_train">Group Training</a></p>
                                     
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