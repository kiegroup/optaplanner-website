function toggleCollapseSection(collapseButton, collapseSection) {
    if ($(collapseButton).hasClass("glyphicon-chevron-down")) {
        $(collapseButton).removeClass("glyphicon-chevron-down").addClass("glyphicon-chevron-up");
    } else {
        $(collapseButton).removeClass("glyphicon-chevron-up").addClass("glyphicon-chevron-down");
    }
    $(collapseSection).prev().toggleClass('stacked');
    $(collapseSection).toggle();
}

function formatUpgradeRecipeItem(node, badge, collapseByDefault) {
    $(node).addClass('upgrade-recipe-note');
    var noteBody = $(node).children().not('h3:first').wrapAll('<div class="upgrade-recipe-note-body"></div>');
    var noteHeader = $(node).find('h3:first').wrap('<a class="upgrade-recipe-note-header" href="#"></a>');
    $(noteHeader).prepend(badge);
    var collapseButton = $('<span class="glyphicon glyphicon-chevron-up pull-right"/>');
    $(noteHeader).append(collapseButton);
    noteHeader.on('click', function(event) {
        event.preventDefault();
        toggleCollapseSection(collapseButton, noteBody);
    });
    if (collapseByDefault) {
        toggleCollapseSection(collapseButton, noteBody);
    }
}

function insertUpgradeRecipePriorities() {
    $('.upgrade-recipe-major').each(function(idx, node) {
        formatUpgradeRecipeItem(node, $('<span class="label label-danger label-as-badge">Major</span>'), false);
    });
    $('.upgrade-recipe-minor').each(function(idx, node) {
        formatUpgradeRecipeItem(node, $('<span class="label label-warning label-as-badge">Minor</span>'), true);
    });
    $('.upgrade-recipe-impl-detail').each(function(idx, node) {
        formatUpgradeRecipeItem(node, $('<span class="label label-info label-as-badge">Impl detail</span>'), true);
    });
    $('.upgrade-recipe-recommended').each(function(idx, node) {
        formatUpgradeRecipeItem(node, $('<span class="label label-primary label-as-badge">Recommended</span>'), false);
    });
    $('.upgrade-recipe-readme').each(function(idx, node) {
        formatUpgradeRecipeItem(node, $('<span class="label label-success label-as-badge">Readme</span>'), false);
    });
}

$(document).ready( function() {
    $(insertUpgradeRecipePriorities);

    $('.carousel').carousel();
    $('#whatIsCarousel').on('slide.bs.carousel', function(e) {
        var next = $(e.relatedTarget);
        var to = next.index();

        $('#whatIsCarouselButtons').find('li').removeClass('active').eq(to).addClass('active');
    });
});
