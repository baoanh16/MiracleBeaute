$(document).ready(function(){
	if ($('.canhcam-home-4 .kienthuc-danhgia').length) {
		$('.canhcam-home-4 .kienthuc-danhgia').owlCarousel({
			false: false,
			loop: true,
			// center: false,
			rewind: true,
			// padding: 10,
			margin: 30,
			// nav: false,
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
				}
			}
		});
	}
})