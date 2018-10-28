$(function() {
    if ($('.canhcam-carousel-4 .news-list .owl-carousel').length) {
        $('.canhcam-carousel-4 .news-list .owl-carousel').owlCarousel({
            false: false,
            loop: true,
            rewind: true,
            margin: 30,
            dots: true,
            dotsEach: true,
            callbacks: true,
            responsive: {
                0: {
                    items: 2,
                },
                480: {
                    items: 2,
                },
                768: {
                    items: 3,
                },
                992: {
                    items: 4,
                }
            }
        });
    }

});