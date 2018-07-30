$(function() {
    if ($('.canhcam-carousel-1 .owl-carousel').length) {
        $('.canhcam-carousel-1 .owl-carousel').owlCarousel({
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
                0: {
                    items: 1
                },
                480: {
                    items: 2
                },
                768: {
                    items: 3
                }
            }
        });
    }

});