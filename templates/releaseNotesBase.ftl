<#import "normalBase.ftl" as parent>
<#import "macros.ftl" as macros>

<@layout>${content.body}</@layout>

<#macro layout>
    <@parent.layout>
        <#assign pom = data.get('pom.yml')>
        <#assign releaseNotesAreFinal = (content.release_notes_version_qualifier == "Final")/>
        <h1>${content.title}</h1>
        <div class="paragraph summaryParagraph">
            <p>We are happy to announce a ${content.release_notes_version}
                <strong>${content.release_notes_version_qualifier}</strong> release of <a
                        href="https://www.optaplanner.org">OptaPlanner</a>.
                OptaPlanner is a lightweight, embeddable planning engine written in Java™ to solve AI constraint
                optimization problems efficiently.
                Use cases include <a href="${content.rootpath}learn/useCases/vehicleRoutingProblem.html">Vehicle
                    Routing</a>,
                <a href="${content.rootpath}learn/useCases/employeeRostering.html">Employee Rostering</a>,
                <a href="${content.rootpath}learn/useCases/maintenanceScheduling.html">Maintenance Scheduling</a>,
                <a href="${content.rootpath}learn/useCases/taskAssignmentOptimization.html">Task Assignment</a>,
                <a href="${content.rootpath}learn/useCases/schoolTimetabling.html">School Timetabling</a>,
                <a href="${content.rootpath}learn/useCases/cloudOptimization.html">Cloud Optimization</a>,
                <a href="${content.rootpath}learn/useCases/conferenceScheduling.html">Conference Scheduling</a> and many
                more.</p>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="text-center mb-4"><a class="btn btn-lg btn-success versionedButton"
                                            href="${releaseNotesAreFinal?then(pom.latestFinal.distributionZip, pom.latest.distributionZip)}">
                        <img alt="Download" src="${content.rootpath}download/download.png">
                        <div>
                            <span>Download</span>
                            <br>
                            <span class="small">${releaseNotesAreFinal?then(pom.latestFinal.version, pom.latest.version)}</span>
                        </div>
                    </a></div>
            </div>
            <div class="col-md-6">
                <div class="text-center mb-4"><a class="btn btn-lg btn-primary versionedButton"
                                            href="${releaseNotesAreFinal?then(pom.latestFinal.engineDocumentationHtmlSingle, pom.latest.engineDocumentationHtmlSingle)}">
                        <img alt="Documentation" src="${content.rootpath}learn/documentation.png">
                        <div>
                            <span>Documentation</span>
                            <br>
                            <span class="small">${releaseNotesAreFinal?then(pom.latestFinal.version, pom.latest.version)}</span>
                        </div>
                    </a></div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="card mb-4">
                    <div class="card-header">Status of OptaPlanner</div>
                    <div class="card-body">
                        <ul class="list-unstyled">
                            <li>
                                <strong>Stable:</strong>
                                Lots of unit, integration and stress tests
                            </li>
                            <li>
                                <strong>Reliable:</strong>
                                Used
                                <a href="${content.rootpath}learn/testimonialsAndCaseStudies.html">across the world</a>
                                in production
                            </li>
                            <li>
                                <strong>Scalable:</strong>
                                To billions of constraint matches with minimal RAM and CPU time
                            </li>
                            <li>
                                <strong>Documented:</strong>
                                Read
                                <a href="${content.rootpath}learn/documentation.html">the detailed reference manual</a>
                                and the many examples
                            </li>
                            <li>
                                <strong>Open Source:</strong>
                                <a href="${content.rootpath}code/license.html">Apache License 2.0</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <@macros.productToProjectVersionMapping/>
            </div>
        </div>
        <#nested>
        <div class="sect1">
            <h2>Upgrade your code to ${content.release_notes_version}</h2>
            <div class="sectionbody">
                <div class="paragraph">
                    <p>The best and easiest way to upgrade to this new version of OptaPlanner is by following
                        <a href="${content.rootpath}download/upgradeRecipe/upgradeRecipe${content.release_notes_version}.html">the
                            upgrade recipe</a>.</p>
                </div>
            </div>
        </div>
        <div class="sect1">
            <h2>New features in older releases</h2>
            <div class="sectionbody">
                <div class="paragraph">
                    <p>Read <a href="./">the previous release notes</a> to learn about the new and noteworthy in
                        previous releases.</p>
                </div>
            </div>
        </div>
    </@parent.layout>
</#macro>
