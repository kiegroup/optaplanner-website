<#import "base.ftl" as base>
<#import "macros.ftl" as macros>

<@base.layout>
    <div class="row">
        <div class="col-md-9">
            THIS IS THE TEAM PAGE - TODO
        </div>
        <div class="col-md-3">
            <@macros.latestReleases/>
            <@macros.servicesOffer/>
            <@macros.latestEvents/>
            <@macros.latestBlogPosts/>
            <@macros.latestVideos/>
        </div>
    </div>
</@base.layout>
