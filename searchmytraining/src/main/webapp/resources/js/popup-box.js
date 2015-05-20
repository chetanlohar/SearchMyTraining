/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

;
(function($) {

    $(function() {
        $('.my-button').bind('click', function(e) {
            e.preventDefault();
            $('#pop_up_box').bPopup(
            );
        });
    });
})(jQuery);
//    ========================================================================================
;
(function($) {
    $(function() {
        $('.my-button-new').bind('click', function(e) {
            e.preventDefault();
            $('#pop_up_box_1').bPopup(
            );
        });
    });
})(jQuery);
//    ========================================================================================
;
(function($) {
    $(function() {
        $('#regi_pop').bind('click', function(e) {
            e.preventDefault();
            $('#pop_up_box_2').bPopup(
            );
        });
    });
})(jQuery);
//    ========================================================================================
;
(function($) {
    $(function() {
        $('#login_pop').bind('click', function(e) {
            e.preventDefault();
            $('#pop_up_box_3').bPopup(
            );
        });
    });
})(jQuery);

//    ========================================================================================
;
(function($) {
    $(function() {
        $('#login_pop2').bind('click', function(e) {
            e.preventDefault();
            $('#pop_up_box_5').bPopup(
            );
        });
    });
})(jQuery);

 // ========================================================================================

;(function($) {
    $(function() {
        $('#regi_pop2').bind('click', function(e) {
            e.preventDefault();
            $('#pop_up_box_4').bPopup(
            );
        });
    });
})(jQuery);
//    ========================================================================================
;(function($) {
    $(function() {
        $('#sign-up').bind('click', function(e) {
            e.preventDefault();
            $('#pop_up_box_6').bPopup(
            );
        });
    });
})(jQuery);
//=========================================================================
;(function($) {
    $(function() {
        $('.login_pop').bind('click', function(e) {
            e.preventDefault();
            $('#pop_up_box_5').bPopup(
            );
            $('#pop_up_box_6').hide();
        });
    });
})(jQuery);
//=========================================================================
;(function($) {
    $(function() {
        $('.login_pop2').bind('click', function(e) {
            e.preventDefault();
            $('#pop_up_box_5').bPopup(
            );
            $('#pop_up_box_6').hide();
            
        });
    });
})(jQuery);
//=========================================================================
;(function($) {
    $(function() {
        $('.login_pop3').bind('click', function(e) {
            e.preventDefault();
            $('#pop_up_box_5').bPopup(
            );
            $('#pop_up_box_6').hide();
        });
    });
})(jQuery);

//=========================================================================
;(function($) {
    $(function() {
        $('#regi_pop3').bind('click', function(e) {
            e.preventDefault();
            $('#pop_up_box_8').bPopup(
            );
        });
    });
})(jQuery);
//=========================================================================
;(function($) {
    $(function() {
        $('#advsearch1').bind('click', function(e) {
            e.preventDefault();
            $('#pop_up_box_9').bPopup(
            );
        });
    });
})(jQuery);

$('#pop_up_box_9').magnificPopup({
	  delegate: 'a',
	  removalDelay: 500, 
	  callbacks: {
	    beforeOpen: function() {
	       this.st.mainClass = this.st.el.attr('data-effect');
	    }
	  },
	  midClick: true
	});
