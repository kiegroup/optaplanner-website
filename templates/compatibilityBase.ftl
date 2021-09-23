<#import "base.ftl" as parent>
<#import "macros.ftl" as macros>

<@layout>${content.body}</@layout>

<#macro layout>
    <@parent.layout>
        <div class="row">
            <div class="col-md-9">
                <#nested>
                <@macros.whatIsOptaPlanner/>
                <div class="col-md-6">
                    <@macros.relatedVideos/>
                </div>
                <div class="col-md-6">
                    <@macros.relatedBlogPosts/>
                </div>
            </div>
            <div class="col-md-3">
                <@macros.tryItButton/>
                <div class="mb-4"></div>
                <@macros.getStartedButton/>
                <div class="mb-4"></div>
                <@macros.latestReleases/>
                <div class="mb-4"></div>
                <@macros.servicesOffer/>
                <div class="mb-4"></div>
                <@macros.latestEvents/>
                <div class="mb-4"></div>
                <@macros.latestBlogPosts/>
                <div class="mb-4"></div>
                <@macros.latestVideos/>
            </div>
        </div>
    </@parent.layout>
</#macro>
