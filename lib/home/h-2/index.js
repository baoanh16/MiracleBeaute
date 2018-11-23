$(document).ready(function () {
	$('.canhcam-home-2 .owl-carousel').owlCarousel({
		// items: 4,
		autoplay: true,
		margin: 30,
		loop: true,
		dots: true,
		dotsEach: 1,
		nav: true,
		navText: ['<i class="mdi mdi-chevron-left"></i>', '<i class="mdi mdi-chevron-right"></i>'],
		responsive: {
			0: {
				dotsEach: 1,
				items: 2
			},
			480: {
				dotsEach: 1,
				items: 2
			},
			768: {
				dotsEach: 1,
				items: 3
			},
			992: {
				dotsEach: 1,
				nav: false,
				items: 4
			}
		}
	})
})