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
    <div class="panel panel-default">
        <div class="panel-heading">Latest blog posts</div>
        <div class="panel-body">
            <ul class="list-unstyled">
                <#list published_posts[0..6] as blog>
                    <li style="margin-bottom: 10px;">
                        <div class="title">
                            <a href="${content.rootpath}${blog.uri}">${blog.title}</a>
                        </div>
                        <div class="small">${blog.date?string("EEE d MMMM yyyy")}</div>
                        <@userBadgeInline userId=blog.author/>
                    </li>
                </#list>
                <div class="small pull-right">
                    <a href="${content.rootpath}blog/archive.html">Blog archive</a>
                </div>
            </ul>
        </div>
    </div>
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
                            <@userBadgeInline userId=video.author/>
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

<#macro userBadgeInline userId>
    <#assign users = data.get('users.yml').data>
    <#assign user = users?filter(u -> u.userId == userId)?first >
    <div class="userBadge">
        <span>
            <img class="img-rounded pull-left" src="https://www.gravatar.com/avatar/${user.gravatarHashId}?s=20&d=mm"/>
            &nbsp;${user.fullName}
        </span>
    </div>
</#macro>

<#macro userBadge userId long>
    <#assign users = data.get('users.yml').data>
    <#assign user = users?filter(u -> u.userId == userId)?first >
    <div class="userBadge">
        <div class="well well-sm" style="padding: 5px; width: ${long?then("600px", "320px")};">
            <div class="media">
                <img class="img-rounded pull-left" src="https://www.gravatar.com/avatar/${user.gravatarHashId}?s=50&d=mm" style="width: 50px;" alt="Avatar ${user.fullName}"/>
                <div class="media-body">
                    <h4 class="media-heading">${user.fullName}</h4>
                    <hr style="margin:2px auto; border-color: #ddd;"/>
                    <span class="pull-right">
                        <#if user.twitterUsername??>
                            <a href="https://twitter.com/${user.twitterUsername}"><img src="${content.rootpath}headerFooter/twitterLogo.png" alt="Twitter"/></a>
                        </#if>
                        <#if user.facebookUsername??>
                            <a href="https://www.facebook.com/${user.facebookUsername}"><img src="${content.rootpath}headerFooter/facebookLogo.png" alt="Facebook"/></a>
                        </#if>
                        <#if user.linkedInId??>
                            <a href="https://www.linkedin.com/in/${user.linkedInId}"><img src="${content.rootpath}headerFooter/linkedInLogo.png" alt="LinkedIn"/></a>
                        </#if>
                        <#if user.githubUsername??>
                            <a href="https://github.com/${user.githubUsername}"><img src="${content.rootpath}headerFooter/gitHubLogo.png" alt="GitHub"/></a>
                        </#if>
                    </span>
                    <p class="small">${user.role}</p>
                    <#if long>
                        <#if user.email??>
                            <p>
                                <span class="emailSupportPopover">
                                    <strong>Email:</strong>
                                    ${user.email}
                                </span>
                            </p>
                        </#if>
                        <#if user.employedBy??>
                            <p>
                                <strong>Employed by:</strong>
                                ${user.employedBy}
                            </p>
                        </#if>
                        <#if user.contributionsDescription??>
                            <p>
                                <strong>Contributions:</strong>
                                ${user.contributionsDescription}
                            </p>
                        </#if>
                        <#if user.biography??>
                            <p>
                                <strong>Bio:</strong>
                                ${user.biography}
                            </p>
                        </#if>
                    </#if>
                </div>
            </div>
        </div>
    </div>
</#macro>

<#macro relatedBlogPosts>
    <#assign relatedTags = tags?filter(tag -> tag.name == content.related_tag)>
    <#if relatedTags?size &gt; 0>
        <#assign relatedTag = relatedTags?first>
        <h2>Related blog posts</h2>
        <ul>
            <#list relatedTag.tagged_posts as blog>
                <li style="margin-bottom: 10px;">
                    <div class="title">
                        <a href="${content.rootpath}${blog.uri}">${blog.title}</a>
                    </div>
                    <div class="small">${blog.date?string("EEE d MMMM yyyy")}</div>
                    <@userBadgeInline userId=blog.author/>
                </li>
            </#list>
        </ul>
    </#if>
</#macro>

<#macro downloadJumbotron>
    <#assign pom = data.get('pom.yml')>
    <div class="jumbotron" style="padding: 10px; margin-bottom: 20px;">
        <div class="text-center"><a class="btn btn-lg btn-success versionedButton" href="${pom.latestFinal.distributionZip}"><img alt="Download" src="${content.rootpath}download/download.png">
            <div>
                <span>Download OptaPlanner</span><br/>
                <span class="small">${pom.latestFinal.version}</span>
            </div>
        </a></div>
        <h4>Try the examples now:</h4>
        <ol>
            <li>Download the zip and unzip it</li>
            <li>
                On Linux/macOS, run <code>examples/runExamples.sh</code><br/>
                On Windows, run <code>examples/runExamples.bat</code>
            </li>
        </ol>
        <div class="small">
            Requires <a href="https://www.java.com">Java™</a> to run.
        </div>
    </div>
</#macro>

<#macro documentationJumbotron>
    <#assign pom = data.get('pom.yml')>
    <div class="jumbotron" style="padding: 10px; margin-bottom: 20px;">
        <div class="text-center"><a class="btn btn-lg btn-primary versionedButton" href="${pom.latestFinal.engineDocumentationHtmlSingle}"><img alt="Documentation" src="${content.rootpath}learn/documentation.png">
            <div>
                <span>Read documentation</span><br/>
                <span class="small">${pom.latestFinal.version}</span>
            </div>
        </a></div>
        <p style="margin-top: 10px; margin-bottom: 0;">
            Read a <a href="${pom.latestFinal.engineDocumentationHtmlSingle}">Quick Start</a> guide<br/>
            or git clone <a href="https://github.com/kiegroup/optaplanner-quickstarts">optaplanner-quickstarts</a>.
        </p>
    </div>
</#macro>

<#macro productToProjectVersionMapping>
<div class="panel panel-default">
    <div class="panel-heading">Note for Red Hat Decision Manager customers</div>
    <div class="panel-body">
        <p>
            The RHDM version differs from the OptaPlanner version:
        </p>
        <table class="tableblock frame-all grid-all spread">
            <colgroup>
                <col style="width: 50%;">
                <col style="width: 50%;">
            </colgroup>
            <thead>
            <tr>
                <th>RHDM version</th>
                <th>OptaPlanner version</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>7.7</td>
                <td>7.33</td>
            </tr>
            <tr>
                <td>7.8</td>
                <td>7.39</td>
            </tr>
            <tr>
                <td>7.9</td>
                <td>7.44</td>
            </tr>
            <tr>
                <td>7.10</td>
                <td>7.48</td>
            </tr>
            <tr>
                <td>7.11</td>
                <td>8.5 (and 7.52)</td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
</#macro>
