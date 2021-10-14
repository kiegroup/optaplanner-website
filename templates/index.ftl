<#import "base.ftl" as parent>
<#import "macros.ftl" as macros>

<@layout></@layout>

<#macro layout>
    <@parent.layout
            title="Constraint satisfaction solver (Java™, Open Source)"
            description="OptaPlanner optimizes business resource usage. It is a lightweight, embeddable, open source planning engine, written in 100% Java."
            uri=""
            googleWebmasterToolsVerification=true>
        <div class="row">
            <div class="col-md-7">
                <h1>Solve planning and scheduling problems with OptaPlanner</h1>
                <p><i>An easy-to-use constraint solver with AI algorithms</i></p>
                <div class="d-flex justify-content-center" style="width: auto;">
                    <@macros.videoCard youtubeId="f4jIWbQpjdE" long=false/>
                </div>
            </div>
            <div class="col-md-5">
                <@macros.tryItButton/>
                <@macros.getStartedButton/>
            </div>
        </div>

        <h2 class="mb-2">What can OptaPlanner do?</h2>
        <p>OptaPlanner optimizes plans and schedules with hard and soft constraints.
            It <b>heavily reduces costs</b>, improves <b>service quality</b>, fulfills <b>employee wishes</b>
            and helps to <b>lower carbon emissions</b>.</p>
        <@macros.useCaseCards/>

        <div class="row">
            <div class="col-md-6">
                <h2>Modern mathematical optimization</h2>
                <p>OptaPlanner is <strong>a lightweight, embeddable planning engine</strong>.
                    It enables everyday programmers to solve optimization problems efficiently.
                    Constraints apply on plain domain objects and can call existing code.
                    It is Object Oriented Programming (OOP) and Functional Programming (FP) friendly.
                    There’s no need to input constraints as mathematical equations.</p>
                <span>OptaPlanner supports</span>
                <ul>
                    <li><b>Continuous planning</b> to weekly publish the schedule, 3 weeks before execution</li>
                    <li><b>Non-disruptive replanning</b> for changes to an already published schedule</li>
                    <li><b>Real-time planning</b> to react on real-time disruptions in the plan within milliseconds</li>
                    <li><b>Overconstrained planning</b> when there are too few resources to cover all the work</li>
                    <li><b>Pinning</b> so the user is still in control over the schedule</li>
                </ul>
                <p>Under the hood, OptaPlanner combines sophisticated Artificial Intelligence optimization algorithms
                    (such as Tabu Search, Simulated Annealing, Late Acceptance and other metaheuristics)
                    with very efficient score calculation and other state-of-the-art constraint solving techniques
                    for NP-complete or NP-hard problems.</p>
            </div>
            <div class="col-md-6">
                <h2>Compatibility</h2>
                <span>OptaPlanner works directly from:</span>
                <ul>
                    <li><a href="${content.rootpath}compatibility/java.html">Java<i class="fab fa-java ms-1"></i></a></li>
                    <li><a href="${content.rootpath}compatibility/kotlin.html">Kotlin</a></li>
                    <li><a href="${content.rootpath}compatibility/scala.html">Scala</a></li>
                    <li><a href="${content.rootpath}compatibility/python.html">Python<i class="fab fa-python ms-1"></i> (experimental)</a></li>
                </ul>
                <span>OptaPlanner integrates seamlessly with:</span>
                <ul>
                    <li><a href="${content.rootpath}compatibility/quarkus.html">Quarkus</a></li>
                    <li><a href="${content.rootpath}compatibility/springBoot.html">Spring Boot</a></li>
                </ul>
                <span>For a full <i>Business Automation</i> stack, combine OptaPlanner with:</span>
                <ul>
                    <li>workflows and processes in <a href="https://kogito.kie.org">Kogito</a></li>
                    <li>decision tables and DMN in <a href="https://www.drools.org/">Drools</a></li>
                </ul>
                <p>OptaPlanner is <a href="${content.rootpath}code/license.html">open source software</a>,
                    released under <a href="${content.rootpath}code/license.html">the Apache License</a>.</p>
            </div>
        </div>

        <h2>Code example</h2>
        <div class="row mb-2"><#-- listingblock adds mb-2 too -->
            <div class="paragraph">
                <p>To optimize a problem from Java™ code, add the <code>optaplanner-core</code> jar and call <code>Solver.solve()</code>:</p>
            </div>
            <div class="listingblock">
                <div class="content">
                    <pre class="highlight"><code class="language-java" data-lang="java">SolverFactory&lt;MyRoster&gt; factory = SolverFactory.create(...);&#x000A;&#x000A;// My domain specific class as input&#x000A;MyRoster problem = ...;&#x000A;&#x000A;Solver&lt;MyRoster&gt; solver = factory.buildSolver();&#x000A;// My domain specific class as output&#x000A;MyRoster solution = solver.solve(problem);&#x000A;&#x000A;for (MyShift shift : solution.getShifts()) {&#x000A;    // Each shift is now assigned to an employee&#x000A;    assertNotNull(shift.getEmployee());&#x000A;}</code></pre>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <@macros.latestBlogPosts/>
            </div>
            <div class="col-md-6">
                <@macros.latestVideos/>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <@macros.latestEvents/>
            </div>
            <div class="col-md-4">
                <@macros.latestReleases/>
            </div>
            <div class="col-md-4">
                <@macros.servicesOffer/>
            </div>
        </div>
    </@parent.layout>
</#macro>
