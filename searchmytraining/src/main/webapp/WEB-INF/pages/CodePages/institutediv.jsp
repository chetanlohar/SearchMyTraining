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

  <!--End-->  
  
 </div>
   </div>
					
			</div>
			<div id="t" class="clearfix">
				<ul id="tabmenu">
					<li class="open hvr-underline-reveal" onclick="loadcalender('<%=request.getContextPath()%>');"><a>Calender</a></li>

					<li class="open hvr-underline-reveal" onclick="loadinstitute('<%=request.getContextPath()%>');"><a>Institute</a></li>

					<li class="open hvr-underline-reveal" onclick="loadfreelancer('<%=request.getContextPath()%>');"><a>Freelancer</a></li>

					<li class="open hvr-underline-reveal" onclick="loadseminar('<%=request.getContextPath()%>');"><a>Seminar</a></li>

				</ul>
				<div id="tabcontent">
				
					<div id="about-content" class="contentblock ">
                       <div class="institute_wrapar">
                         <div class="list-cart-box">
                            <div class="list-cart-card">
                             <div class="list-detail-box">
                               <div class="list-image">
                               <img src="/searchmytraining/resources/images/soft.png" alt="soft"/>
                               </div>
                               <div class="list-detail">
                                  <div class="listtext-part">
                                   <p class="list-name"><a href="#">Softinfology Pvt Ltd</a></p>
                                    <p class="list-loc"><i class="fa fa-map-marker"></i>   Kharadi Pune</p>
                                    <p><a href="#" class="tooltip" title="15-Nov-2015,10-Dec-2015"><span><i class="fa fa-calendar"></i>More Date</span></a></p>
                                  </div>
                                  <div class="list-link">
                                     <a href="#"><i class="fa fa-edit"></i>View Details</a>
                                     <a href="#"><i class="fa fa-users"></i>Group Training</a>
                                  </div>
                               </div>
                               
                             </div>
                            </div>
                         
                         </div>
                       </div>
						
					</div>

					
				</div>
			</div>
			<!-- @end #w -->
 
</body>
</html>