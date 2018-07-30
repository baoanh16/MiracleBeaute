$(document).ready(function() {
    $('.canhcam-home-2 .owl-carousel').owlCarousel({
        // items: 4,
        autoplay: true,
        margin: 30,
        dots: false,
        nav: true,
        navText: ['<i class="mdi mdi-chevron-left"></i>', '<i class="mdi mdi-chevron-right"></i>'],
        responsive: {
            0: {
                items: 1
            },
            480: {
                items: 2
            },
            768: {
                items: 3
            },
            992: {
                nav: false,
                items: 4
            }
        }
    })
})