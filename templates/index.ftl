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
            <div class="col-md-7 mb-4">
                <div>
                    <h1>What is OptaPlanner?</h1>
                    <div class="paragraph">
                        <p>OptaPlanner is <strong>an AI constraint solver.</strong>
                            It optimizes planning and scheduling problems,
                            such as <a href="${content.rootpath}learn/useCases/vehicleRoutingProblem.html">the Vehicle Routing Problem</a>,
                            <a href="${content.rootpath}learn/useCases/employeeRostering.html">Employee Rostering</a>,
                            <a href="${content.rootpath}learn/useCases/maintenanceScheduling.html">Maintenance Scheduling</a>,
                            <a href="${content.rootpath}learn/useCases/taskAssignmentOptimization.html">Task Assignment</a>,
                            <a href="${content.rootpath}learn/useCases/schoolTimetabling.html">School Timetabling</a>,
                            <a href="${content.rootpath}learn/useCases/cloudOptimization.html">Cloud Optimization</a>,
                            <a href="${content.rootpath}learn/useCases/conferenceScheduling.html">Conference Scheduling</a>,
                            Job Shop Scheduling, Bin Packing
                            and <a href="${content.rootpath}learn/useCases/">many more</a>.
                            Every organization faces such challenges:
                            assign a limited set of <em>constrained</em> resources (employees, assets, time and/or money)
                            to provide products or services.
                            OptaPlanner delivers more efficient plans, which reduce costs and improve service quality.</p>
                    </div>
                    <div class="paragraph">
                        <p>OptaPlanner is <strong>a lightweight, embeddable planning engine</strong>.
                            It enables everyday <a href="${content.rootpath}compatibility/java.html">Java</a> programmers to solve optimization problems efficiently.
                            It is also compatible with other JVM languages (such as <a href="${content.rootpath}compatibility/kotlin.html">Kotlin</a> and <a href="${content.rootpath}compatibility/scala.html">Scala</a>).
                            Constraints apply on plain domain objects and can call existing code.
                            There’s no need to input constraints as mathematical equations.
                            Under the hood, OptaPlanner combines sophisticated Artificial Intelligence optimization algorithms
                            (such as Tabu Search, Simulated Annealing, Late Acceptance and other metaheuristics)
                            with very efficient score calculation and other state-of-the-art constraint solving techniques.</p>
                    </div>
                    <div class="paragraph">
                        <p>OptaPlanner is <strong>open source software</strong>, released under <a href="${content.rootpath}code/license.html">the Apache License</a>.
                            It is written in 100% pure Java™, runs on any JVM and is available in <a href="${content.rootpath}download/download.html">the Maven Central repository</a> too.
                            It works with <a href="${content.rootpath}compatibility/quarkus.html">Quarkus</a> and <a href="${content.rootpath}compatibility/springBoot.html">Spring Boot</a>.</p>
                    </div>
                </div>
                <@macros.flags/>
            </div>
            <div class="col-md-5">
                <@macros.tryItButton/>
                <@macros.getStartedButton/>
            </div>
        </div>

        <div class="row mb-4">
            <div id="frontPageCarousel" class="carousel carousel-dark" data-bs-ride="carousel" data-bs-interval="false">
                <div class="carousel-inner" style="max-height: 600px;">
                    <div class="carousel-item active">
                        <iframe allowfullscreen frameborder="0" height="600" width="800" src="https://www.youtube.com/embed/f4jIWbQpjdE?rel=0"></iframe>
                    </div>
                    <div class="carousel-item">
                        <img alt="Use case overview" src="${content.rootpath}landingPage/useCaseOverview.png">
                    </div>
                    <div class="carousel-item">
                        <img alt="Usage" src="${content.rootpath}landingPage/inputOutputOverview.png">
                    </div>
                    <div class="carousel-item">
                        <img alt="Integration" src="${content.rootpath}landingPage/integrationOverview.png">
                    </div>
                    <div class="carousel-item">
                        <img alt="Compatibility" src="${content.rootpath}landingPage/compatibility.png">
                    </div>
                    <div class="carousel-item">
                        <img alt="Scalability" src="${content.rootpath}landingPage/scalabilityOfOptimizationAlgorithms.png">
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#frontPageCarousel" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#frontPageCarousel" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>

        <div class="row mb-2"><#-- listingblock adds mb-2 too -->
            <div class="paragraph">
                <p>To optimize a problem from Java™ code, add the <code>optaplanner-core</code> jar and call <code>Solver.solve()</code>:</p>
            </div>
            <div class="listingblock">
                <div class="content">
                    <pre class="highlight"><code class="language-java" data-lang="java">// My domain specific class as input&#x000A;MyRoster problem = ...;&#x000A;&#x000A;SolverFactory&lt;MyRoster&gt; factory = SolverFactory&#x000A;    .createFromXmlResource(".../mySolverConfig.xml");&#x000A;Solver&lt;MyRoster&gt; solver = factory.buildSolver();&#x000A;&#x000A;// My domain specific class as output&#x000A;MyRoster solution = solver.solve(problem);&#x000A;&#x000A;for (MyShift shift : solution.getShifts()) {&#x000A;  // Each shift is now assigned to an employee&#x000A;  assertNotNull(shift.getEmployee());&#x000A;}</code></pre>
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
