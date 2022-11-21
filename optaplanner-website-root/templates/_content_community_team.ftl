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
    <@listUserBadges userIds=["triceo", "ge0ffrey", "rsynek", "yurloc", "Christopher-Chianelli"]/>
    <h2>Quality Assurance</h2>
    <@listUserBadges userIds=["dupliaka"]/>
    <h2>Product Management</h2>
    <@listUserBadges userIds=["ibek"]/>
    <h2>Documentation</h2>
    <@listUserBadges userIds=["emmurphy1"]/>
    <h2>Build, continuous integration and releases</h2>
    <@listUserBadges userIds=["mbiarnes", "mareknovotny", "emingora", "tradisso"]/>
    <h2>Upstream Drools team</h2>
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
