<#import "blogBase.ftl" as parent>
<#import "macros.ftl" as macros>

<@layout>${content.body}</@layout>

<#macro layout>
<@parent.layout>
    <div class="post">
        <h1 class="title border-bottom">${content.title}</h1>
        <div class="mb-4">
            <span class="float-end mb-2">${content.date?string("EEE d MMMM yyyy")}</span>
            <@macros.userBadge userId=content.author long=false/>
        </div>
        <div>
            <#nested>
        </div>
        <hr class="mb-1"/>
        <div class="mb-4">
            <div class="float-end">
                <a href="${config.canonicalBaseUrl}/${content.uri}"><span class="badge bg-dark">Permalink</span></a>
            </div>
            <div class="tags">
                <i class="fas fa-tag"></i>&nbsp;tagged as
                <#list content.tags as tag>
                    <a href="${content.rootpath}blog/tags/${tag?url}.html"><span class="badge bg-info">${tag}</span></a>
                </#list>
            </div>
        </div>
    </div>
    <div class="comments">
        <h2>Comments</h2>
        <a class="btn btn-secondary mb-4" href="${config.googleGroupURL}">Visit our forum to comment</a>
    </div>
</@parent.layout>
</#macro>
