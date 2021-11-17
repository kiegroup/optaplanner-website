<#import "base.ftl" as parent>
<#import "macros.ftl" as macros>

<@layout>${content.body}</@layout>

<#macro layout>
<@parent.layout>
    <div class="row">
        <div class="col-md-9">
            <#nested/>
        </div>
        <div class="col-md-3">
            <div class="card p-2 mb-4">
                <div class="text-center">
                    <a href="${content.rootpath}blog/news.atom">
                        <img class="me-1" alt="Atom" src="${content.rootpath}headerFooter/atomFeedIcon.png">News feed
                    </a>
                    <div class="small">
                        <span>Don’t want to miss a single blog post?</span>
                        <br>
                        <span>Follow us on</span>
                    </div>
                    <ul class="list-inline mb-2">
                        <li class="list-inline-item"><a href="https://twitter.com/OptaPlanner" target="_blank" title="News stream via Twitter"><img alt="T" src="${content.rootpath}headerFooter/twitterLogo.png"></a></li>
                        <li class="list-inline-item"><a href="https://www.linkedin.com/showcase/optaplanner" target="_blank" title="News stream via LinkedIn"><img alt="L" src="${content.rootpath}headerFooter/linkedInLogo.png"></a></li>
                        <li class="list-inline-item"><a href="https://www.facebook.com/OptaPlanner" target="_blank" title="News stream via Facebook"><img alt="F" src="${content.rootpath}headerFooter/facebookLogo.png"></a></li>
                    </ul>
                    <a href="${content.rootpath}blog/index.html">Blog archive</a>
                </div>
            </div>
            <@macros.latestReleases/>
            <@macros.latestEvents/>
            <@macros.latestBlogPosts/>
            <@macros.latestVideos/>
        </div>
    </div>
</@parent.layout>
</#macro>
