<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
        xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">
<#list published_content as content>
    <#if content.uri != "404.html">
    <url>
        <loc>${config.site_host}/${content.uri}</loc>
        <lastmod>${content.date?string("yyyy-MM-dd")}</lastmod>
        <priority>${(content.priority)!(content.type == "post")?then("0.5","0.2")}</priority>
        <changefreq>${(content.change_frequency)!(content.type == "post")?then("yearly","monthly")}</changefreq>
    </url>
    </#if>
</#list>
</urlset>
