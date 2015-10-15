function insertUpgradeRecipePriorities() {
    $('.upgrade-recipe-major').each(function(idx, node) {
        var badge = $('<span class="label label-danger label-as-badge">Major</span>');
        $(node).prepend(badge);
    });
    $('.upgrade-recipe-minor').each(function(idx, node) {
        $(node).children().not('h3:first').wrapAll('<div class="hidden-section"></div>');
        var badge = $('<span class="label label-warning label-as-badge">Minor</span>');
        $(node).prepend(badge);
    });
    $('.upgrade-recipe-impl-detail').each(function(idx, node) {
        $(node).children().not('h3:first').wrapAll('<div class="hidden-section"></div>');
        var badge = $('<span class="label label-info label-as-badge">Impl detail</span>');
        $(node).prepend(badge);
    });
    $('.upgrade-recipe-recommended').each(function(idx, node) {
        var badge = $('<span class="label label-primary label-as-badge">Recommended</span>');
        $(node).prepend(badge);
    });
    $('.upgrade-recipe-readme').each(function(idx, node) {
        var badge = $('<span class="label label-success label-as-badge">Readme</span>');
        $(node).prepend(badge);
    });
}

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

$(document).ready( function() {
    $(insertUpgradeRecipePriorities);
    $(insertShowHiddenSectionButtons);

    $('.carousel').carousel();
    $('#whatIsCarousel').on('slide.bs.carousel', function(e) {
        var next = $(e.relatedTarget);
        var to = next.index();

        $('#whatIsCarouselButtons').find('li').removeClass('active').eq(to).addClass('active');
    });
});
