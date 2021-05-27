<#-- Move into content after https://github.com/jbake-org/jbake/issues/693 -->
<#import "normalBase.ftl" as parent>
<#import "macros.ftl" as macros>

<@layout>${content.body}</@layout>

<#macro layout>
<@parent.layout>
    <h1>${content.title}</h1>
    <div class="row">
        <div class="col-md-7">
            <div class="sect1">
                <h2 id="_usage_question">Usage question</h2>
                <div class="sectionbody">
                    <div class="paragraph">
                        <p>Our friendly volunteer community regularly answers OptaPlanner questions on StackOverflow.</p>
                    </div>
                </div>
            </div>
            <div class="text-center" style="margin-bottom: 10px"><a class="btn btn-lg btn-success versionedButton" href="https://stackoverflow.com/questions/tagged/optaplanner"><img alt="Question" src="question.png">
                    <div>
                        <span>Ask/view questions on StackOverflow</span>
                    </div></a>
                <div class="small">
                    Opinionated questions aren't welcome on StackOverflow,
                    <br>
                    so those belong on our discussion forum below.
                </div></div>
            <div class="paragraph">
                <p>To get a helpful answer, follow <a href="https://stackoverflow.com/help/how-to-ask">the StackOverflow guidelines</a> such as:</p>
            </div>
            <div class="ulist">
                <ul>
                    <li>
                        <p>Get to the point. Keep it short.</p>
                    </li>
                    <li>
                        <p>Be crystal clear. Reread your question before posting it.</p>
                    </li>
                    <li>
                        <p>Add relevant technical details: stacktrace, code snippet, &#8230;&#8203;</p>
                    </li>
                </ul>
            </div>
        </div>
        <div class="col-md-5">
            <div class="sect1">
                <h2 id="_create_an_issue">Create an issue</h2>
                <div class="sectionbody">
                    <div class="paragraph">
                        <p>If you&#8217;ve found a bug,
                            please open a ticket in our issue tracker <em>with a reproducer</em>:</p>
                    </div>
                </div>
            </div>
            <div class="text-center"><a class="btn btn-default versionedButton" href="${config.issueTracker}"><div>
                        <span>Create an issue in JIRA</span>
                    </div></a>
                <div class="small">
                    Do not use our issue tracker for questions.
                </div></div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-7">
            <div class="sect1">
                <h2 id="_discussions_and_contributions">Discussions and contributions</h2>
                <div class="sectionbody">
                    <div class="paragraph">
                        <p>If you&#8217;re working on a contribution or want to start an opinionated discussion, join our discussion forum
                            or mail directly through <a href="mailto:optaplanner-dev@googlegroups.com">optaplanner-dev@googlegroups.com</a>.</p>
                    </div>
                </div>
            </div>
            <div class="text-center"><a class="btn btn-default versionedButton" href="${config.googleGroupURL}"><div>
                        <span>Start/view discussions on our forum</span>
                    </div></a>
                <div class="small">
                    Please don't cross post to both our forum and StackOverflow.
                </div></div>
        </div>
        <div class="col-md-5">
            <div class="panel panel-default">
                <div class="panel-body" style="padding-top: 0">
                    <div class="sect1">
                        <h2 id="_customer_support">Customer support</h2>
                        <div class="sectionbody">
                            <div class="paragraph">
                                <p>Red Hat offers support for Red Hat Decision Manager and Red Hat Process Automation Manager. Both enterprise products include OptaPlanner. For a fast and detailed answer, open a support case with Red Hat.</p>
                            </div>
                            <div class="paragraph">
                                <p>Red Hat sponsors this open source project by employing its core developers.
                                    They have a dedicated QA and support team around the enterprise version of this project.</p>
                            </div>
                        </div>
                    </div>
                    <div class="text-center"><a class="btn btn-default versionedButton" href="https://access.redhat.com/support/cases/#/case/new"><div>
                                <span>Open a support case</span>
                            </div></a>
                        <div class="small">
                            <div class="paragraph">
                                <p>This requires <a href="${content.rootpath}product/services.html">a paid support subscription</a>.</p>
                            </div>
                        </div></div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="sect1">
            <h2 id="_chat">Chat</h2>
            <div class="sectionbody">
                <div class="paragraph">
                    <p>To follow our development discussions,
                        join the <a href="https://kie.zulipchat.com/#narrow/stream/232679-optaplanner">#optaplanner stream on KIE Zulip</a>.</p>
                </div>
            </div>
        </div>
    </div>
</@parent.layout>
</#macro>
