$(document).ready(function() {
    $(".fancybox").fancybox({
        type: 'iframe',
        afterClose: function() {
            parent.location.reload(true);
        }
    });
});