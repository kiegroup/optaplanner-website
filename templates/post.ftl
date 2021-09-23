<#import "blogBase.ftl" as parent>
<#import "macros.ftl" as macros>

<@layout>${content.body}</@layout>

<#macro layout>
<@parent.layout>
    <div class="post">
        <h1 class="title" style="border-bottom: 1px solid #eee;">${content.title}</h1>
        <div>
            <div class="float-end">
                <p style="text-align: right;">${content.date?string("EEE d MMMM yyyy")}</p>
            </div>
            <@macros.userBadge userId=content.author long=false/>
        </div>
        <div class="body">
            <#nested>
        </div>
        <hr style="margin-bottom: 5px;"/>
        <div style="margin-bottom: 20px;">
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
        <a class="btn btn-secondary" href="${config.googleGroupURL}" style="margin-left: 20px">Visit our forum to comment</a>
    </div>
</@parent.layout>
</#macro>
