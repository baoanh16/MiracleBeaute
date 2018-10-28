function toggleMenu() {
	$('.canhcam-header-1 .toggle-menu span.mdi').click(function () {
		$('.navbar-mobile').toggleClass('active');
		$('.backdrop').fadeToggle();
	});
	$('.navbar-mobile .close-navbar span.mdi, .backdrop').click(function () {
		$('.navbar-mobile').toggleClass('active');
		$('.backdrop').fadeOut();
	});
}

function activeMenu() {
	$('.Module-217 .nav-item .nav-link').each(function () {
		var x = $(this).attr('href');
		var y = window.location.href;
		if (y.search(x) != -1 && x != 'http://'+ window.location.href) {
			$(this).not('.Module-217 .nav-item:first-child .nav-link').parent().addClass('active')
		}
		if(window.location.pathname.search('tin-tuc')===1){
			$('.Module-217 .nav-item:nth-child(7)').addClass('active')
		}
	})
}
$(document).ready(function () {
	activeMenu();
	$('.canhcam-header-1').append('<div class="backdrop"></div>')
	toggleMenu();
	$('.search-toggle .mdi').on('click', function () {
		$('.Module-211').fadeToggle();
		$(this).toggleClass('mdi-window-close').toggleClass('mdi-magnify');
	})
});
