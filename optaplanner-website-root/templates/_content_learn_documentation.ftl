<#-- Move into content after https://github.com/jbake-org/jbake/issues/693 -->
<#import "normalBase.ftl" as parent>
<#import "macros.ftl" as macros>

<@layout>${content.body}</@layout>

<#macro layout>
<@parent.layout>
    <#assign pom = data.get('pom.yml')>
    <h1>${content.title}</h1>

    <div class="tab-content p-4 mb-4">
        <h2><span class="image"><img src="documentation.png" alt="Documentation"></span><a href="${content.rootpath}docs">Visit the documentation website.</a></h2>
    </div>

    <h2 id="FinalReleases">Final releases</h2>
    <div class="tab-content p-4 mb-4">
        <div class="ulist">
            <ul>
                <li>
                    <p><span class="image"><img src="documentation.png" alt="Documentation"></span>OptaPlanner Engine reference manual ${pom.latestFinal.version}:</p>
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

    <h2 id="NightlySnapshots">Nightly snapshots</h2>
    <p>Nightly snapshots are unstable binaries, build automatically by our CI server.</p>
    <div class="tab-content p-4 mb-4">
        <div class="ulist">
            <ul>
                <li>
                    <p><span class="image"><img src="documentation.png" alt="Documentation"></span>
                        <strong><a href="${pom.nightly.engineDocumentationZip}">OptaPlanner Engine reference manual ${pom.nightly.version}</a></strong></p>
                </li>
            </ul>
        </div>
    </div>

    <h2 id="OlderReleases">Older releases</h2>
    <p>For older community releases, check <a href="https://docs.optaplanner.org/">the documentation archive</a>.</p>
</@parent.layout>
</#macro>
