$(document).ready( function() {
    $('.carousel').carousel();
    $('#whatIsCarousel').on('slide.bs.carousel', function(e) {
        var next = $(e.relatedTarget);
        var to = next.index();

        $('#whatIsCarouselButtons').find('li').removeClass('active').eq(to).addClass('active');
    });
});
