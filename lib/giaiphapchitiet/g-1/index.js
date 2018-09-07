function giaiPhapChiTiet() {
    $('.giaiphapchitiet-1 .slider-img .slider-for').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        fade: false,
        autoplay: false,
        asNavFor: '.slider-nav'
    });
    $('.giaiphapchitiet-1 .slider-img .slider-nav').slick({
        autoplay: false,
        slidesToShow: 4,
        slidesToScroll: 1,
        asNavFor: '.slider-for',
        dots: false,
        arrows: true,
        centerMode: false,
        focusOnSelect: true,
        prevArrow: $('.left-arrow'),
        nextArrow: $('.right-arrow'),
        infinite: false,
        responsive: [{
            breakpoint: 768,
            settings: {
                slidesToShow: 3,
                vertical: false,
                verticalSwiping: false,
                variableWidth: false
            }
        }]
    }).on('init', function(event, slick, direction) {
        if (!$('.giaiphapchitiet-1 .slider-img .slider-nav .left-arrow').is(':visible')) {
            $('.giaiphapchitiet-1 .slider-img .slider-control').css({
                'padding-top': '0px'
            })
        }
    }).on('afterChange', function(event, slick, currentSlide, nextSlide) {
        var getcs = slick.$slides.length - 1
        if (currentSlide == 0) {
            $('.giaiphapchitiet-1 .slider-img .left-arrow').attr('disabled', 'disabled')
        } else {
            $('.giaiphapchitiet-1 .slider-img .left-arrow').removeAttr('disabled')
        }
        if (getcs == currentSlide) {
            $('.giaiphapchitiet-1 .slider-img .right-arrow').attr('disabled', 'disabled')
        } else {
            $('.giaiphapchitiet-1 .slider-img .right-arrow').removeAttr('disabled')
        }
    });
};

$(document).ready(function() {
    giaiPhapChiTiet();
});