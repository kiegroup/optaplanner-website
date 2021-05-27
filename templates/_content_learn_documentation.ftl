<#-- Move into content after https://github.com/jbake-org/jbake/issues/693 -->
<#import "normalBase.ftl" as parent>
<#import "macros.ftl" as macros>

<@layout>${content.body}</@layout>

<#macro layout>
<@parent.layout>
    <#assign pom = data.get('pom.yml')>
    <h1>${content.title}</h1>
    <h2 id="FinalReleases">Final releases</h2>
    <ul class="nav nav-tabs download-nav-tabs">
        <li class="active">
            <a data-toggle="pill" href="#engine">Engine</a>
        </li>
        <li>
            <a data-toggle="pill" href="#optaweb-employee-rostering">OptaWeb Employee Rostering</a>
        </li>
        <li>
            <a data-toggle="pill" href="#optaweb-vehicle-routing">OptaWeb Vehicle Routing</a>
        </li>
    </ul>
    <div class="tab-content download-tab-content">
        <div class="tab-pane fade in active" id="engine">
            <div class="ulist">
                <ul>
                    <li>
                        <p><span class="image"><img src="documentation.png" alt="Documentation"></span> OptaPlanner Engine reference manual ${pom.latestFinal.version}:</p>
                        <div class="ulist">
                            <ul>
                                <li>
                                    <p><a href="${pom.latestFinal.engineDocumentationHtmlSingle}">HTML Single</a> -
                                        <a href="${pom.latestFinal.engineDocumentationPdf}">PDF</a></p>
                                </li>
                                <li>
                                    <p>Javadocs:
                                        <a href="${pom.latestFinal.javadocs}">HTML</a></p>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <p>Red Hat subscription documentation: Check <a href="https://access.redhat.com/documentation/">the customer portal</a>.</p>
                    </li>
                </ul>
            </div>
        </div>
        <div class="tab-pane fade" id="optaweb-employee-rostering">
            <div class="ulist">
                <ul>
                    <li>
                        <p><span class="image"><img src="documentation.png" alt="Documentation"></span> OptaWeb Employee Rostering reference manual ${pom.latestFinal.version}:</p>
                        <div class="ulist">
                            <ul>
                                <li>
                                    <p><a href="${pom.latestFinal.optawebEmployeeRosteringDocumentationHtmlSingle}">HTML Single</a> -
                                        <a href="${pom.latestFinal.optawebEmployeeRosteringDocumentationPdf}">PDF</a></p>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <p>Red Hat subscription documentation: Check <a href="https://access.redhat.com/documentation/">the customer portal</a>.</p>
                    </li>
                </ul>
            </div>
        </div>
        <div class="tab-pane fade" id="optaweb-vehicle-routing">
            <div class="ulist">
                <ul>
                    <li>
                        <p><span class="image"><img src="documentation.png" alt="Documentation"></span> OptaWeb Vehicle Routing reference manual ${pom.latestFinal.version}:</p>
                        <div class="ulist">
                            <ul>
                                <li>
                                    <p><a href="${pom.latestFinal.optawebVehicleRoutingDocumentationHtmlSingle}">HTML Single</a> -
                                        <a href="${pom.latestFinal.optawebVehicleRoutingDocumentationPdf}">PDF</a></p>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <p>Red Hat subscription documentation: Check <a href="https://access.redhat.com/documentation/">the customer portal</a>.</p>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <h2 id="NightlySnapshots">Nightly snapshots</h2>
    <p>Nightly snapshots are unstable binaries, build automatically by our CI server.</p>
    <ul class="nav nav-tabs download-nav-tabs">
        <li class="active">
            <a data-toggle="pill" href="#engine-nightly">Engine</a>
        </li>
        <li>
            <a data-toggle="pill" href="#optaweb-employee-rostering-nightly">OptaWeb Employee Rostering</a>
        </li>
        <li>
            <a data-toggle="pill" href="#optaweb-vehicle-routing-nightly">OptaWeb Vehicle Routing</a>
        </li>
    </ul>
    <div class="tab-content download-tab-content">
        <div class="tab-pane fade in active" id="engine-nightly">
            <div class="ulist">
                <ul>
                    <li>
                        <p><span class="image"><img src="documentation.png" alt="Documentation"></span>
                            <strong><a href="${pom.nightly.engineDocumentationZip}">OptaPlanner Engine reference manual ${pom.nightly.version}</a></strong></p>
                    </li>
                </ul>
            </div>
        </div>
        <div class="tab-pane fade" id="optaweb-employee-rostering-nightly">
            <div class="ulist">
                <ul>
                    <li>
                        <p><span class="image"><img src="documentation.png" alt="Documentation"></span>
                            <strong><a href="${pom.nightly.optawebEmployeeRosteringDocumentationZip}">OptaWeb Employee Rostering reference manual ${pom.nightly.version}</a></strong></p>
                    </li>
                </ul>
            </div>
        </div>
        <div class="tab-pane fade" id="optaweb-vehicle-routing-nightly">
            <div class="ulist">
                <ul>
                    <li>
                        <p><span class="image"><img src="documentation.png" alt="Documentation"></span>
                            <strong><a href="${pom.nightly.optawebVehicleRoutingDocumentationZip}">OptaWeb Vehicle Routing reference manual ${pom.nightly.version}</a></strong></p>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <h2 id="OlderReleases">Older releases</h2>
    <p>For older community releases, check <a href="https://docs.optaplanner.org/">the documentation archive</a>.</p>
</@parent.layout>
</#macro>
