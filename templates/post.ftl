<#import "base.ftl" as base>
<#import "macros.ftl" as macros>

<@base.layout>
    <div class="row">
        <div class="col-md-9">
            ${content.body}
        </div>
        <div class="col-md-3">
            <div class="jumbotron" style="padding: 10px;">
                <div class="text-center"><a class="btn btn-default btn-lg" href="${content.rootpath}blog/news.atom" style="margin-top: 10px;" type="button">
                        <img alt="Atom" src="${content.rootpath}headerFooter/atomFeedIcon.png">
                        News feed
                    </a>
                    <div class="small" style="margin-top: 10px;">
                        <span>Don't want to miss a single blog post?</span>
                        <br>
                        <span>Follow us on</span>
                    </div>
                    <ul class="list-inline">
                        <li><a href="https://twitter.com/OptaPlanner" target="_blank" title="News stream via Twitter"><img alt="T" src="${content.rootpath}headerFooter/twitterLogo.png"></a></li>
                        <li><a href="https://www.facebook.com/OptaPlanner" target="_blank" title="News stream via Facebook"><img alt="Fb" src="${content.rootpath}headerFooter/facebookLogo.png"></a></li>
                    </ul>
                    <a class="btn btn-default" href="${content.rootpath}blog/archive.html" type="button">
                        Blog archive
                    </a></div>
            </div>
            <@macros.latestReleases/>
            <@macros.latestEvents/>
            <@macros.latestBlogPosts/>
            <@macros.latestVideos/>
        </div>
    </div>
</@base.layout>
