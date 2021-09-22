<#-- Move into content after https://github.com/jbake-org/jbake/issues/693 -->
<#import "blogBase.ftl" as parent>
<#import "macros.ftl" as macros>

<@layout>${content.body}</@layout>

<#macro layout>
<@parent.layout>
    <h1>${content.title}</h1>
    <ul>
        <#list published_posts as blog>
            <li class="mb-2">
                <div class="title">
                    <a href="${content.rootpath}${blog.uri}">${blog.title}</a>
                </div>
                <div class="small">${blog.date?string("EEE d MMMM yyyy")}</div>
                <@macros.userBadgeInline userId=blog.author/>
            </li>
        </#list>
    </ul>
</@parent.layout>
</#macro>
