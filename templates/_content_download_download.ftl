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
            <div class="sect2">
                <h3>Distribution zip</h3>
                <div class="paragraph">
                    <p>The OptaPlanner distribution zip includes binaries, documentation, examples and sources.</p>
                </div>
                <div class="ulist">
                    <ul>
                        <li>
                            <p><span class="image"><img src="download.png" alt="Download"></span>
                                <strong><a href="${pom.latestFinal.distributionZip}">Download OptaPlanner Engine ${pom.latestFinal.version}</a></strong></p>
                            <div class="ulist">
                                <ul>
                                    <li>
                                        <p><a href="releaseNotes/releaseNotes${pom.latestFinal.releaseNotesVersion}.html">Release notes ${pom.latestFinal.releaseNotesVersion}</a> -
                                            <a href="upgradeRecipe/upgradeRecipe${pom.latestFinal.releaseNotesVersion}.html">Upgrade recipe to ${pom.latestFinal.releaseNotesVersion}</a></p>
                                    </li>
                                    <li>
                                        <p>License: <a href="../code/license.html">Apache License 2.0</a> - Date: ${pom.latestFinal.releaseDate?string("EEE d MMMM yyyy")}</p>
                                    </li>
                                    <li>
                                        <p>Download size: Large (over 90% is due to examples, data sets and documentation)</p>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <p>For Red Hat subscription releases <a href="https://access.redhat.com/downloads">go to the product download site</a>.</p>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="sect2">
                <h3>Maven</h3>
                <div class="paragraph">
                    <p>The OptaPlanner jars are also available in <a href="http://search.maven.org/#search|ga|1|org.optaplanner">the central maven repository</a>
                        (and also in <a href="https://repository.jboss.org/nexus/index.html#nexus-search;gav~org.optaplanner\~~\~\~">the JBoss maven repository</a>).</p>
                </div>
                <div class="paragraph">
                    <p>With Maven, just add the <code>optaplanner-core</code> dependency in your <code>pom.xml</code> to get started:</p>
                </div>
                <div class="listingblock">
                    <div class="content">
                        <pre class="highlight"><code class="language-xml" data-lang="xml">  &lt;dependency&gt;&#x000A;    &lt;groupId&gt;org.optaplanner&lt;/groupId&gt;&#x000A;    &lt;artifactId&gt;optaplanner-core&lt;/artifactId&gt;&#x000A;    &lt;version&gt;${pom.latestFinal.version}&lt;/version&gt;&#x000A;  &lt;/dependency&gt;</code></pre>
                    </div>
                </div>
                <div class="paragraph">
                    <p>Or better yet, import the <code>optaplanner-bom</code> to avoid duplicating version numbers
                        when adding other optaplanner dependencies later on:</p>
                </div>
                <div class="listingblock">
                    <div class="content">
                        <pre class="highlight"><code class="language-xml" data-lang="xml">&lt;project&gt;&#x000A;  ...&#x000A;  &lt;dependencyManagement&gt;&#x000A;    &lt;dependencies&gt;&#x000A;      &lt;dependency&gt;&#x000A;        &lt;groupId&gt;org.optaplanner&lt;/groupId&gt;&#x000A;        &lt;artifactId&gt;optaplanner-bom&lt;/artifactId&gt;&#x000A;        &lt;type&gt;pom&lt;/type&gt;&#x000A;        &lt;version&gt;${pom.latestFinal.version}&lt;/version&gt;&#x000A;        &lt;scope&gt;import&lt;/scope&gt;&#x000A;      &lt;/dependency&gt;&#x000A;    &lt;/dependencies&gt;&#x000A;  &lt;/dependencyManagement&gt;&#x000A;  &lt;dependencies&gt;&#x000A;    &lt;dependency&gt;&#x000A;      &lt;groupId&gt;org.optaplanner&lt;/groupId&gt;&#x000A;      &lt;artifactId&gt;optaplanner-core&lt;/artifactId&gt;&#x000A;    &lt;/dependency&gt;&#x000A;    &lt;dependency&gt;&#x000A;      &lt;groupId&gt;org.optaplanner&lt;/groupId&gt;&#x000A;      &lt;artifactId&gt;optaplanner-test&lt;/artifactId&gt;&#x000A;      &lt;scope&gt;test&lt;/scope&gt;&#x000A;    &lt;/dependency&gt;&#x000A;    ...&#x000A;  &lt;/dependencies&gt;&#x000A;&lt;/project&gt;</code></pre>
                    </div>
                </div>
            </div>
            <div class="sect2">
                <h3>Gradle</h3>
                <div class="paragraph">
                    <p>With Gradle, just add the <code>optaplanner-core</code> dependency in your <code>build.gradle</code> to get started:</p>
                </div>
                <div class="listingblock">
                    <div class="content">
                        <pre class="highlight"><code class="language-groovy" data-lang="groovy">dependencies {&#x000A;  implementation 'org.optaplanner:optaplanner-core:${pom.latestFinal.version}'&#x000A;}</code></pre>
                    </div>
                </div>
            </div>
        </div>
        <div class="tab-pane fade" id="optaweb-employee-rostering">
            <div class="ulist">
                <ul>
                    <li>
                        <p><span class="image"><img src="download.png" alt="Download"></span> <strong><a href="${pom.latestFinal.optawebEmployeeRosteringDistributionZip}">Download OptaWeb Employee Rostering ${pom.latestFinal.version}</a></strong></p>
                        <div class="ulist">
                            <ul>
                                <li>
                                    <p>License: <a href="../code/license.html">Apache License 2.0</a> - Date: ${pom.latestFinal.releaseDate?string("EEE d MMMM yyyy")}</p>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <p>For Red Hat subscription releases <a href="https://access.redhat.com/downloads">go to the product download site</a>.</p>
                    </li>
                </ul>
            </div>
        </div>
        <div class="tab-pane fade" id="optaweb-vehicle-routing">
            <div class="ulist">
                <ul>
                    <li>
                        <p><span class="image"><img src="download.png" alt="Download"></span> <strong><a href="${pom.latestFinal.optawebVehicleRoutingDistributionZip}">Download OptaWeb Vehicle Routing ${pom.latestFinal.version}</a></strong></p>
                        <div class="ulist">
                            <ul>
                                <li>
                                    <p>License: <a href="../code/license.html">Apache License 2.0</a> - Date: ${pom.latestFinal.releaseDate?string("EEE d MMMM yyyy")}</p>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <p>For Red Hat subscription releases <a href="https://access.redhat.com/downloads">go to the product download site</a>.</p>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <h2 id="NonFinalReleases">Non-Final releases</h2>
    <p><strong>Non-Final releases are the best way to test drive new features and APIs to provide feedback before we lock down the API with a Final release.</strong>
        We welcome such feedback in <a href="../community/getHelp.html">our forum</a>.</p>
    <h3 id="AlphasBetasCRs">Alphas, Betas and CRs</h3>
    <p>An Alpha can be unstable.
        A Beta should work (it passes automated testing), but its new APIs might still change in the next release.
        A CR should be almost identical to the Final release.</p>
    <#if pom.latest.version == pom.latestFinal.version>
        <p><em>There is no Alpha or Beta yet because we just released a Final version.</em></p>
    <#else>
        <ul class="nav nav-tabs download-nav-tabs">
            <li class="active">
                <a data-toggle="pill" href="#engine-latest">Engine</a>
            </li>
        </ul>
        <div class="tab-content download-tab-content">
            <div class="tab-pane fade in active" id="engine-latest">
                <div class="sect2">
                    <h3>Distribution zip</h3>
                    <div class="ulist">
                        <ul>
                            <li>
                                <p><span class="image"><img src="download.png" alt="Download"></span>
                                    <strong><a href="${pom.latest.distributionZip}">Download OptaPlanner Engine ${pom.latest.version}</a></strong></p>
                                <div class="ulist">
                                    <ul>
                                        <li>
                                            <p><a href="releaseNotes/releaseNotes${pom.latest.releaseNotesVersion}.html">Release notes ${pom.latest.releaseNotesVersion}</a> -
                                                <a href="upgradeRecipe/upgradeRecipe${pom.latest.releaseNotesVersion}.html">Upgrade recipe to ${pom.latest.releaseNotesVersion}</a></p>
                                        </li>
                                        <li>
                                            <p>License: <a href="../code/license.html">Apache License 2.0</a> - Date: ${pom.latest.releaseDate?string("EEE d MMMM yyyy")}</p>
                                        </li>
                                        <li>
                                            <p>Download size: Large (over 90% is due to examples, data sets and documentation)</p>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="sect2">
                    <h3>Maven</h3>
                    <div class="listingblock">
                        <div class="content">
                            <pre class="highlight"><code class="language-xml" data-lang="xml">&lt;project&gt;&#x000A;  ...&#x000A;  &lt;dependencyManagement&gt;&#x000A;    &lt;dependencies&gt;&#x000A;      &lt;dependency&gt;&#x000A;        &lt;groupId&gt;org.optaplanner&lt;/groupId&gt;&#x000A;        &lt;artifactId&gt;optaplanner-bom&lt;/artifactId&gt;&#x000A;        &lt;type&gt;pom&lt;/type&gt;&#x000A;        &lt;version&gt;${pom.latest.version}&lt;/version&gt;&#x000A;        &lt;scope&gt;import&lt;/scope&gt;&#x000A;      &lt;/dependency&gt;&#x000A;    &lt;/dependencies&gt;&#x000A;  &lt;/dependencyManagement&gt;&#x000A;  &lt;dependencies&gt;&#x000A;    &lt;dependency&gt;&#x000A;      &lt;groupId&gt;org.optaplanner&lt;/groupId&gt;&#x000A;      &lt;artifactId&gt;optaplanner-core&lt;/artifactId&gt;&#x000A;    &lt;/dependency&gt;&#x000A;    &lt;dependency&gt;&#x000A;      &lt;groupId&gt;org.optaplanner&lt;/groupId&gt;&#x000A;      &lt;artifactId&gt;optaplanner-test&lt;/artifactId&gt;&#x000A;      &lt;scope&gt;test&lt;/scope&gt;&#x000A;    &lt;/dependency&gt;&#x000A;    ...&#x000A;  &lt;/dependencies&gt;&#x000A;&lt;/project&gt;</code></pre>
                        </div>
                    </div>
                </div>
                <div class="sect2">
                    <h3>Gradle</h3>
                    <div class="listingblock">
                        <div class="content">
                            <pre class="highlight"><code class="language-groovy" data-lang="groovy">dependencies {&#x000A;  implementation 'org.optaplanner:optaplanner-core:${pom.latest.version}'&#x000A;}</code></pre>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </#if>
    
    <h3 id="NightlySnapshots">Nightly snapshots</h3>
    <p>Nightly snapshots are unstable binaries, built automatically by our CI server.</p>
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
                        <p><span class="image"><img src="download.png" alt="Download"></span> <strong><a href="${pom.nightly.distributionZip}">Download OptaPlanner Engine ${pom.nightly.version}</a></strong></p>
                    </li>
                </ul>
            </div>
        </div>
        <div class="tab-pane fade" id="optaweb-employee-rostering-nightly">
            <div class="ulist">
                <ul>
                    <li>
                        <p><span class="image"><img src="download.png" alt="Download"></span> <strong><a href="${pom.nightly.optawebEmployeeRosteringDistributionZip}">Download OptaWeb Employee Rostering ${pom.nightly.version}</a></strong></p>
                    </li>
                </ul>
            </div>
        </div>
        <div class="tab-pane fade" id="optaweb-vehicle-routing-nightly">
            <div class="ulist">
                <ul>
                    <li>
                        <p><span class="image"><img src="download.png" alt="Download"></span> <strong><a href="${pom.nightly.optawebVehicleRoutingDistributionZip}">Download OptaWeb Vehicle Routing ${pom.nightly.version}</a></strong></p>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <h2 id="OlderReleases">Older releases</h2>
    <p>For older community releases, check <a href="https://download.jboss.org/optaplanner/release/">the release archive</a>.</p>
</@parent.layout>
</#macro>
