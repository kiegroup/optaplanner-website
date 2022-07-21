<#-- Move into content after https://github.com/jbake-org/jbake/issues/693 -->
<#import "normalBase.ftl" as parent>
<#import "macros.ftl" as macros>

<@layout>${content.body}</@layout>

<#macro layout>
<@parent.layout>
    <#assign pom = data.get('pom.yml')>
    <h1>${content.title}</h1>
    <h2 id="FinalReleases">Final releases</h2>
    <ul class="nav nav-tabs" id="myTab" role="tablist">
        <li class="nav-item" role="presentation">
            <button class="nav-link active" id="engine-tab" data-bs-toggle="tab" data-bs-target="#engine" type="button" role="tab" aria-controls="engine" aria-selected="true">Engine</button>
        </li>
        <li class="nav-item" role="presentation">
            <button class="nav-link" id="optaweb-vehicle-routing-tab" data-bs-toggle="tab" data-bs-target="#optaweb-vehicle-routing" type="button" role="tab" aria-controls="optaweb-vehicle-routing" aria-selected="false">OptaWeb Vehicle Routing</button>
        </li>
    </ul>
    <div class="tab-content border-bottom border-start border-end p-4 mb-4">
        <div class="tab-pane fade show active" id="engine" role="tabpanel" aria-labelledby="engine-tab">
            <div class="ulist">
                <ul>
                    <li>
                       <p><span class="image"><img src="documentation.png" alt="Documentation"></span><a href="${content.rootpath}docs">Visit the documentation website.</a></p>
                    </li>
                    <li>
                        <p>OptaPlanner Engine reference manual ${pom.latestFinal.version}:</p>
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
                        <p>Red Hat subscription documentation: Check <a href="${config.productDocsUrl}">the customer portal</a>.</p>
                    </li>
                </ul>
            </div>
        </div>
        <div class="tab-pane fade" id="optaweb-vehicle-routing" role="tabpanel" aria-labelledby="optaweb-vehicle-routing-tab">
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
                        <p>Red Hat subscription documentation: Check <a href="${config.productDocsUrl}">the customer portal</a>.</p>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <h2 id="NightlySnapshots">Nightly snapshots</h2>
    <p>Nightly snapshots are unstable binaries, build automatically by our CI server.</p>
    <ul class="nav nav-tabs" id="myTab" role="tablist">
        <li class="nav-item" role="presentation">
            <button class="nav-link active" id="engine-nightly-tab" data-bs-toggle="tab" data-bs-target="#engine-nightly" type="button" role="tab" aria-controls="engine-nightly" aria-selected="true">Engine</button>
        </li>
        <li class="nav-item" role="presentation">
            <button class="nav-link" id="optaweb-vehicle-routing-nightly-tab" data-bs-toggle="tab" data-bs-target="#optaweb-vehicle-routing-nightly" type="button" role="tab" aria-controls="optaweb-vehicle-routing-nightly" aria-selected="false">OptaWeb Vehicle Routing</button>
        </li>
    </ul>
    <div class="tab-content border-bottom border-start border-end p-4 mb-4">
        <div class="tab-pane fade show active" id="engine-nightly" role="tabpanel" aria-labelledby="engine-nightly-tab">
            <div class="ulist">
                <ul>
                    <li>
                        <p><span class="image"><img src="documentation.png" alt="Documentation"></span>
                            <strong><a href="${pom.nightly.engineDocumentationZip}">OptaPlanner Engine reference manual ${pom.nightly.version}</a></strong></p>
                    </li>
                </ul>
            </div>
        </div>
        <div class="tab-pane fade" id="optaweb-vehicle-routing-nightly" role="tabpanel" aria-labelledby="optaweb-vehicle-routing-nightly-tab">
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
