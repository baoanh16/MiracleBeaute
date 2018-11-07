$(document).ready(function () {
	$('.canhcam-banner-2 .owl-carousel').owlCarousel({
		items: 1,
		dots: false,
		nav: false,
		autoplaySpeed: 750,
		autoplayTimeout: 4000,
		mouseDrag: false,
		animateIn: 'fadeIn',
		animateOut: 'fadeOut',
		navText: ['<img src="./img/owl-prev.png">', '<img src="./img/owl-next.png">'],
	});
});
