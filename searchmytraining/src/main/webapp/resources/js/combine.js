/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


            $(document).ready(function() {
                $('#icon-menu').iconmenu();
            });
//=========================================================================================
 //<!--Start of Zopim Live Chat Script-->
            window.$zopim || (function(d, s) {
                var z = $zopim = function(c) {
                    z._.push(c)
                }, $ = z.s =
                        d.createElement(s), e = d.getElementsByTagName(s)[0];
                z.set = function(o) {
                    z.set.
                            _.push(o)
                };
                z._ = [];
                z.set._ = [];
                $.async = !0;
                $.setAttribute("charset", "utf-8");
                $.src = "//v2.zopim.com/?2ue2Gf63YfZyqOyUJbShQi4IHJc52qsB";
                z.t = +new Date;
                $.
                        type = "text/javascript";
                e.parentNode.insertBefore($, e)
            })(document, "script");
     //   <!--End of Zopim Live Chat Script-->

//==========================================Feedback Js==================================================
            $(document).ready(function() {
                jQuery(".pull_feedback").toggle(function() {
                    jQuery("#feedback").animate({left: "0px"});
                    return false;
                },
                        function() {
                            jQuery("#feedback").animate({left: "-362px"});
                            return false;
                        }
                ); //toggle
            }); //document.ready
//===========================================================================================================

//==========================================Location Js==================================================
                function my_show() {
                    document.getElementById("drop").style.display = "block";

                }

                function  ShowCountry(val) {


                    document.getElementById("Country").innerHTML = val;
                    document.getElementById("drop").style.display = "none";
                }


                $(document).ready(function() {
                    $("#Country").click(function() {
                        $("#drop").fadeIn("3000");
                    });
                });
          //=========================================================================================================
          
          //==========================================Vertical Scroll Images=================================
                    window.verticalScroller = function($elem) {
                        var top = parseInt($elem.css("top"));
                        var temp = -1 * $('#verticalScroller > div').height();
                        if (top < temp) {
                            top = $('#verticalScroller').height()
                            $elem.css("top", top);
                        }
                        $elem.animate({top: (parseInt(top) - 70)}, 900, 'linear', function() {
                            window.verticalScroller($(this))
                        });
                    }


                    $(document).ready(function() {
                        var i = 0;
                        $("#verticalScroller > div").each(function() {
                            $(this).css("top", i);
                            i += 135;
                            window.verticalScroller($(this));
                        });
                    });
//===================================================================================================
        
//===================================Image Slider===================================================

                       /* $(".top_cat_box > div:gt(0)").hide();

                        setInterval(function() {
                            $('.top_cat_box > div:first')
                                    .fadeOut(1500)
                                    .next()
                                    .fadeIn(1500)
                                    .end()
                                    .appendTo('.top_cat_box');
                        }, 2000);*/
//=======================================================================================================

//===============================garagedoor Image Slider====================================================
                var jQueryScriptOutputted = false;
                function initJQuery() {
                    if (typeof (jQuery) == 'undefined') {
                        if (!jQueryScriptOutputted) {
                            jQueryScriptOutputted = true;

                            document.write("<scr" + "ipt src=\"http://ajax.googleapis.com/ajax/libs/jquery/1.2.6/jquery.min.js\"></scr" + "ipt>");
                        }
                        setTimeout("initJQuery()", 50);

                    } else {
                        $.getScript('js/jquery.backgroundPosition.js', function() {
                            $("h2").text('This Browser is using a jQuery fallback for this effect.');

                            // Set CSS in Firefox (Required to use the backgroundPosition js)
                            $('#shutter1').css({backgroundPosition: '0px 0px'});
                            $('#shutter2').css({backgroundPosition: '0px 0px'});
                            $('#shutter3').css({backgroundPosition: '0px 0px'});
                            $('#shutter4').css({backgroundPosition: '0px 0px'});

                            // Animate the Shutter  
                            $("#garagedoor a").hover(function() {
                                $(this).parent().stop().animate({backgroundPosition: '(400px 100px)'}, 500);
                            }, function() {
                                $(this).parent().stop().animate({backgroundPosition: '(0px 0px)'}, 500);
                            });

                        });

                    }

                }

                if (!Modernizr.csstransitions) {
                    initJQuery();
                }
//======================================================================================================


