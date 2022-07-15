<#-- Move into content after https://github.com/jbake-org/jbake/issues/693 -->
<#import "normalBase.ftl" as parent>
<#import "macros.ftl" as macros>

<@layout>${content.body}</@layout>

<#macro layout>
<@parent.layout>
    <h1>${content.title}</h1>
    <p>
        This page mentions <em>active contributors</em>, who have contributed to OptaPlanner in the last year.
        If your name belongs in this list,
        <a href="https://github.com/kiegroup/optaplanner-website/blob/main/data/users.yml">submit a pull request</a>
        with the appropriate changes.
    </p>
    <h2>Research &amp; Development</h2>
    <@listUserBadges userIds=["ge0ffrey", "triceo", "rsynek", "yurloc", "Christopher-Chianelli"]/>
    <h2>Quality Assurance</h2>
    <@listUserBadges userIds=["dupliaka"]/>
    <h2>Marketing and Product Management</h2>
    <@listUserBadges userIds=["ibek", "kmacedovarela", "LightGuard"]/>
    <h2>Documentation</h2>
    <@listUserBadges userIds=["emmurphy1"]/>
    <h2>Build, continuous integration and releases</h2>
    <@listUserBadges userIds=["mbiarnes", "mareknovotny", "emingora", "tradisso"]/>
    <h2>Community contributors</h2>
    <@listUserBadges userIds=["DuncanDoyle", "jucui", "michaltomco", "MusaTalluzi", "gsheldon", "mcimbora", "oskopek", "wmedvede", "snurkabill", "elsam", "fhornain", "rbourner", "tdavid", "bibryam", "mdanter", "blackjack92", "mrietveld", "psiroky", "FredPraca", "taiuti"]/>
    <h2>Upstream Drools team</h2>
    <@listUserBadges userIds=["mariofusco", "etirelli", "mdproctor"]/>
    <p>&hellip; and the rest of the Drools team.</p>
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
