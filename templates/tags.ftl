<#-- TODO Ideally this would extend blogBase.ftl -->
<#import "base.ftl" as parent>
<#import "macros.ftl" as macros>

<@parent.layout
        title="Tag: ${tag}"
        description="Blog pages with the tag ${tag}">
    <h1>Tag: ${tag}</h1>
    <ul>
        <#list tag_posts as blog>
            <li style="margin-bottom: 10px;">
                <div class="title">
                    <a href="${content.rootpath}${blog.uri}">${blog.title}</a>
                </div>
                <div class="small">${blog.date?string("EEE d MMMM yyyy")}</div>
                <@macros.userBadgeInline userId=blog.author/>
            </li>
        </#list>
    </ul>
</@parent.layout>
