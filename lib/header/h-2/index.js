function stickHeader() {
    var fixedOffset = $('.navbar-mobile').offset().top;
    $(window).scroll(function() {
        var fixed = $('.navbar-mobile');
        scroll = $(window).scrollTop();

        if (scroll >= fixedOffset) {
            fixed.addClass('fixed');
            $('header').removeClass('fixedheader');
        } else {
            fixed.removeClass('fixed');
            $('header').addClass('fixedheader');
        }
    });
}

$(document).ready(function() {
    stickHeader();
    $('.canhcam-header-1 .toggle-menu span.mdi').click(function() {
        $('.navbar-mobile').toggleClass('active');
    });

    $('.navbar-mobile .close-navbar span.mdi').click(function() {
        $('.navbar-mobile').toggleClass('active');
    });


    $('.navbar-mobile .navbar-nav .nav-item').click(function() {
        $(this).addClass('active');
        $('.navbar-mobile .navbar-nav .nav-item').not(this).removeClass('active');
    });

    $('.lieutrinh-list .lieutrinh-1').mouseenter(function() {
        $('.lieutrinh-list .list-group-item').removeClass('active');
        $(this).addClass('active');
        $('.lieutrinh-content').removeClass('active');
        $('.lieutrinh-1-content').toggleClass('active');
    });
    $('.lieutrinh-list .lieutrinh-2').mouseenter(function() {
        $('.lieutrinh-list .list-group-item').removeClass('active');
        $(this).addClass('active');
        $('.lieutrinh-content').removeClass('active');
        $('.lieutrinh-2-content').toggleClass('active');
    });

    $('.lieutrinh-list .lieutrinh-3').mouseenter(function() {
        $('.lieutrinh-list .list-group-item').removeClass('active');
        $(this).addClass('active');
        $('.lieutrinh-content').removeClass('active');
        $('.lieutrinh-3-content').toggleClass('active');
    });
    $('.lieutrinh-list .lieutrinh-4').mouseenter(function() {
        $('.lieutrinh-list .list-group-item').removeClass('active');
        $(this).addClass('active');
        $('.lieutrinh-content').removeClass('active');
        $('.lieutrinh-4-content').toggleClass('active');
    });
    $('.lieutrinh-list .lieutrinh-5').mouseenter(function() {
        $('.lieutrinh-list .list-group-item').removeClass('active');
        $(this).addClass('active');
        $('.lieutrinh-content').removeClass('active');
        $('.lieutrinh-5-content').toggleClass('active');
    });
    $('.lieutrinh-list .lieutrinh-6').mouseenter(function() {
        $('.lieutrinh-list .list-group-item').removeClass('active');
        $(this).addClass('active');
        $('.lieutrinh-content').removeClass('active');
        $('.lieutrinh-6-content').toggleClass('active');
    })



    var path = window.location.pathname;
    // var pLink = path.substring(1, path.length);
    if (path === '/miraclebeaute/index.html' || path === "/miraclebeaute/") {
        $('a[href="index.html"]').parent().addClass('active');
    } else if (path === '/miraclebeaute/about.html') {
        $('a[href="about.html"]').parent().addClass('active');
    } else if (path === '/miraclebeaute/qt-tuvan.html') {
        $('a[href="qt-tuvan.html"]').parent().addClass('active');
    } else if (path === '/miraclebeaute/product.html') {
        $('a[href="product.html"]').parent().addClass('active');
    } else if (path === '/miraclebeaute/lieutrinh.html') {
        $('a[href="lieutrinh.html"]').parent().addClass('active');
    } else if (path === '/miraclebeaute/giaiphap.html') {
        $('a[href="giaiphap.html"]').parent().addClass('active');
    } else if (path === '/miraclebeaute/news.html') {
        $('a[href="news.html"]').parent().addClass('active');
    } else if (path === '/miraclebeaute/contact.html') {
        $('a[href="contact.html"]').parent().addClass('active');
    }
});