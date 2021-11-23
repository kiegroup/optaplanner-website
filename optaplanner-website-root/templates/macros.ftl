<#assign pom = data.get('pom.yml')>
<#assign events = data.get('events.yml').data>
<#assign videos = data.get('videos.yml').data>
<#assign users = data.get('users.yml').data>

<#macro latestReleases>
    <div class="card mb-4">
        <div class="card-header">Latest release</div>
        <div class="card-body">
            <ul class="list-unstyled">
                <li class="mb-2">
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
    <div class="card mb-4">
        <div class="card-header bg-dark text-white">Paid support and consulting</div>
        <div class="card-body">
            <p>
                <b>Want to talk to the experts?</b>
                Red Hat offers certified binaries with enterprise consulting.
                Contact <a class="servicesMailAddress">optaplanner-info</a> for more information.
            </p>
        </div>
    </div>
</#macro>

<#macro latestEvents>
    <div class="card mb-4">
        <div class="card-header">Upcoming events</div>
        <div class="card-body">
            <ul class="list-unstyled">
                <#list events?reverse as event>
                    <#if .now?date <= event.date?date>
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
                                            </li>
                                        </#list>
                                    </ul>
                                </#if>
                            </span>
                        </li>
                    </#if>
                </#list>
                <div class="small float-end">
                    <a href="https://github.com/kiegroup/optaplanner-website/blob/main/optaplanner-website-root/data/events.yml">Add event</a>
                    /
                    <a href="${content.rootpath}community/eventsArchive.html">Archive</a>
                </div>
            </ul>
        </div>
    </div>
</#macro>

<#macro latestBlogPosts>
    <div class="card mb-4">
        <div class="card-header">Latest blog posts</div>
        <div class="card-body">
            <ul class="list-unstyled">
                <#list published_posts[0..6] as blog>
                    <li class="mb-2">
                        <div class="title">
                            <a href="${content.rootpath}${blog.uri}">${blog.title}</a>
                        </div>
                        <div class="small">${blog.date?string("EEE d MMMM yyyy")}</div>
                        <@userBadgeInline userId=blog.author/>
                    </li>
                </#list>
                <div class="small float-end">
                    <a href="${content.rootpath}blog/index.html">Blog archive</a>
                </div>
            </ul>
        </div>
    </div>
</#macro>

<#macro latestVideos>
    <div class="card mb-4">
        <div class="card-header">Latest videos</div>
        <div class="card-body">
            <ul class="list-unstyled">
                <#list videos[0..6] as video>
                    <li class="mb-2">
                        <a style="cursor: pointer" data-bs-toggle="modal" data-bs-target="#videoModal" data-youtube-id="${video.youtubeId}" data-video-title="${video.title}">
                            <span><i class="fas fa-play-circle"></i></span>
                            <span class="align-text-middle link-primary">${video.title}</span>
                        </a>
                        <div class="small">${video.date?string("EEE d MMMM yyyy")}</div>
                        <#if video.author??>
                            <@userBadgeInline userId=video.author/>
                        </#if>
                    </li>
                </#list>
                <div class="small float-end">
                    <a href="https://www.youtube.com/channel/UCcpkOKpujFlM67D2h0RdaeQ">Video archive</a>
                </div>
            </ul>
        </div>
    </div>
</#macro>

<#macro userBadgeInline userId>
    <#assign user = users?filter(u -> u.userId == userId)?first >
    <span>
        <img class="rounded me-1" src="https://www.gravatar.com/avatar/${user.gravatarHashId}?s=20&d=mm"/>
        <span class="align-middle">${user.fullName}</span>
    </span>
</#macro>

