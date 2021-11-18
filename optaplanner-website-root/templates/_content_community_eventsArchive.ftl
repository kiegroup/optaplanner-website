<#-- Move into content after https://github.com/jbake-org/jbake/issues/693 -->
<#import "normalBase.ftl" as parent>
<#import "macros.ftl" as macros>

<@layout>${content.body}</@layout>

<#macro layout>
<@parent.layout>
    <#assign events = data.get('events.yml').data>
    <h1>${content.title}</h1>
    <ul class="list-unstyled">
        <#list events as event>
            <li class="mb-2">
                <div class="title">
                    <#if event.eventUrl??>
                        <a href="${event.eventUrl}">${event.eventOrganization}</a>
                    <#else>
                        ${event.eventOrganization}
                    </#if>
                </div>
                <span>
                    ${event.location} - ${event.date?string("EEE d MMMM yyyy")}
                    <#if event.talks??>
                        <ul class="list-unstyled">
                            <#list event.talks as talk>
                                <li class="ms-4">
                                    <#if talk.url??>
                                        <a href="${talk.url}">${talk.title}</a>
                                    <#else>
                                        ${talk.title}
                                    </#if>
                                    <#if talk.presenters??>
                                        <span class="small">by ${talk.presenters}</span>
                                    </#if>
                                    <#if talk.videoUrl??>
                                        <span>(<a href="${talk.videoUrl}">video recording</a>)</span>
                                    </#if>
                                </li>
                            </#list>
                        </ul>
                    </#if>
                </span>
            </li>
        </#list>
    </ul>
</@parent.layout>
</#macro>
