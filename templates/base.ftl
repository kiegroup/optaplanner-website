<#macro layout title="" description="" uri="" googleWebmasterToolsVerification=false>
<#assign _title = content.title!title/>
<#-- Description is mandatory because it is very important for SEO. -->
<#assign _description = content.description!
    ((content.type == "post")?then(content.body?replace("<[\\w/][^>]*>", "", "r")?replace("\\s+", " ", "r")?truncate(200, "...")?trim,
    ((description == "")?then(config.errorDescriptionIsMandatory, description))))/>
<#assign _uri = content.uri!uri/>
<!DOCTYPE html>
<html lang="${(content.lang)!"en"}">
<head>
    <#-- Adobe Analytics for Red Hat - DPAL (DTM Property Auto-Loader) - part 1/2 -->
    <script id="dpal" src="https://www.redhat.com/dtm.js" type="text/javascript"></script>
    <#-- Google Analytics for kie team: Global site tag (gtag.js) -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=${config.googleAnalyticsId}"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', '${config.googleAnalyticsId}');
    </script>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
    <meta content="width=device-width, initial-scale=1" name="viewport">
    <title>${config.title + " - " + _title}</title>
    <meta content="${_description}" name="description">
    <meta content="${config.keywords}" name="keywords">
    <link href="${(content.canonical_url)!config.canonicalBaseUrl + "/" + _uri}" rel="canonical">
    <#if googleWebmasterToolsVerification>
    <meta content="${config.googleWebmasterToolsVerificationId}" name="google-site-verification">
    </#if>

    <#-- Social media: make it look good when shared -->
    <meta content="${_title}" property="og:title">
    <meta content="${_description}" property="og:description">
    <meta content="${config.canonicalBaseUrl}/${_uri}" property="og:url">
    <meta content="OptaPlanner" property="og:site_name">
    <meta content="${(content.type == "post")?then("article", "website")}" property="og:type">
    <meta content="${config.canonicalBaseUrl + "/" + ((content.social_media_share_image??)?then(_uri?replace("/[^/]*$", "/", "r") + content.social_media_share_image, "headerFooter/optaPlannerIcon.png"))}" property="og:image">
    <meta content="summary" name="twitter:card">
    <meta content="@OptaPlanner" name="twitter:site">

    <link href="${content.rootpath}website/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${content.rootpath}website/highlight/highlight.css" rel="stylesheet">
    <link href="${content.rootpath}website/optaplannerWebsite.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link href="${content.rootpath}favicon.ico" rel="shortcut icon">
</head>

