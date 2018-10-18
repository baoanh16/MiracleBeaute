
function toggleMenu() {
	$('.canhcam-header-1 .toggle-menu span.mdi').click(function () {
		$('.navbar-mobile').toggleClass('active');
	});
	$('.navbar-mobile .close-navbar span.mdi').click(function () {
		$('.navbar-mobile').toggleClass('active');
	});
}
$(document).ready(function () {
	// if ($(window).width() < 992) {
		toggleMenu();
		$('.search-toggle .mdi-magnify').on('click', function(){
			$('.Module-211').fadeToggle();
		})
	// }
});
