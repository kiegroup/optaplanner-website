<#import "base.ftl" as parent>
<#import "macros.ftl" as macros>

<@layout>${content.body}</@layout>

<#macro layout>
    <@parent.layout>
        <div class="row">
            <div class="col-md-9">
                <div class="float-start me-4 mb-4">
                    <@macros.videoCard youtubeId=content.use_case_demo_youtube_id long=false/>
                    <#if content.use_case_demo_github_url??>
                    <div class="text-center">
                        <a class="btn btn-outline-primary text-center mt-3" href="${content.use_case_demo_github_url}">
                            <i class="fab fa-github me-1"></i>Build and run from source
                        </a>
                    </div>
                    </#if>
                </div>
                <h1>${content.title}</h1>
                <#nested>
                <@macros.relatedVideos/>
                <@macros.relatedBlogPosts/>
            </div>
            <div class="col-md-3">
                <@macros.tryItButton/>
                <@macros.getStartedButton/>
                <@macros.latestReleases/>
                <@macros.servicesOffer/>
                <@macros.latestEvents/>
                <@macros.latestBlogPosts/>
                <@macros.latestVideos/>
            </div>
        </div>
    </@parent.layout>
</#macro>