<body data-spy="scroll" data-target=".bs-docs-sidebar">
    <header class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <a class="button navbar-toggle" data-target="#baseNavigation" data-toggle="collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <a class="navbar-brand" href="${content.rootpath}" style="padding: 10px;">
                    <img alt="OptaPlanner logo" src="${content.rootpath}headerFooter/optaPlannerLogo200px.png">
                </a>
            </div>
            <div class="collapse navbar-collapse" id="baseNavigation">
                <ul class="nav navbar-nav">
                    <li><a href="${content.rootpath}">Home</a></li>
                    <li><a href="${content.rootpath}download/download.html">Download</a></li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Learn <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="${content.rootpath}learn/documentation.html">Documentation</a></li>
                            <li><a href="${content.rootpath}learn/video.html">Videos</a></li>
                            <li><a href="${content.rootpath}learn/slides.html">Slides</a></li>
                            <li><a href="${content.rootpath}learn/training.html">Training</a></li>
                            <li class="divider"></li>
                            <li><a href="${content.rootpath}learn/useCases/index.html">Use cases</a></li>
                            <li><a href="${content.rootpath}compatibility/index.html">Compatibility</a></li>
                            <li><a href="${content.rootpath}learn/testimonialsAndCaseStudies.html">Testimonials and case studies</a></li>
                        </ul>
                    </li>
                    <li><a href="${content.rootpath}community/getHelp.html">Get help</a></li>
                    <li><a href="${content.rootpath}code/sourceCode.html">Source</a></li>
                    <li><a href="${content.rootpath}community/team.html">Team</a></li>
                    <li><a href="${content.rootpath}product/services.html">Services</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li style="padding: 12px 5px"><a aria-label="Star OptaPlanner on GitHub" class="github-button" data-show-count="true" href="https://github.com/kiegroup/optaplanner">Star</a></li>
                    <li style="padding: 12px 5px"><a href="https://twitter.com/OptaPlanner" style="padding: 0" target="_blank" title="Follow OptaPlanner on Twitter"><img alt="T" src="${content.rootpath}headerFooter/twitterLogo.png"></a></li>
                    <li style="padding: 12px 5px"><a href="https://www.facebook.com/OptaPlanner" style="padding: 0" target="_blank" title="Follow OptaPlanner on Facebook"><img alt="Fb" src="${content.rootpath}headerFooter/facebookLogo.png"></a></li>
                    <li style="padding: 12px 5px"><a href="https://www.youtube.com/channel/UCcpkOKpujFlM67D2h0RdaeQ" style="padding: 0" target="_blank" title="OptaPlanner YouTube channel"><img alt="YT" src="${content.rootpath}headerFooter/youtubeLogo.png" style="height: 16px"></a></li>
                </ul>
            </div>
        </div>
    </header>
    <div class="body-without-header-footer">
        <div class="forkMeOnGithub">
            <a href="https://github.com/kiegroup/optaplanner">
                <img alt="Fork me on GitHub" src="${content.rootpath}headerFooter/forkMeOnGithub.png">
            </a>
        </div>
        <div class="container" style="padding-top: 20px;">
        <#nested>
        </div>
    </div>
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <h4>KIE projects</h4>
                    <ul>
                        <li><a href="https://www.drools.org/" target="_blank">Drools rule engine</a></li>
                        <li><a href="https://www.optaplanner.org/" target="_blank">OptaPlanner constraint solver</a></li>
                        <li><a href="https://www.jbpm.org/" target="_blank">jBPM workflow engine</a></li>
                        <li><a href="https://kogito.kie.org/" target="_blank">Kogito Business Automation platform</a></li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <h4>Community</h4>
                    <ul>
                        <li><a href="${content.rootpath}blog/">Blog</a></li>
                        <li><a href="${content.rootpath}community/getHelp.html">Get Help</a></li>
                        <li><a href="${content.rootpath}community/team.html">Team</a></li>
                        <li><a href="${content.rootpath}community/governance.html">Governance</a></li>
                        <li><a href="${content.rootpath}community/research.html">Academic research</a></li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <h4>Code</h4>
                    <ul>
                        <li><a href="${content.rootpath}code/sourceCode.html">Build from source</a></li>
                        <li><a href="${config.issueTracker}">Submit a bug</a></li>
                        <li><a href="${content.rootpath}code/license.html">License (Apache-2.0)</a></li>
                        <li><a href="${content.rootpath}download/releaseNotes/">Release notes</a></li>
                        <li><a href="${content.rootpath}download/upgradeRecipe/">Upgrade recipes</a></li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <div class="sponsorMessage">
                        <span>Sponsored by</span>
                        <br>
                        <a href="https://www.redhat.com/"><img alt="Red Hat" src="${content.rootpath}headerFooter/redHatLogo.png" height="48px" width="164px"></a>
                    </div>
                    <div class="sponsorMessage">
                        <span>More coder content at</span>
                        <br>
                        <a href="https://developers.redhat.com/"><img alt="Red Hat Developers" height="48" src="${content.rootpath}headerFooter/redHatDevelopersLogo.png" width="164"></a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    © Copyright 2006-${published_date?string("yyyy")}, Red Hat, Inc. or third-party contributors
                    -
                    <a href="https://www.redhat.com/en/about/privacy-policy" target="_blank">Privacy statement</a>
                    -
                    <a href="https://www.redhat.com/en/about/terms-use" target="_blank">Terms of use</a>
                    -
                    <a href="${content.rootpath}website/websiteInfo.html">Website info</a>
                </div>
            </div>
        </div>
    </footer>
    <script src="${content.rootpath}website/jquery/jquery.min.js"></script>
    <script src="${content.rootpath}website/bootstrap/js/bootstrap.min.js"></script>
    <script src="${content.rootpath}website/highlight/highlight.js"></script>
    <script src="${content.rootpath}website/optaplannerWebsite.js"></script>
    <script type="text/javascript">hljs.initHighlightingOnLoad();</script>
    <#-- GitHub star script -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
    <#-- Adobe Analytics for Red Hat - DPAL (DTM Property Auto-Loader) - part 2/2 -->
    <script type="text/javascript">
      if (("undefined" !== typeof _satellite) && ("function" === typeof _satellite.pageBottom)) {
        _satellite.pageBottom();
      }
    </script>
</body>
</html>
</#macro>