<#macro userBadge userId long>
    <#assign user = users?filter(u -> u.userId == userId)?first >
    <div class="card bg-light" style="width: ${long?then("600px", "320px")};">
        <div class="row gx-2">
            <div class="col-auto">
                <img class="rounded m-1" src="https://www.gravatar.com/avatar/${user.gravatarHashId}?s=64&d=mm" width="64" height="64" alt="Avatar ${user.fullName}"/>
            </div>
            <div class="col">
                <div class="card-body p-0 me-1">
                    <h5 class="card-title my-1">${user.fullName}</h5>
                    <hr class="m-0"/>
                    <span class="float-end mx-1">
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
                    <p class="small mb-1">${user.role}</p>
                    <#if long>
                        <#if user.email??>
                            <p class="mb-1">
                                <span class="emailSupportPopover"><strong>Email:</strong> ${user.email}</span>
                            </p>
                        </#if>
                        <#if user.employedBy??>
                            <p class="mb-1"><strong>Employed by:</strong> ${user.employedBy}</p>
                        </#if>
                        <#if user.contributionsDescription??>
                            <p class="mb-1"><strong>Contributions:</strong> ${user.contributionsDescription}</p>
                        </#if>
                        <#if user.biography??>
                            <p class="mb-1"><strong>Bio:</strong> ${user.biography}</p>
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
        <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4 mb-4">
            <#list relatedVideos as video>
                <div class="col">
                    <@videoCard youtubeId=video.youtubeId/>
                </div>
            </#list>
        </div>
    </#if>
</#macro>

<#macro videoCard youtubeId long=true>
    <#assign video = videos?filter(v -> v.youtubeId == youtubeId)?first >
    <div class="card" style="cursor: pointer">
        <#if long>
            <img class="card-img-top ratio ratio-16x9" src="https://img.youtube.com/vi/${video.youtubeId}/mqdefault.jpg" alt="Video thumbnail">
            <div class="card-img-overlay">
                <div class="text-center mt-5"><i class="fas fa-play-circle fa-3x text-white bg-dark bg-opacity-25 rounded-pill p-1"></i></div>
            </div>
            <div class="card-body p-2">
                <#-- As a stretched-link for the hover over effect -->
                <a class="stretched-link" data-bs-toggle="modal" data-bs-target="#videoModal" data-youtube-id="${video.youtubeId}" data-video-title="${video.title}">${video.title}</a>
                <br/>
                <#if video.author??>
                    <@userBadgeInline userId=video.author/>
                </#if>
                <span class="float-end align-bottom small">${video.date?string("d MMM yyyy")}</span>
            </div>
        <#else>
            <a data-bs-toggle="modal" data-bs-target="#videoModal" data-youtube-id="${video.youtubeId}" data-video-title="${video.title}">
                <img class="card-img-top ratio ratio-16x9" src="https://img.youtube.com/vi/${video.youtubeId}/mqdefault.jpg" alt="Video thumbnail">
                <div class="card-img-overlay d-flex justify-content-center align-items-center">
                    <i class="fas fa-play-circle fa-3x text-white bg-dark bg-opacity-25 rounded-pill p-1"></i>
                </div>
            </a>
        </#if>
    </div>
</#macro>

<#macro relatedBlogPosts>
    <#assign relatedTags = tags?filter(tag -> tag.name == content.related_tag)>
    <#if relatedTags?size &gt; 0>
        <#assign relatedTag = relatedTags?first>
        <h2>Related blog posts</h2>
        <ul>
            <#list relatedTag.tagged_posts as blog>
                <li class="mb-2">
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

<#macro tryItButton>
    <div class="card bg-light mb-4">
        <div class="text-center mt-2"><a class="btn btn-lg btn-success versionedButton" href="${pom.latestFinal.distributionZip}"><img alt="Download" src="${content.rootpath}download/download.png">
            <div>
                <span>Try OptaPlanner</span><br/>
                <span class="small">Download ${pom.latestFinal.version}</span>
            </div>
        </a></div>
        <div class="card-body">
            <ol class="mb-1">
                <li>Download and unzip.</li>
                <li>
                    Run <code>runQuickstarts.sh</code> (Linux/macOS)<br/>
                    or <code>runQuickstarts.bat</code> (Windows).
                </li>
            </ol>
            <div class="text-center small">
                Requires <a href="https://adoptium.net">JDK 11 or higher</a> to run.
            </div>
        </div>
    </div>
