// $(document).ready(function() {
//     $('.canhcam-hotro-1 .question-list .question').click(function() {
//         $(this).parent().toggleClass('active');
//         $(this).parent().children('.answer').slideToggle();
//         // $('.canhcam-hotro-1 .question-list .question').not(this).parent().removeClass('active');
//         // $('.canhcam-hotro-1 .question-list .question').not(this).parent().find('.answer').slideUp();
//     });
// })

$(document).ready(function() {
    $('.canhcam-hotro-1 .question-list .question').click(function() {
        $('.canhcam-hotro-1 .question-list .question').not(this).parent().children('.answer').slideUp();
        $('.canhcam-hotro-1 .question-list .question').not(this).parent().removeClass('active');
        $('.canhcam-hotro-1 .question-list .toggle-text').not(this).removeClass('show')
        $(this).parent().children('.toggle-text').addClass('show')
        $(this).parent().children('.answer').slideToggle();
        $(this).parent().toggleClass('active');
    });
    $('.canhcam-hotro-1 .question-list .toggle-text').click(function() {
        $(this).parent().find('.answer').toggleClass('show-more')
            // $(this).text() = "Ẩn đi";
    })
})