
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html lang=''>
    <head>
        <title>Training Provider Profile</title>
        <meta charset='utf-8'>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
       
        <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/reset.css" type="text/css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/form.css" type="text/css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/tabs.css" type="text/css">
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/fancybox/jquery.fancybox.css?v=2.1.5" media="screen" />
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/fancybox/jquery.fancybox-buttons.css" media="screen" />
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/fancybox/jquery.fancybox-thumbs.css" media="screen" />
        <link rel="stylesheet" href="css/footer.css" type="text/css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/accordion.css" type="text/css">


        <script src="../js/jquery.backgroundPosition.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery/jquery-1.10.2.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery/jquery-migrate-1.2.1.min.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery/jquery-ui-1.10.4.custom.js"></script><!--color-->
        <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery/jquery.iconmenu.js"></script>
       
        <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/accordion.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/AddDel.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/tabBar.js"></script>


        <script src="js/pop-up.js"></script>
        <script src="js/popup-box.js"></script>
        <script src="../js/my_js1.js"></script>



        <script>
            $(document).ready(function() {
                $('#icon-menu').iconmenu();
            });
        </script>
       

    </head>
    <body style="min-width: 960px;">
       
        <%@include file="/resources/layouts/Header-1.jsp" %>
        <div class="container">
            <div class=" container-form-wrapar">
                <div class="space">
                    <div class="top-div">

                    </div>
                    <div class="bottom-div">
                        <nav>
                            <ul>
                                <li style="margin-left: 430px;" class="active" ><a href="javascript:void 0">Calender</a></li>
                                <li><a href="javascript:void 0">Create An Add.</a></li>
                                <li><a href="javascript:void 0">Membership</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
  <!--==================================tab code start========================================================-->

                <div id="w" class="clearfix">
                    <ul id="sidemenu">
                        <li>
                            <a href="#home-content" class="open"><strong>Profile</strong></a>
                        </li>

                        <li>
                            <a href="#about-content"><strong>Insights</strong></a>
                        </li>

                        <li>
                            <a href="#ideas-content"><strong>Settings</strong></a>
                        </li>

                        <li>
                            <a href="#contact-content"><strong>Send SMS</strong></a>
                        </li>
                        <li>
                            <a href="#contact-content"><strong>Send Email</strong></a>
                        </li>
                        <li>
                            <a href="#contact-content"><strong>Add brouchers</strong></a>
                        </li>
                    </ul>
                    <div id="content">
                        <div id="home-content" class="contentblock">
                            <!--<h1>Update Profile</h1>-->
                            <div id="acord1" class="acord">
                                <h3 class="acord_head">Institute Information</h3> 
                                <div class="acord_cont">
                                    <form action="#">
                                        <div class="name">
                                            <label>Institute/Organization Name :</label>
                                            <input type="text" name="name"/>
                                        </div>
                                        <div class="name">
                                            <label>Year Of Establishment :</label>
                                            <input type="text" name="name"/>
                                        </div>
                                        <div class="methodology">
                                            <label>Training Methodology :</label>
                                            <input type="text" name="name"/>
                                        </div>
                                        <div class="history">
                                            <label>Organization History :</label>
                                            <textarea name="history"></textarea>
                                        </div>
                                        <div class="w-days">
                                            <label>Working Days :</label>
                                            <input type="checkbox" name="sunday"/>S
                                            <input type="checkbox" name="monday"/>M
                                            <input type="checkbox" name="tueday"/>T
                                            <input type="checkbox" name="wedensay"/>W
                                            <input type="checkbox" name="thursday"/>T
                                            <input type="checkbox" name="friday"/>F
                                            <input type="checkbox" name="saturday"/>S
                                        </div>
                                        <input type="submit" value="Save" name="save"/>
                                        <input type="reset" value="Edit" name="Edit"/>
                                    </form>
                                </div>

                                <h3 class="acord_head">Institute Contact Details</h3>
                                <div class="acord_cont">
                                    <form class="multi">
                                        <div class="name">
                                            <label>Institute Email:</label>
                                            <input type="text" name="email" value="">
                                        </div>
                                        <div class="name">
                                            <label>Website:</label>
                                            <input type="text" name="website" value="">
                                        </div>
                                        <div class="name">
                                            <label>Contact Person Name:</label>
                                            <input type="text" name="website" value="">
                                        </div>
                                        <!--<div class="seperate">-->
                                        <div id="achiv">
                                            <p>
                                                <label>Institute Contact: </label>
                                                <select>
                                                    <option value="Phone">Phone</option>
                                                    <option value="Phone">Land Line</option>
                                                    <option value="Phone">Fax</option>
                                                </select>
                                                <input type="text" name="website" value="">
                                            </p>
                                        </div>
                                        <input type="button" value="+" id="addScnt"/><br>
                                        <input type="submit" value="Save" name="save"/>
                                        <input type="reset" value="Edit" name="Edit"/>
                                    </form>
                                </div>
                                <h3 class="acord_head">Institute Locations</h3>
                                <div class="acord_cont">
                                    <form action="#">
                                        <div class="name">
                                            <label>Building No./Flat No./Society No. :</label>
                                            <input type="text" name="name"/>
                                        </div>
                                        <div class="name">
                                            <label>Street :</label>
                                            <input type="text" name="name"/>
                                        </div>
                                        <div class="name">
                                            <label>Landmark :</label>
                                            <input type="text" name="name"/>
                                        </div>
                                        <div class="name">
                                            <label>Pincode :</label>
                                            <input type="text" name="name"/>
                                        </div>
                                        <input type="submit" value="Save" name="save"/>
                                        <input type="reset" value="Edit" name="Edit"/>
                                    </form>
                                </div>

                                <h3 class="acord_head">Achievement</h3>
                                <div class="acord_cont">
                                    <form action="#" class="multi">
                                        <div id="achiv2">
                                            <p>
                                                <span>Award Name:</span>
                                                <input type="text" value="" name="award"/>
                                                <span>Type:</span>
                                                <select>
                                                    <option value="1">1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                </select>
                                                <span>Year Of Received:</span>
                                                <input style="width: 100px;" type="text" value="" name="year"/>
                                                <input type="file">
                                            </p>
                                        </div>
                                        <input type="button" value="+" id="addAward"/>
                                    </form>
                                   
                                </div>

                                <h3 class="acord_head">Professional Association </h3>
                                <div class="acord_cont">
                                    <form action="#" class="multi">
                                        <div id="association">
                                            <p>
                                                <label>Association Name :</label>
                                                <input type="text" name="name"/>
                                            </p>
                                        </div>
                                        <input type="button" value="+" id="addAsso"/><br>
                                        <input type="submit" value="Save" name="save"/>
                                        <input type="reset" value="Edit" name="Edit"/>
                                    </form>

                                </div>


                                <h3 class="acord_head">Client Details </h3>
                                <div class="acord_cont">
                                    <form action="#" class="multi">
                                        <div id="client">
                                            <p>
                                                <label>Key Client Name :</label>
                                                <input type="text" name="name"/>
                                            </p>
                                        </div>
                                        <input type="button" value="+" id="addClient"/><br>
                                        <input type="submit" value="Save" name="save"/>
                                        <input type="reset" value="Edit" name="Edit"/>
                                    </form> 

                                </div>
                            </div>

                        </div><!-- @end #home-content -->


                        <div id="about-content" class="contentblock hidden">

                            <p>ygygiugyi </p>
                        </div>

                        <div id="ideas-content" class="contentblock hidden">










                        </div><!-- @end #ideas-content -->

                        <div id="contact-content" class="contentblock hidden">
                            <h1>   ooioioi     </h1>






                        </div><!-- @end #contact-content -->
                    </div>
                </div><!-- @end #w -->

 <!--===========================================accord drop form script===================================================================-->

                <script>
                    $('#acord1').accordion({
                        collapsible: true
                    });
                </script>
 <!--===========================================accord drop form script end===================================================================-->


            </div>
        </div>
<%@include file="/resources/layouts/footer.jsp" %>


    </body>
</html>
