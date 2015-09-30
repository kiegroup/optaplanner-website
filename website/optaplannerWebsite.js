function toggleShowHiddenSection(hiddenSection) {
    hiddenSection.prev().toggleClass('stacked');
    hiddenSection.toggle();
}

function insertShowHiddenSectionButtons() {
    $('.hidden-section').each(function(idx, node) {
        var hiddenSection = $(node);
        var showHiddenSectionButton = $('<a class="show-hidden-section" href="#">Show/hide</a>');
        showHiddenSectionButton.insertBefore(hiddenSection);
        showHiddenSectionButton.on('click', function(event) {
            event.preventDefault();
            toggleShowHiddenSection(hiddenSection);
        });
        toggleShowHiddenSection(hiddenSection);
    });
}

$(insertShowHiddenSectionButtons);

$(document).ready( function() {
    $('.carousel').carousel();
    $('#whatIsCarousel').on('slide.bs.carousel', function(e) {
        var next = $(e.relatedTarget);
        var to = next.index();

        $('#whatIsCarouselButtons').find('li').removeClass('active').eq(to).addClass('active');
    });
});
