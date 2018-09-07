$(document).ready(function() {
    // stickHeader();
    // $('.canhcam-header-1 .toggle-menu span.mdi').click(function() {
    //     $('.navbar-mobile').toggleClass('active');
    // });

    // $('.navbar-mobile .close-navbar span.mdi').click(function() {
    //     $('.navbar-mobile').toggleClass('active');
    // });


    // $('.navbar-mobile .navbar-nav .nav-item').click(function() {
    //     $(this).addClass('active');
    //     $('.navbar-mobile .navbar-nav .nav-item').not(this).removeClass('active');
    // });

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
});