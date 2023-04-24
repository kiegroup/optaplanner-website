<#-- Move into content after https://github.com/jbake-org/jbake/issues/693 -->
<#import "normalBase.ftl" as parent>
<#import "macros.ftl" as macros>

<@layout>${content.body}</@layout>

<#macro layout>
<@parent.layout>
    <#assign pom = data.get('pom.yml')>
    <h1>${content.title}</h1>
    <div class="tab-content mb-4 pt-2">
        <div class="tab-pane fade show active" id="engine" role="tabpanel" aria-labelledby="engine-tab">
            <h2>OptaPlanner 9 (latest)</h2>
            <div class="px-4">
                <div class="sect2">
                    <h4>Distribution zip</h4>
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
                                            <p><a href="${content.rootpath}docs/optaplanner/latest/release-notes/release-notes.html#releaseNotes-${pom.latestFinal.releaseNotesVersion}.x">Release notes ${pom.latestFinal.releaseNotesVersion}</a> -
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
                    <h4>Maven</h4>
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
                    <h4>Gradle</h4>
                    <div class="paragraph">
                        <p>With Gradle, just add the <code>optaplanner-core</code> dependency in your <code>build.gradle</code> to get started:</p>
                    </div>
                    <div class="listingblock">
                        <div class="content">
                            <pre class="highlight"><code class="language-gradle" data-lang="gradle">dependencies {&#x000A;  implementation 'org.optaplanner:optaplanner-core:${pom.latestFinal.version}'&#x000A;}</code></pre>
                        </div>
                    </div>
                </div>
            </div>
            <h2 id="optaplanner8">OptaPlanner 8 (legacy)</h2>
            <div class="px-4">
                <p>
                    Both OptaPlanner 8 and 9 are equal feature-wise and their APIs have not changed.
                    While OptaPlanner 9 brings compatibility with Jakarta EE 10, Quarkus 3 and Spring Boot 3, OptaPlanner 8
                    provides full backward compatibility for users who cannot migrate yet.
                    OptaPlanner 8 will keep being released in parallel to OptaPlanner 9 until further notice.
                </p>
                <p>If you are not sure which version to pick, see the following diagram:</p>
                <img src="../blog/2023/02/21/migration-flowchart.png" alt="Which OptaPlanner stream to choose?">
                <p>
                    To summarize what the diagram shows:
                    <ul>
                        <li>If you're starting a new project, or you don't use Quarkus or Spring Boot, we recommend using OptaPlanner 9.</li>
                        <li>Otherwise, stay on OptaPlanner 8, but plan for the migration. OptaPlanner 8 releases will end once enough users adopt Quarkus 3 or Spring Boot 3.</li>
                    </ul>
                </p>
                <div class="sect2">
                    <h4>Maven</h4>
                    <div class="paragraph">
                        <p>The OptaPlanner jars are also available in <a href="http://search.maven.org/#search|ga|1|org.optaplanner">the central maven repository</a>
                            (and also in <a href="https://repository.jboss.org/nexus/index.html#nexus-search;gav~org.optaplanner\~~\~\~">the JBoss maven repository</a>).</p>
                    </div>
                    <div class="paragraph">
                        <p>With Maven, just add the <code>optaplanner-core</code> dependency in your <code>pom.xml</code> to get started:</p>
                    </div>
                    <div class="listingblock">
                        <div class="content">
                            <pre class="highlight"><code class="language-xml" data-lang="xml">  &lt;dependency&gt;&#x000A;    &lt;groupId&gt;org.optaplanner&lt;/groupId&gt;&#x000A;    &lt;artifactId&gt;optaplanner-core&lt;/artifactId&gt;&#x000A;    &lt;version&gt;${pom.latest8Final.version}&lt;/version&gt;&#x000A;  &lt;/dependency&gt;</code></pre>
                        </div>
                    </div>
                    <div class="paragraph">
                        <p>Or better yet, import the <code>optaplanner-bom</code> to avoid duplicating version numbers
                            when adding other optaplanner dependencies later on:</p>
                    </div>
                    <div class="listingblock">
                        <div class="content">
                            <pre class="highlight"><code class="language-xml" data-lang="xml">&lt;project&gt;&#x000A;  ...&#x000A;  &lt;dependencyManagement&gt;&#x000A;    &lt;dependencies&gt;&#x000A;      &lt;dependency&gt;&#x000A;        &lt;groupId&gt;org.optaplanner&lt;/groupId&gt;&#x000A;        &lt;artifactId&gt;optaplanner-bom&lt;/artifactId&gt;&#x000A;        &lt;type&gt;pom&lt;/type&gt;&#x000A;        &lt;version&gt;${pom.latest8Final.version}&lt;/version&gt;&#x000A;        &lt;scope&gt;import&lt;/scope&gt;&#x000A;      &lt;/dependency&gt;&#x000A;    &lt;/dependencies&gt;&#x000A;  &lt;/dependencyManagement&gt;&#x000A;  &lt;dependencies&gt;&#x000A;    &lt;dependency&gt;&#x000A;      &lt;groupId&gt;org.optaplanner&lt;/groupId&gt;&#x000A;      &lt;artifactId&gt;optaplanner-core&lt;/artifactId&gt;&#x000A;    &lt;/dependency&gt;&#x000A;    &lt;dependency&gt;&#x000A;      &lt;groupId&gt;org.optaplanner&lt;/groupId&gt;&#x000A;      &lt;artifactId&gt;optaplanner-test&lt;/artifactId&gt;&#x000A;      &lt;scope&gt;test&lt;/scope&gt;&#x000A;    &lt;/dependency&gt;&#x000A;    ...&#x000A;  &lt;/dependencies&gt;&#x000A;&lt;/project&gt;</code></pre>
                        </div>
                    </div>
                </div>
                <div class="sect2">
                    <h4>Gradle</h4>
                    <div class="paragraph">
                        <p>With Gradle, just add the <code>optaplanner-core</code> dependency in your <code>build.gradle</code> to get started:</p>
                    </div>
                    <div class="listingblock">
                        <div class="content">
                            <pre class="highlight"><code class="language-gradle" data-lang="gradle">dependencies {&#x000A;  implementation 'org.optaplanner:optaplanner-core:${pom.latest8Final.version}'&#x000A;}</code></pre>
                        </div>
                    </div>
                </div>
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
        <div class="tab-content p-4 mb-4">
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
                                        <p><a href="${content.rootpath}docs/optaplanner/latest/release-notes/release-notes.html#releaseNotes-${pom.latestFinal.releaseNotesVersion}.x"">Release notes ${pom.latest.releaseNotesVersion}</a> -
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
                        <pre class="highlight"><code class="language-gradle" data-lang="gradle">dependencies {&#x000A;  implementation 'org.optaplanner:optaplanner-core:${pom.latest.version}'&#x000A;}</code></pre>
                    </div>
                </div>
            </div>
        </div>
    </#if>

    <h3 id="NightlySnapshots">Nightly snapshots</h3>
    <p>Nightly snapshots are unstable binaries, built automatically by our CI server.</p>
    <div class="tab-content p-4 mb-4">
        <div class="ulist">
            <ul>
                <li>
                    <p><span class="image"><img src="download.png" alt="Download"></span> <strong><a href="${pom.nightly.distributionZip}">Download OptaPlanner Engine ${pom.nightly.version}</a></strong></p>
                </li>
            </ul>
        </div>
    </div>
    <h2 id="OlderReleases">Older releases</h2>
    <p>For older community releases, check <a href="https://download.jboss.org/optaplanner/release/">the release archive</a>.</p>
</@parent.layout>
</#macro>
