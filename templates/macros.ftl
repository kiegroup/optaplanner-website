<#macro latestReleases>
    <#assign pom = data.get('pom.yml')>
    <div class="panel panel-default">
        <div class="panel-heading">Latest release</div>
        <div class="panel-body">
            <ul class="list-unstyled">
                <li style="margin-bottom: 10px;">
                    <div class="title">
                        <a href="${content.rootpath}download/releaseNotes/releaseNotes${pom.latestFinal.releaseNotesVersion}.html">
                            ${pom.latestFinal.version} released
                        </a>
                    </div>
                    <div class="small">
                        ${pom.latestFinal.releaseDate?string("EEE d MMMM yyyy")}
                    </div>
                </li>
                <#if pom.latest.version != pom.latestFinal.version>
                    <div class="title">
                        <a href="${content.rootpath}download/releaseNotes/releaseNotes${pom.latest.releaseNotesVersion}.html">
                            ${pom.latest.version} released
                        </a>
                    </div>
                    <div class="small">
                        ${pom.latest.releaseDate?string("EEE d MMMM yyyy")}
                    </div>
                </#if>
            </ul>
        </div>
    </div>
</#macro>

<#macro servicesOffer>
    <div class="panel panel-primary">
        <div class="panel-heading">Paid support and consulting</div>
        <div class="panel-body">
            <p>
                <b>Want to talk to the experts?</b>
                Red Hat offers certified binaries with enterprise consulting.
                Contact <a class="servicesMailAddress">optaplanner-info</a> for more information.
            </p>
        </div>
    </div>
</#macro>

<#macro latestEvents>
    <#assign events = data.get('events.yml').data>
    <div class="panel panel-default">
        <div class="panel-heading">Upcoming events</div>
        <div class="panel-body">
            <ul class="list-unstyled">
                <#list events as event>
                    <#if .now?date <= event.date?date>
                        <li style="margin-bottom: 10px;">
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
                                            <li style="margin-left: 20px;">
                                                <#if talk.url??>
                                                    <a href="${talk.url}">${talk.title}</a>
                                                <#else>
                                                    ${talk.title}
                                                </#if>
                                                <#if talk.presenters??>
                                                    <span class="small">by ${talk.presenters}</span>
                                                </#if>
                                            </li>
                                        </#list>
                                    </ul>
                                </#if>
                            </span>
                        </li>
                    </#if>
                </#list>
                <div class="small pull-right">
                    <a href="https://github.com/kiegroup/optaplanner-website/blob/master/data/events.yml">Add event</a>
                    /
                    <a href="${content.rootpath}community/eventsArchive.html">Archive</a>
                </div>
            </ul>
        </div>
    </div>
</#macro>

<#macro latestBlogPosts>
</#macro>

<#macro latestVideos>
    <#assign videos = data.get('videos.yml').data>
    <div class="panel panel-default">
        <div class="panel-heading">Latest videos</div>
        <div class="panel-body">
            <ul class="list-unstyled">
                <#list videos[0..6] as video>
                    <li style="margin-bottom: 10px;">
                        <div class="title">
                            <a href="https://youtu.be/${video.youtubeId}">
                                <img src="${content.rootpath}headerFooter/youtubeLogo.png" alt="YT" style="height:16px; width:auto;"/>
                                ${video.title}
                            </a>
                        </div>
                        <div class="small">${video.date?string("EEE d MMMM yyyy")}</div>
                        <#if video.author??>
                            TODO
                        </#if>
                    </li>
                </#list>
                <div class="small pull-right">
                    <a href="https://www.youtube.com/channel/UCcpkOKpujFlM67D2h0RdaeQ">Video archive</a>
                </div>
            </ul>
        </div>
    </div>
</#macro>
