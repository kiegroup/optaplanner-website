<!DOCTYPE html>
<#-- This page must use ${content.rootpath} because it is returned for 404 subdirectory urls too. -->
<html lang="en">
<head>
    <script id="dpal" src="https://www.redhat.com/dtm.js" type="text/javascript"></script>
    <script async src="https://www.googletagmanager.com/gtag/js?id=${config.googleAnalyticsId}"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', '${config.googleAnalyticsId}');
    </script>

    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
    <meta content="width=device-width, initial-scale=1" name="viewport">
    <title>OptaPlanner - 404 Page not found</title>
</head>
<body>
<h1>The requested page does not exist</h1>
<p>
    If this is an issue in www.optaplanner.org,
    <a href="${config.canonicalBaseUrl}/community/getHelp.html">please let us know</a>
    (including the URL which led you here) so we can fix it.
</p>
<p>
    <a href="${config.canonicalBaseUrl}">Return www.optaplanner.org.</a>
</p>
<script type="text/javascript">
  if (("undefined" !== typeof _satellite) && ("function" === typeof _satellite.pageBottom)) {
    _satellite.pageBottom();
  }
</script>
</body>
</html>

