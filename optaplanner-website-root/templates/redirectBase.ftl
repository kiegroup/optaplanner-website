<!DOCTYPE html>
<html lang="${(content.lang)!"en"}">
<head>
    <meta http-equiv="refresh" content="0; url=${content.redirect_url}" />
    <title>${config.title + " - " + content.title}</title>
</head>
<body>
    <p>This page has moved to: <a href="${content.redirect_url}">${content.redirect_url}</a></p>
</body>
</html>
