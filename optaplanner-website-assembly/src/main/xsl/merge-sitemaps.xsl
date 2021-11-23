<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

  <xsl:param name="docsSitemap"/>

  <xsl:template match="/">
    <urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">
      <xsl:copy-of select="/*/*"/>
      <xsl:copy-of select="document(concat('file:///', $docsSitemap))/*/*"/>
    </urlset>
  </xsl:template>
</xsl:stylesheet>
