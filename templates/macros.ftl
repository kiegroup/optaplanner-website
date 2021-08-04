<#assign pom = data.get('pom.yml')>
<#assign events = data.get('events.yml').data>
<#assign videos = data.get('videos.yml').data>
<#assign users = data.get('users.yml').data>

<#macro latestReleases>
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
                    <a href="${content.rootpath}blog/index.html">Blog archive</a>
                </div>
            </ul>
        </div>
    </div>
</#macro>

<#macro latestVideos>
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
    <#assign user = users?filter(u -> u.userId == userId)?first >
    <div class="userBadge">
        <span>
            <img class="img-rounded pull-left" src="https://www.gravatar.com/avatar/${user.gravatarHashId}?s=20&d=mm"/>
            &nbsp;${user.fullName}
        </span>
    </div>
</#macro>

<#macro userBadge userId long>
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

<#macro relatedVideos>
    <#assign relatedVideos = videos?filter(video -> video.tags?? &amp;&amp; video.tags.contains(content.related_tag))>
    <#if relatedVideos?size &gt; 0>
        <h2>Related videos</h2>
        <#-- TODO use card layout after upgrade to Twitter bootstrap 5 and make it prettier (whitespace etc) -->
        <ul class="list-unstyled">
            <#list relatedVideos as video>
                <li style="margin-bottom: 20px;">
                    <a href="https://youtu.be/${video.youtubeId}">
                        <img src="https://img.youtube.com/vi/${video.youtubeId}/mqdefault.jpg" width="320" height="180" alt="Video screenshot">
                        <div class="title">
                            <img src="${content.rootpath}headerFooter/youtubeLogo.png" alt="YT" style="height:16px; width:auto;"/>
                            ${video.title}
                        </div>
                    </a>
                    <#if video.author??>
                        <@userBadgeInline userId=video.author/>
                    </#if>
                    <div class="small">${video.date?string("EEE d MMMM yyyy")}</div>
                </li>
            </#list>
        </ul>
    </#if>
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
    <div class="jumbotron" style="padding: 10px; margin-bottom: 20px;">
        <div class="text-center" style="margin-bottom: 10px;"><a class="btn btn-lg btn-success versionedButton" href="${pom.latestFinal.distributionZip}"><img alt="Download" src="${content.rootpath}download/download.png">
            <div>
                <span>Try OptaPlanner</span><br/>
                <span class="small">Download ${pom.latestFinal.version}</span>
            </div>
        </a></div>
        <ol>
            <li>Download the zip and unzip it.</li>
            <li>
                Run <code>examples/runExamples.sh</code> (Linux/macOS).<br/>
                Or run <code>examples/runExamples.bat</code> (Windows).
            </li>
        </ol>
        <div class="text-center">
            <div class="small">
                Requires <a href="https://adoptopenjdk.net">Java™</a> to run.
            </div>
        </div>
    </div>
</#macro>

<#macro documentationJumbotron>
    <div class="jumbotron" style="padding: 10px; margin-bottom: 20px;">
        <div class="text-center" style="margin-bottom: 10px;"><a class="btn btn-lg btn-primary versionedButton" href="${pom.latestFinal.engineDocumentationHtmlSingle}#quickStart"><img alt="Documentation" src="${content.rootpath}learn/documentation.png">
            <div>
                <span>Get started</span><br/>
                <span class="small">User guide ${pom.latestFinal.version}</span>
            </div>
        </a></div>
        <div class="text-center">
            <a href="https://github.com/kiegroup/optaplanner-quickstarts">
                <img alt="GitHub" src="${content.rootpath}headerFooter/gitHubLogo.png">
                <span>Clone the Quickstarts code.</span>
            </a>
        </div>
    </div>
</#macro>

<#macro whatIsOptaPlanner>
    <h2>What is OptaPlanner?</h2>
    <p>
        OptaPlanner is <b>an AI constraint solver</b>.
        It optimizes planning and scheduling problems, such as
        <a href="${content.rootpath}learn/useCases/vehicleRoutingProblem.html">the Vehicle Routing Problem</a>,
        <a href="${content.rootpath}learn/useCases/employeeRostering.html">Employee Rostering</a>,
        <a href="${content.rootpath}learn/useCases/maintenanceScheduling.html">Maintenance Scheduling</a>,
        <a href="${content.rootpath}learn/useCases/taskAssignmentOptimization.html">Task Assignment</a>,
        <a href="${content.rootpath}learn/useCases/schoolTimetabling.html">School Timetabling</a>,
        <a href="${content.rootpath}learn/useCases/cloudOptimization.html">Cloud Optimization</a>,
        <a href="${content.rootpath}learn/useCases/conferenceScheduling.html">Conference Scheduling</a>,
        Job Shop Scheduling, Bin Packing and
        <a href="${content.rootpath}learn/useCases/">many more</a>.
        Every organization faces such challenges:
        assign a limited set of <i>constrained</i> resources (employees, assets, time and/or money)
        to provide products or services.
        OptaPlanner delivers more efficient plans, which reduce costs and improve service quality.
    </p>
    <p>
        OptaPlanner is <b>a lightweight, embeddable planning solver</b>.
        It enables everyday <a href="${content.rootpath}compatibility/java.html">Java</a> programmers
        to solve optimization problems efficiently.
        It is also compatible with other JVM languages (such as
        <a href="${content.rootpath}compatibility/kotlin.html">Kotlin</a>
        and  <a href="${content.rootpath}compatibility/scala.html">Scala</a>).
        Constraints apply on plain domain objects and can call existing code.
        There's no need to input constraints as mathematical equations.
        Under the hood, OptaPlanner combines sophisticated Artificial Intelligence optimization algorithms
        (such as Tabu Search, Simulated Annealing, Late Acceptance and other metaheuristics)
        with very efficient score calculation and other state-of-the-art constraint solving techniques.
    </p>
    <p>
        OptaPlanner is <b>open source software</b>, released under <a href="${content.rootpath}code/license.html">the Apache License</a>.
        It is written in 100% pure Java™, runs on any JVM and is available in
        <a href="${content.rootpath}download/download.html">the Maven Central repository</a> too.
        It works with <a href="${content.rootpath}compatibility/quarkus.html">Quarkus</a>
        and  <a href="${content.rootpath}compatibility/springBoot.html">Spring Boot</a>.
    </p>
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

<#macro flags>
    <div style="text-align: right; padding-right: 10px; margin-bottom: 20px;">
        <a href="${content.rootpath}index.html" style="text-decoration: none;"><img src="${content.rootpath}website/flags/us.png"><img src="${content.rootpath}website/flags/gb.png">
        </a>
        -
        <a href="${content.rootpath}localized/fr/index.html" style="text-decoration: none;">
            <img src="${content.rootpath}website/flags/fr.png">
        </a>
        -
        <a href="${content.rootpath}localized/de/index.html" style="text-decoration: none;">
            <img src="${content.rootpath}website/flags/de.png">
        </a>
        -
        <a href="${content.rootpath}localized/zh/index.html" style="text-decoration: none;">
            <img src="${content.rootpath}website/flags/cn.png">
        </a>
        -
        <a href="${content.rootpath}localized/ja/index.html" style="text-decoration: none;">
            <img src="${content.rootpath}website/flags/jp.png">
        </a>
    </div>
</#macro>
