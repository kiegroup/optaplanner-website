<#import "normalBase.ftl" as parent>
<#import "macros.ftl" as macros>

<@layout>${content.body}</@layout>

<#macro layout>
<@parent.layout>
    <h1>${content.title}</h1>
    <div class="paragraph summaryParagraph">
        <p><strong>OptaPlanner’s public API classes are backwards compatible</strong> (per series),
            but users often also use impl classes (which are documented in the reference manual too).
            This upgrade recipe <em>minimizes the pain</em> to upgrade your code
            and to take advantage of <a href="${content.rootpath}docs/optaplanner/latest/release-notes/release-notes.html#releaseNotes-8.x">the newest features in OptaPlanner 8</a>.</p>
    </div>
    <div class="row">
        <div class="col-md-7">
            <h2 class="mt-0">Legend</h2>
            <p>Every upgrade note has an indication how likely your code will be affected by that change:</p>
            <ul class="upgrade-recipe-label-list">
                <li>
                    <span class="badge bg-danger label-as-badge">Major</span>
                    Likely to affect your code.
                </li>
                <li>
                    <span class="badge bg-warning label-as-badge">Minor</span>
                    Unlikely to affect your code (especially if you followed the examples), unless you have hacks.
                </li>
                <li>
                    <span class="badge bg-info label-as-badge">Impl detail</span>
                    Will not affect your code, unless you have very deep hacks.
                </li>
                <li>
                    <span class="badge bg-primary label-as-badge">Recommended</span>
                    Not a backward incompatible change, but you probably want to do this.
                </li>
                <li>
                    <span class="badge bg-success label-as-badge">Readme</span>
                    Read this to better understand why the subsequent major changes were made.
                </li>
            </ul>
            <div class="sect1">
                <h2>Upgrade from an older version</h2>
                <p>To upgrade from an older version, first apply <a href="./">the previous upgrade recipes</a>.</p>
            </div>
        </div>
        <div class="col-md-5 mb-4">
            <@macros.productToProjectVersionMapping/>
        </div>
    </div>
    <#nested>
</@parent.layout>
</#macro>
