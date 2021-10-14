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

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
          integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.4/css/all.min.css"
          integrity="sha256-mUZM63G8m73Mcidfrv5E+Y61y7a12O5mW4ezU3bxqW4=" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/highlightjs/cdn-release@11.2.0/build/styles/default.min.css"
          integrity="sha256-CGf39SzxAmEe09Ojoh16/2xTRNleX9wBZcEXVnNqwSM=" crossorigin="anonymous">
    <link rel="stylesheet" href="${content.rootpath}website/optaplannerWebsite.css">
    <link href="${content.rootpath}favicon.ico" rel="shortcut icon">
</head>

<body>
    <#include "shared/menu.ftl"/>

    <div class="body-without-header-footer">
        <div class="forkMeOnGithub">
            <a href="https://github.com/kiegroup/optaplanner">
                <img alt="Fork me on GitHub" src="${content.rootpath}headerFooter/forkMeOnGithub.png">
            </a>
        </div>
        <div class="container py-4">
        <#nested>
        </div>
    </div>
    <#include "shared/footer.ftl"/>
    <div class="modal fade" id="videoModal" tabindex="-1" aria-labelledby="videoModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title"></h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="ratio ratio-16x9" id="player-container">
                        <#-- iframe filled in dynamically by JavaScript -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"
            integrity="sha256-u7e5khyithlIdTpu22PHhENmPcRdFiHRjhAuHcs05RI=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/gh/highlightjs/cdn-release@11.2.0/build/highlight.min.js"
            integrity="sha256-mfS2sXKEV8eehy39UH7+7BwaoUaIe2TuLO2DXS+c2mI=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/gh/highlightjs/cdn-release@11.2.0/build/languages/asciidoc.min.js"
            integrity="sha256-gnB2LPAmHPkrj3czfog5GdIu4aByzcKeTUzC2agNMzM=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/gh/highlightjs/cdn-release@11.2.0/build/languages/properties.min.js"
            integrity="sha256-1XSLaVD2dn/eCICDUx1DYprsC4UAEa4weDLYY/458wU=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/gh/highlightjs/cdn-release@11.2.0/build/languages/gradle.min.js"
            integrity="sha256-B5HtfGpeJKLSEsoqtAdi6sSJ05K49CTGHZbrBiJ9CwE=" crossorigin="anonymous"></script>
    <script src="${content.rootpath}website/optaplannerWebsite.js"></script>
    <script>
        // Ruby syntax highlighting works pretty well for DRL source code.
        hljs.registerAliases(["drl"], { languageName: "ruby"});
        hljs.highlightAll();
    </script>
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
