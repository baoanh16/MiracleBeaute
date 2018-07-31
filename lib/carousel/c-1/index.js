$(function() {
    if ($('.canhcam-carousel-1 .owl-carousel').length) {
        $('.canhcam-carousel-1 .owl-carousel').owlCarousel({
            items: 1,
            false: false,
            loop: true,
            rewind: true,
            margin: 30,
            dots: true,
            dotsEach: true,
            responsive: {
                768: {
                    items: 2
                },
                992: {
                    items: 3
                }
            }
        });
    }
});