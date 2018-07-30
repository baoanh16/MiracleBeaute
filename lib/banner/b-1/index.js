$(document).ready(function() {
    $('.canhcam-banner-1 .owl-carousel').owlCarousel({
        items: 1,
        dots: false,
    });
    $('.canhcam-header-1 .toggle-menu span.mdi').click(function() {
        $('.canhcam-banner-1 .navbar-mobile').toggleClass('active');
    })

    $('.canhcam-banner-1 .navbar-mobile .close-navbar span.mdi').click(function() {
        $('.canhcam-banner-1 .navbar-mobile').toggleClass('active');
    })
    var fixedOffset = $('.navbar-mobile').offset().top;
    $(window).scroll(function() {
        var fixed = $('.navbar-mobile'),
            scroll = $(window).scrollTop();

        if (scroll >= fixedOffset + 50) {
            fixed.addClass('fixed');
            $('header').removeClass('fixedheader');
        } else {
            fixed.removeClass('fixed');
            $('header').addClass('fixedheader');
        }
    });
})