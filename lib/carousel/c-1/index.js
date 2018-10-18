$(function () {
	$('.canhcam-carousel-1 .owl-carousel').owlCarousel({
		items: 1,
		autoplay: true,
		autoplayTimeOut: 2500,
		autoplaySpeed: 1000,
		rewind: true,
		margin: 30,
		autoplayHoverPause: true,
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
});