</#macro>
<#macro getStartedButton>
    <div class="card bg-light mb-4">
        <div class="text-center mt-2"><a class="btn btn-lg btn-primary versionedButton" href="${config.canonicalBaseUrl}/docs/optaplanner/latest/quickstart/quickstart.html"><img alt="Documentation" src="${content.rootpath}learn/documentation.png">
            <div>
                <span>Get started</span><br/>
                <span class="small">User guide ${pom.latestFinal.version}</span>
            </div>
        </a></div>
        <div class="card-body">
            <div class="text-center">
                <a href="https://github.com/kiegroup/optaplanner-quickstarts"><i class="fab fa-github me-1 text-black"></i>Clone the Quickstarts code.</a>
            </div>
        </div>
    </div>
</#macro>

<#macro useCaseCards>
    <div class="row row-cols-2 row-cols-md-3 row-cols-lg-4 g-4">
        <@featureCard uri="learn/useCases/vehicleRoutingProblem.html"
                iconClass="fas fa-truck"
                title="Vehicle routing (VRP)"
                description="Quicker routes for a fleet of vehicles."/>
        <@featureCard uri="learn/useCases/employeeRostering.html"
                iconClass="fas fa-user-nurse"
                title="Employee rostering"
                description="Assign shifts to employees by skills and availability."/>
        <@featureCard uri="learn/useCases/maintenanceScheduling.html"
                iconClass="fas fa-wrench"
                title="Maintenance scheduling"
                description="Timely upkeep of machinery and equipment."/>
        <@featureCard uri="learn/useCases/conferenceScheduling.html"
                iconClass="fas fa-microphone"
                title="Conference scheduling"
                description="Schedule speakers and talks by availability and topic."/>
        <@featureCard uri="learn/useCases/schoolTimetabling.html"
                iconClass="fas fa-graduation-cap"
                title="School timetabling"
                description="Compacter schedules for teachers and students."/>
        <@featureCard uri="learn/useCases/taskAssignmentOptimization.html"
                iconClass="fas fa-tasks"
                title="Task assignment"
                description="Assign tasks by priority, skills and affinity."/>
        <@featureCard uri="learn/useCases/cloudOptimization.html"
                iconClass="fas fa-cloud"
                title="Cloud optimization"
                description="Bin packing and defragmentation of cloud resources."/>
        <@featureCard uri="learn/useCases/jobShopScheduling.html"
                iconClass="fas fa-industry"
                title="Job shop scheduling"
                description="Reduce makespan for assembly lines."/>
    </div>
</#macro>
<#macro featureCard uri iconClass title description>
    <div class="col">
        <div class="card h-100">
            <div class="card-body d-flex flex-column">
                <h5 class="card-title"><i class="${iconClass} me-2"></i>${title}</h5>
                <p class="card-text">${description}</p>
                <a class="stretched-link mt-auto" href="${content.rootpath}${uri}">Learn more</a>
            </div>
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
        There’s no need to input constraints as mathematical equations.
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
<div class="card mb-4">
    <div class="card-header">Note for Red Hat Decision Manager customers</div>
    <div class="card-body">
        <p>The RHDM version differs from the OptaPlanner version:</p>
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
            <#list pom.productToCommunityVersionMap as productToCommunityVersionEntry>
                <tr>
                    <td>${productToCommunityVersionEntry.productVersion}</td>
                    <td>${productToCommunityVersionEntry.communityVersion}</td>
                </tr>
            </#list>
            </tbody>
        </table>
    </div>
</div>
</#macro>

<#macro flags>
    <div class="float-end px-2">
        <a href="${content.rootpath}index.html"><img src="${content.rootpath}website/flags/us.png"><img src="${content.rootpath}website/flags/gb.png"></a>
        -
        <a href="${content.rootpath}localized/fr/index.html"><img src="${content.rootpath}website/flags/fr.png"></a>
        -
        <a href="${content.rootpath}localized/de/index.html"><img src="${content.rootpath}website/flags/de.png"></a>
        -
        <a href="${content.rootpath}localized/zh/index.html"><img src="${content.rootpath}website/flags/cn.png"></a>
        -
        <a href="${content.rootpath}localized/ja/index.html"><img src="${content.rootpath}website/flags/jp.png"></a>
    </div>
</#macro>
