            $(document).ready(function() {
                $('#icon-menu').iconmenu();
            });
//==============================================================================
 /*//<!--Start of Zopim Live Chat Script-->
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
                e.parentNode.insertBefore($, e);
            })(document, "script");
// <!--End of Zopim Live Chat Script-->
*/
//==============================================================================
            $('#add').click(function() {
                $('.acord_cont').append('.contact');
            });
            
//=======================Vertical menu=========================================
                    $(function() {
                        $('#sidemenu a').on('click', function(e) {
                            e.preventDefault();

                            if ($(this).hasClass('open')) {
                                // do nothing because the link is already open
                            } else {
                                var oldcontent = $('#sidemenu a.open').attr('href');
                                var newcontent = $(this).attr('href');

                                $(oldcontent).fadeOut('fast', function() {
                                    $(newcontent).fadeIn().removeClass('hidden');
                                    $(oldcontent).addClass('hidden');
                                });


                                $('#sidemenu a').removeClass('open');
                                $(this).addClass('open');
                            }
                        });
                    });
                    
                    $('#acord1').accordion({
                        collapsible: true
                    });