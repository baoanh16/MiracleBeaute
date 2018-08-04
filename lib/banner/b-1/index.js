$(document).ready(function() {
    stickHeader();
    $('.canhcam-banner-1 .owl-carousel').owlCarousel({
        items: 1,
        dots: false,
        autoplay: true,
        autoplaySpeed: 750,
        autoplayTimeout: 4000,
        loop: true,
        nav: true,
        animateIn: 'fadeIn',
        animateOut: 'fadeOut',
        navText: ['<img src="./img/owl-prev.png">', '<img src="./img/owl-next.png">'],
    });
});