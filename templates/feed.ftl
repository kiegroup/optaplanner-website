<?xml version="1.0" encoding="utf-8"?>
<feed xml:lang="en-US" xmlns="http://www.w3.org/2005/Atom">
    <id>${config.canonicalBaseUrl}/</id>
    <title>${config.title}</title>
    <updated>${published_date?string("yyyy-MM-dd'T00:00:00+00:00'")}</updated>
    <link href="${config.canonicalBaseUrl}/blog/news.atom" rel="self" type="application/atom+xml" />
    <link href="${config.canonicalBaseUrl}/" rel="alternate" type="text/html" />
    <icon>${config.canonicalBaseUrl}/favicon.ico</icon>
    <logo>${config.canonicalBaseUrl}/headerFooter/optaPlannerLogo200px.png</logo>
    <#list published_posts as post>
        <entry>
            <id>${config.canonicalBaseUrl}/${post.uri}</id>
            <title type="html"><#escape x as x?xml>${post.title}</#escape></title>
            <updated>${post.date?string("yyyy-MM-dd'T00:00:00+00:00'")}</updated>
            <published>${post.date?string("yyyy-MM-dd'T00:00:00+00:00'")}</published>
            <link href="${config.site_host}/${post.uri}" rel="alternate" type="text/html" />
            <author>
                <name>${post.author}</name>
            </author>
            <#if post.tags??>
                <#list post.tags as tag>
                    <category term="${tag}"></category>
                </#list>
            </#if>
            <summary type="html">
                <#escape x as x?xml>${post.body?replace("<[\\w/][^>]*>", "", "r")?replace("\\s+", " ", "r")?truncate(200, "...")}</#escape>
            </summary>
            <content type="html">
                <#escape x as x?xml>${post.body?replace("<img src=\"", "<img src=\"" + config.canonicalBaseUrl + "/" + post.uri?replace("/[^/]+$", "/", "r"))}")</#escape>
            </content>
        </entry>
    </#list>
</feed>
