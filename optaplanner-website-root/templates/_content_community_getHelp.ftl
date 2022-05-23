<#-- Move into content after https://github.com/jbake-org/jbake/issues/693 -->
<#import "normalBase.ftl" as parent>
<#import "macros.ftl" as macros>

<@layout>${content.body}</@layout>

<#macro layout>
<@parent.layout>
    <h1>${content.title}</h1>
    <div class="row row-cols-2 g-4">
        <div class="col">
            <div class="card h-100">
                <div class="card-body d-flex flex-column">
                    <h2 id="_usage_question">Usage question</h2>
                    <p>Our friendly volunteer community regularly answers OptaPlanner questions on StackOverflow.</p>
                    <div class="text-center mb-4">
                        <a class="btn btn-lg btn-primary" href="https://stackoverflow.com/questions/tagged/optaplanner">
                            <i class="fas fa-question-circle"></i>&nbsp;Ask/view questions on StackOverflow
                        </a>
                        <div class="small">
                            Opinionated questions aren’t welcome on StackOverflow,
                            <br>
                            so those belong on our discussion forum below.
                        </div>
                    </div>
                    <p>To get a helpful answer, follow <a href="https://stackoverflow.com/help/how-to-ask">the StackOverflow guidelines</a> such as:</p>
                    <ul>
                        <li>
                            <p>Get to the point. Keep it short.</p>
                        </li>
                        <li>
                            <p>Be crystal clear. Reread your question before posting it.</p>
                        </li>
                        <li>
                            <p>Add relevant technical details: stacktrace, code snippet, &hellip;</p>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="col">
            <div class="card h-100">
                <div class="card-body d-flex flex-column">
                    <h2 id="_create_an_issue">Create an issue</h2>
                    <p>If you’ve found a bug, please open a ticket in our issue tracker <em>with a reproducer</em>:</p>
                    <div class="text-center">
                        <a class="btn btn-secondary" href="${config.issueTracker}">Create an issue in JIRA</a>
                        <div class="small">
                            Do not use our issue tracker for questions.
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col">
            <div class="card h-100">
                <div class="card-body d-flex flex-column">
                    <h2 id="_discussions_and_contributions">Discussions and contributions</h2>
                    <p>If you’re working on a contribution or want to start an opinionated discussion, join our discussion forum
                        or mail directly through <a href="mailto:optaplanner-dev@googlegroups.com">optaplanner-dev@googlegroups.com</a>.</p>
                    <div class="text-center">
                        <a class="btn btn-secondary" href="${config.googleGroupURL}">Start/view discussions on our forum</a>
                        <div class="small">
                            Please don’t cross-post to both our forum and StackOverflow.
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="col">
            <div class="card h-100">
                <div class="card-body d-flex flex-column">
                    <h2 id="_customer_support">Customer support</h2>
                    <p>Red Hat offers support for Red Hat Decision Manager and Red Hat Process Automation Manager. Both enterprise products include OptaPlanner.
                        For a fast and detailed answer, open a support case with Red Hat.</p>
                    <p>Red Hat sponsors this open source project by employing its core developers.
                        They have a dedicated QA and support team around the enterprise version of this project.</p>
                    <div class="text-center">
                        <a class="btn btn-secondary" href="https://access.redhat.com/support/cases/#/case/new">Open a support case</a>
                        <div class="small">
                            This requires <a href="${content.rootpath}product/services.html">a paid support subscription</a>.
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="col">
            <div class="card h-100">
                <div class="card-body d-flex flex-column">
                    <h2 id="_chat">Chat</h2>
                    <p>To follow our development discussions,
                        join the <a href="https://kie.zulipchat.com/#narrow/stream/232679-optaplanner">#optaplanner stream on KIE Zulip</a>.</p>
                </div>
            </div>
        </div>
    </div>
</@parent.layout>
</#macro>
