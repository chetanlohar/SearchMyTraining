$(document).ready(function() {
    $(".fancybox").fancybox({
        type: 'iframe',
        fitToView: false,
        afterLoad: function() {
            this.width = $(this.element).data("width");
            this.height = $(this.element).data("height");
        }
    });
});