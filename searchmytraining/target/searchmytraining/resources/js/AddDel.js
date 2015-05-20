/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 * Author:prashant Maskar
 */
                                                                                                                                                                                                                                         


 $(function() {
        var scntDiv = $('#achiv');
        var i = $('#achiv p').size() + 1;
        
        $('#addScnt').live('click', function() {
            $('<p style="margin-left:253px;"><select><option value="Phone">Phone</option><option value="Land-Line">Land-Line</option><option value="Fax">Fax</option></select><input type="text" id="p_scnt" size="20" name="p_scnt_' + i +'" value="" placeholder="" /> <a href="#" id="remScnt"><img src="../../images/Cancel-128.png"/></a>  </p>').appendTo(scntDiv);
                i++;
                return false;
        });
        
        $('#remScnt').live('click', function() { 
                if( i > 2 ) {
                        $(this).parents('p').remove();
                        i--;
                }
                return false;
        });
});

 $(function() {
     var scntDiv = $('#cont');
     var i = $('#cont p').size() + 1;
     
     $('#addcontact').live('click', function() {
         $('<p style="margin-left:253px;"><select><option value="Phone">Phone</option><option value="Land-Line">Land-Line</option><option value="Fax">Fax</option></select><input type="text" id="p_scnt" size="20" name="p_scnt_' + i +'" value="" placeholder="" /> <a href="#" id="remScnt"><img src="../../images/Cancel-128.png"/></a>  </p>').appendTo(scntDiv);
             i++;
             return false;
     });
     
     $('#remScnt').live('click', function() { 
             if( i > 2 ) {
                     $(this).parents('p').remove();
                     i--;
             }
             return false;
     });
});

$(function() {
        var scntDiv = $('#association');
        var i = $('#association p').size() + 1;
        
        $('#addAsso').live('click', function() {
            $('<p style="margin-left:253px;"><input type="text" id="a_scnt" size="20" name="a_scnt_' + i +'" value="" placeholder="" /><a href="#" id="remScnt"><img src="../../images/Cancel-128.png"></a>  </p>').appendTo(scntDiv);
                i++;
                return false;
        });
        
        $('#remScnt').live('click', function() { 
                if( i > 2 ) {
                        $(this).parents('p').remove();
                        i--;
                }
                return false;
        });
});



$(function() {
        var scntDiv = $('#client');
        var i = $('#client p').size() + 1;
        
        $('#addClient').live('click', function() {
            $('<p style="margin-left:253px;"><input type="text" id="c_scnt" size="20" name="c_scnt_' + i +'" value="" placeholder="" /><a href="#" id="remScnt"><img src="../../images/Cancel-128.png"></a>  </p>').appendTo(scntDiv);
                i++;
                return false;
        });
        
        $('#remScnt').live('click', function() { 
                if( i > 2 ) {
                        $(this).parents('p').remove();
                        i--;
                }
                return false;
        });
});

$(function() {
        var scntDiv = $('#achiv2');
        var i = $('#achiv2 p').size() + 1;
        
        $('#addAward').live('click', function() {
            $('<p><span>Award Name:</span> <input type="text" value="" name="award' + i +'"/> <span>Type:</span> <select><option value="1">1</option><option value="2">2</option><option value="3">3</option></select> <span>Year Of Received:</span> <input style="width: 100px;" type="text"  value="" name="year' + i +'"/>  <input  type="file"><a href="#" id="remScnt"><img src="../../images/Cancel-128.png"></a>  </p>').appendTo(scntDiv);
                i++;
                return false;
        });
        
        $('#remScnt').live('click', function() { 
                if( i > 2 ) {
                        $(this).parents('p').remove();
                        i--;
                }
                return false;
        });
         
      
});