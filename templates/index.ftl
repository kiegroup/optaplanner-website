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
                <div style="margin-bottom: 10px">
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
                            There&#8217;s no need to input constraints as mathematical equations.
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
                <div style="margin-top: 10px;">
                    <@macros.downloadJumbotron/>
                    <@macros.documentationJumbotron/>
                </div>
            </div>
        </div>
        <div class="jumbotron pagination-centered" style="padding: 10px; margin-bottom: 20px;">
            <ul class="nav nav-justified frontPageCarouselButtons" id="whatIsCarouselButtons">
                <li class="active" data-slide-to="0" data-target="#whatIsCarousel">
                    <a data-toggle="tab" href="#">Video</a>
                </li>
                <li data-slide-to="1" data-target="#whatIsCarousel">
                    <a data-toggle="tab" href="#">Use cases</a>
                </li>
                <li data-slide-to="2" data-target="#whatIsCarousel">
                    <a data-toggle="tab" href="#">Usage</a>
                </li>
                <li data-slide-to="3" data-target="#whatIsCarousel">
                    <a data-toggle="tab" href="#">Integration</a>
                </li>
                <li data-slide-to="4" data-target="#whatIsCarousel">
                    <a data-toggle="tab" href="#">Compatibility</a>
                </li>
                <li data-slide-to="5" data-target="#whatIsCarousel">
                    <a data-toggle="tab" href="#">Scalability</a>
                </li>
            </ul>
            <div class="carousel slide frontPageCarousel" data-interval="false" data-ride="carousel" id="whatIsCarousel" style="background-color: white;">
                <div class="carousel-inner">
                    <div class="item active">
                        <div style="min-width: 800px; min-height: 600px; text-align: center; padding-top: 75px;">
                            <iframe allowfullscreen frameborder="0" height="450" src="https://www.youtube.com/embed/f4jIWbQpjdE?rel=0" width="800"></iframe>
                        </div>
                    </div>
                    <div class="item">
                        <img alt="Use case overview" height="600" src="${content.rootpath}landingPage/useCaseOverview.png" width="800">
                    </div>
                    <div class="item">
                        <img alt="Usage" height="600" src="${content.rootpath}landingPage/inputOutputOverview.png" width="800">
                    </div>
                    <div class="item">
                        <img alt="Integration" height="600" src="${content.rootpath}landingPage/integrationOverview.png" width="800">
                    </div>
                    <div class="item">
                        <img alt="Compatibility" height="600" src="${content.rootpath}landingPage/compatibility.png" width="800">
                    </div>
                    <div class="item">
                        <img alt="Scalability" height="600" src="${content.rootpath}landingPage/scalabilityOfOptimizationAlgorithms.png" width="800">
                    </div>
                </div>
                <a class="left carousel-control" data-slide="prev" href="#whatIsCarousel">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="right carousel-control" data-slide="next" href="#whatIsCarousel">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>
        </div>
        <div class="jumbotron pagination-centered" style="padding: 10px; margin-bottom: 20px;">
            <div style="vertical-align: middle; margin:0 auto; max-width: 600px; padding: 20px;">
                <div class="paragraph">
                    <p>To optimize a problem from Java™ code, add the <code>optaplanner-core</code> jar and call <code>Solver.solve()</code>:</p>
                </div>
                <div class="listingblock">
                    <div class="content">
                        <pre class="highlight"><code class="language-java" data-lang="java">// My domain specific class as input&#x000A;MyRoster problem = ...;&#x000A;&#x000A;SolverFactory&lt;MyRoster&gt; factory = SolverFactory&#x000A;    .createFromXmlResource(".../mySolverConfig.xml");&#x000A;Solver&lt;MyRoster&gt; solver = factory.buildSolver();&#x000A;&#x000A;// My domain specific class as output&#x000A;MyRoster solution = solver.solve(problem);&#x000A;&#x000A;for (MyShift shift : solution.getShifts()) {&#x000A;  // Each shift is now assigned to an employee&#x000A;  assertNotNull(shift.getEmployee());&#x000A;}</code></pre>
                    </div>
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
