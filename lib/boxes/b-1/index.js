$(function() {
    $('.canhcam-boxes-1 .job').find('.job-title').click(function() {
        $('.canhcam-boxes-1 .job .job-title').not(this).parent().find('.job-content').slideUp();
        $('.canhcam-boxes-1 .job .job-title').not(this).parent().find('.job-title').removeClass('active');
        $(this).parent(this).find('.job-content').slideToggle();
        $(this).toggleClass('active');
    })
});