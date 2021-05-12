<#import "base.ftl" as base>
<#import "macros.ftl" as macros>

<#-- TODO
change_frequency: yearly
- page.description = summarize(html_to_text(page.content).strip, 50) if !page.description
- page.share_image_url = "#{site.canonicalBaseUrl}#{page.output_path.sub(Regexp.new('/[^/]*$'), '/')}#{page.share_image_filename}" if page.share_image_filename
-->

<@base.layout>
    <div class="row">
        <div class="col-md-9">
            <@blogNavigation/>
            <div class="post">
                <h1 class="title" style="border-bottom: 1px solid #eee;">
                    <a href="${config.canonicalBaseUrl}/${content.uri}">${content.title}</a>
                </h1>
                <div>
                    <div class="pull-right">
                        <p style="text-align: right;">${content.date?string("EEE d MMMM yyyy")}</p>
                    </div>
                    <@macros.userBadge userId=content.author long=false/>
                </div>
                <div class="body">
                    ${content.body}
                </div>
                <hr style="margin-bottom: 5px;"/>
                <div style="margin-bottom: 20px;">
                    <div class="pull-right">
                        <a href="${config.canonicalBaseUrl}/${content.uri}"><span class="label label-default">Permalink</span></a>
                    </div>
                    <div class="tags">
                        <span class="glyphicon glyphicon-tags"></span>
                        &nbsp;tagged as
                        <#list content.tags as tag>
                            <a href="${content.rootpath}/blog/tags/${tag}/"><span class="label label-info">${tag}</span></a>
                        </#list>
                    </div>
                </div>
            </div>
            <div class="comments">
                <h2>Comments</h2>
                <a class="btn btn-default" href="${config.googleGroupURL}" style="margin-left: 20px">Visit our forum to comment</a>
            </div>
            <@blogNavigation/>
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

<#macro blogNavigation>
    <ul class="pager">
        <#if content.previousContent??>
            <li class="previous">
                <a href="${content.rootpath}${content.previousContent.uri}">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    ${content.previousContent.title?truncate(50, "...")}
                </a>
            </li>
        <#else>
            <li class="previous disabled">
                <a href="#">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    Previous
                </a>
            </li>
        </#if>
        <#if content.nextContent??>
            <li class="next">
                <a href="${content.rootpath}${content.nextContent.uri}">
                    ${content.nextContent.title?truncate(50, "...")}
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </li>
        <#else>
            <li class="next disabled">
                <a href="#">
                    Next
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </li>
        </#if>
    </ul>
</#macro>
