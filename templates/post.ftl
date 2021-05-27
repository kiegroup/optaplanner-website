<#import "blogBase.ftl" as parent>
<#import "macros.ftl" as macros>

<@layout>${content.body}</@layout>

<#macro layout>
<@parent.layout>
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
            <#nested>
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
                    <a href="${content.rootpath}blog/tags/${tag}.html"><span class="label label-info">${tag}</span></a>
                </#list>
            </div>
        </div>
    </div>
    <div class="comments">
        <h2>Comments</h2>
        <a class="btn btn-default" href="${config.googleGroupURL}" style="margin-left: 20px">Visit our forum to comment</a>
    </div>
    <@blogNavigation/>
</@parent.layout>
</#macro>

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
