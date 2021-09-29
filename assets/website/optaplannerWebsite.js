function autoPlayYouTubeModal() {
    var youtubeLink = $("body").find('[data-youtube-id]');
    youtubeLink.click(function() {
        var modalDialog = $(this).data("bs-target");
        var videoUrl = `https://www.youtube.com/embed/${$(this).attr("data-youtube-id")}?autoplay=1&rel=0`;
        var player = $("#player-container");
        $(`<iframe src="${videoUrl}" allow="autoplay;" allowfullscreen/>`).appendTo(player);
        $(modalDialog + " h5").text($(this).attr("data-video-title"));
        $(modalDialog).on('hidden.bs.modal', function() {
            player.empty();
        });
    });
}

function toggleCollapseSection(collapseButton, collapseSection) {
    if ($(collapseButton).hasClass("fa-angle-down")) {
        $(collapseButton).removeClass("fa-angle-down").addClass("fa-angle-up");
    } else {
        $(collapseButton).removeClass("fa-angle-up").addClass("fa-angle-down");
    }
    $(collapseSection).prev().toggleClass('stacked');
    $(collapseSection).toggle();
}

function formatUpgradeRecipeItem(node, badge, collapseByDefault) {
    $(node).addClass('upgrade-recipe-note');
    var noteBody = $(node).children().not('h3:first').wrapAll('<div class="upgrade-recipe-note-body"></div>');
    var noteHeader = $(node).find('h3:first').wrap('<a class="upgrade-recipe-note-header" href="#"></a>');
    if ($(node).hasClass("upgrade-recipe-public-api")) {
        $(noteHeader).prepend($('<span class="badge bg-public-api" style="margin-right: 5px;">Public API</span>'));
    }
    $(noteHeader).prepend(badge);
    var collapseButton = $('<i class="fas fa-angle-up float-end"></i>');
    $(noteHeader).append(collapseButton);
    noteHeader.on('click', function(event) {
        event.preventDefault();
        toggleCollapseSection(collapseButton, noteBody);
    });
    if (collapseByDefault || $(node).hasClass("upgrade-recipe-reverted")) {
        toggleCollapseSection(collapseButton, noteBody);
    }
}

function insertUpgradeRecipePriorities() {
    $('.upgrade-recipe-major').each(function(idx, node) {
        formatUpgradeRecipeItem(node, $('<span class="badge bg-danger">Major</span>'), false);
    });
    $('.upgrade-recipe-minor').each(function(idx, node) {
        formatUpgradeRecipeItem(node, $('<span class="badge bg-warning">Minor</span>'), true);
    });
    $('.upgrade-recipe-impl-detail').each(function(idx, node) {
        formatUpgradeRecipeItem(node, $('<span class="badge bg-info">Impl detail</span>'), true);
    });
    $('.upgrade-recipe-recommended').each(function(idx, node) {
        formatUpgradeRecipeItem(node, $('<span class="badge bg-primary">Recommended</span>'), false);
    });
    $('.upgrade-recipe-readme').each(function(idx, node) {
        formatUpgradeRecipeItem(node, $('<span class="badge bg-success">Readme</span>'), false);
    });
}

function insertEmailSupportPopover() {
    $('.emailSupportPopover').each(function(idx, node) {
        $(node).popover({
            html: true,
            trigger: 'hover',
            title: '<b>Don\'t ask for free support</b>',
            content: '<p>Do not contact us directly for free support. Click on <a href="./getHelp.html">Get help</a> or <a href="../product/services.html">Services</a> in the menu instead.</p>'
                    + '<p>Feel free to contact us directly for academic or contribution conversations.</p>'});
    });
}

function insertServicesMailAddress() {
    $('.servicesMailAddress').each(function(idx, node) {
        // Obfuscation to fool spam bots
        var mailAddress = $(node).text() + "@redhat.com";
        $(node).text(mailAddress);
        $(node).attr("href", "mailto:" + mailAddress);
    });
}

$(document).ready(function() {
    $(autoPlayYouTubeModal);
    $(insertUpgradeRecipePriorities);
    $(insertEmailSupportPopover);
    $(insertServicesMailAddress);
});
