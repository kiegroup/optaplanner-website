$(document).ready( function() {
    $carousel.carousel();
    $('#whatIsCarousel').on('slide.bs.carousel', function(e) {
        var active = $(event.target).find('.carousel-inner > .item.active');
        var from = active.index();
        var next = $(event.relatedTarget);
        var to = next.index();
        // TODO this does NOT work
        active.removeClass('active');
        to.addClass('active');
    });
});
