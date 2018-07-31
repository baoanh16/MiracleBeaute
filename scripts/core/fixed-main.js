function setMain() {
    var
        headerHeight = $("header").outerHeight();
    if ($(window).width() <= CANHCAM_APP.CHANGE_GRID) {
        // $("main").css('padding-top', headerHeight + 'px')
        $("main").css('padding-top', '0px')
    } else {
        if (!CANHCAM_APP.ACTIVE_PADDING_MAIN) {
            $("main").css('padding-top', '0px')
        } else {
            if (!CANHCAM_APP.ACTIVE_FIXED_HEADER) {
                $("main").css('padding-top', 'initial')
            } else {
                // $("main").css('padding-top', headerHeight + 'px')
                $("main").css('padding-top', '3rem')
                $("main").css('padding-bottom', '3rem')
            }
        }
    }
}

$(document).ready(function() {
    setMain()
});

$(window).resize(function() {
    setMain()
})