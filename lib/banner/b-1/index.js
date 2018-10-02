$(document).ready(function() {
    // stickHeader();
    $('.canhcam-banner-1 .owl-carousel').owlCarousel({
        items: 1,
        dots: false,
        autoplay: true,
        autoplaySpeed: 500,
        autoplayTimeout: 4000,
        loop: true,
        nav: true,
        animateIn: 'fadeIn',
        animateOut: 'fadeOut',
        navText: ['<img src="/Data/Sites/1/skins/default/img/owl-prev.png">', '<img src="/Data/Sites/1/skins/default/img/owl-next.png">'],
    });
    var headerOffset = $('.canhcam-header-2').offset().top;
    if ($(window).width() > 992) {
        $(window).scroll(function() {
            stickyMenu(headerOffset);
        })
    }
});