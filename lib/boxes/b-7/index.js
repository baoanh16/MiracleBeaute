function spy() {
    $(window).bind('scroll', function() {
        var currentTop = $(window).scrollTop();
        var elems = $('.scrollspy');
        elems.each(function(index) {
            var elemTop = $(this).offset().top - 20;
            var elemBottom = elemTop + $(this).height();
            if (currentTop >= elemTop && currentTop <= elemBottom) {
                var id = $(this).attr('id');
                var navElem = $('a[href="#' + id + '"]');
                navElem.parent().addClass('active').siblings().removeClass('active');
            }
        })
    });
};

$(document).ready(function() {
    spy();
})