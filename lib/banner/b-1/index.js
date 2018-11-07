$(document).ready(function () {
	$('.canhcam-banner-1 .owl-carousel').owlCarousel({
		items: 1,
		dots: false,
		autoplay: true,
		autoplaySpeed: 500,
		autoplayTimeout: 4000,
		loop: true,
		nav: true,
		autoplayHoverPause: true,
		animateIn: 'fadeIn',
		animateOut: 'fadeOut',
		navText: ['<img src="/Data/Sites/1/skins/default/img/owl-prev.png">', '<img src="/Data/Sites/1/skins/default/img/owl-next.png">'],
	});
});
