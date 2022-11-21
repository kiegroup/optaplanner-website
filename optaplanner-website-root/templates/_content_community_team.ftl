<#-- Move into content after https://github.com/jbake-org/jbake/issues/693 -->
<#import "normalBase.ftl" as parent>
<#import "macros.ftl" as macros>

<@layout>${content.body}</@layout>

<#macro layout>
<@parent.layout>
    <h1>${content.title}</h1>
    <p>
        This page mentions <em>core team members</em> currently contributing to OptaPlanner,
        in community or at Red Hat.
    </p>
    <h2>Research &amp; Development</h2>
    <@listUserBadges userIds=["triceo", "rsynek", "yurloc", "Christopher-Chianelli"]/>
    <h2>Quality Assurance</h2>
    <@listUserBadges userIds=["dupliaka"]/>
    <h2>Product Management</h2>
    <@listUserBadges userIds=["ibek"]/>
    <h2>Documentation</h2>
    <@listUserBadges userIds=["emmurphy1"]/>
    <h2>Build, continuous integration and releases</h2>
    <@listUserBadges userIds=["mbiarnes", "mareknovotny", "emingora", "tradisso"]/>

    <h2>Honorable mentions</h2>
    <p>
        Many people have contributed their time to the OptaPlanner project, for which we are grateful.
        You can see their names and their <a href="https://github.com/kiegroup/optaplanner/graphs/contributors">contributions on Github</a>.
        Some past and present contributors, however, deserve special mentions.
    </p>

    <h3>Project creator</h3>
    <@listUserBadges userIds=["ge0ffrey"]/>
    <p>
        Although Geoffrey is no longer with the project,
        we recognize the monumental impact he had in shaping the OptaPlanner project as creator and lead for well over a decade.
    </p>

    <h3>Upstream Drools team</h3>
    <@listUserBadges userIds=["mariofusco", "mdproctor"]/>
    <p>
        &hellip; and the rest of the Drools team.
    </p>
</@parent.layout>
</#macro>


<#macro listUserBadges userIds>
    <ul style="list-style: none">
        <#list userIds as userId>
            <li class="mb-4">
                <@macros.userBadge userId="${userId}" long=true/>
            </li>
        </#list>
    </ul>
</#macro>
