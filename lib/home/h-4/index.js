$(document).ready(function(){
	if ($('.canhcam-home-4 .kienthuc-danhgia').length) {
		$('.canhcam-home-4 .kienthuc-danhgia').owlCarousel({
			false: false,
			loop: true,
			rewind: true,
			margin: 30,
			dots: true,
			dotsEach: true,
			responsive: {
				0: {
					items: 2,
				},
				480: {
					items: 2,
				},
				768: {
					mouseDrag: false,
					items: 3,
				}
			}
		});
	}
	if ($('.canhcam-home-4 .kienthuc-video').length) {
		$('.canhcam-home-4 .kienthuc-video').owlCarousel({
			false: false,
			loop: true,
			// center: false,
			rewind: true,
			// padding: 10,
			margin: 30,
			// nav: false,
			dots: true,
			dotsEach: true,
			responsive: {
				0: {
					items: 2,
				},
				480: {
					items: 2,
				},
				768: {
					mouseDrag: false,
					items: 3,
				}
			}
		});
	}
})