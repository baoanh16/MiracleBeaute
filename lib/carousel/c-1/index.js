$(function() {
    if ($('.canhcam-carousel-2 .owl-carousel').length) {
        $('.canhcam-carousel-2 .owl-carousel').owlCarousel({
            // animateIn: 'fadeIn',
            // animateOut: 'fadeOut',
            // items: 1,
            false: false,
            loop: true,
            // center: false,
            rewind: true,
            // padding: 10,
            margin: 30,
            // nav: false,
            dots: true,
            dotsEach: true,
            // callbacks: true,
            responsive: {
                480: {
                    items: 1
                },
                768: {
                    items: 2
                },
                992: {
                    items: 4
                }
            }
        });
    }

});