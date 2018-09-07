function ProductDetailShop1() {
    $('.canhcam-shop-details-1 .product-details .slider-for').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        fade: false,
        autoplay: false,
        asNavFor: '.slider-nav'
    });
    $('.canhcam-shop-details-1 .product-details .slider-nav').slick({
        autoplay: false,
        slidesToShow: 4,
        slidesToScroll: 1,
        asNavFor: '.slider-for',
        dots: false,
        arrows: true,
        // centerMode: true,
        focusOnSelect: true,
        prevArrow: $('.left-arrow'),
        nextArrow: $('.right-arrow'),
        infinite: true,
        responsive: [{
            breakpoint: 768,
            settings: {
                slidesToShow: 2,
                // centerMode: false,
            }
        }]
    }).on('init', function(event, slick, direction) {
        if (!$('.canhcam-shop-details-1 .product-details .slider-nav .left-arrow').is(':visible')) {
            $('.canhcam-shop-details-1 .product-details .slider-control').css({
                'padding-top': '0px'
            })
        }
    }).on('afterChange', function(event, slick, currentSlide, nextSlide) {
        var getcs = slick.$slides.length - 1
        if (currentSlide == 0) {
            $('.canhcam-shop-details-1 .product-details .left-arrow').attr('disabled', 'disabled')
        } else {
            $('.canhcam-shop-details-1 .product-details .left-arrow').removeAttr('disabled')
        }
        if (getcs == currentSlide) {
            $('.canhcam-shop-details-1 .product-details .right-arrow').attr('disabled', 'disabled')
        } else {
            $('.canhcam-shop-details-1 .product-details .right-arrow').removeAttr('disabled')
        }
    });
};

$(document).ready(function() {
    ProductDetailShop1();
});