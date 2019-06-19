<?xml version='1.0'?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
  xmlns:xml="http://www.w3.org/XML/1998/namespace"
>
<xsl:output method="xml" indent="yes"/>
<xsl:strip-space elements="*"/>

<xsl:template match="/">
<pretext>
<slideshow>
  <title><xsl:value-of select="pretext/book/title"/></title>
  <xsl:if test="pretext/book/subtitle">
    <subtitle><xsl:value-of select="pretext/book/subtitle"/></subtitle>
  </xsl:if>
  <frontmatter>
    <xsl:copy-of select="pretext/book/frontmatter/titlepage"/>
    <!-- TODO support additional slides under title e.g. abstract -->	
  </frontmatter>
  <xsl:for-each select="pretext/book/chapter">
    <section>
      <slide>
        <title><xsl:value-of select="title"/></title>
      </slide>
      <!-- TODO support additional slides under chapter e.g. introduction -->	
    </section>
    <xsl:for-each select="./section">
      <section>
        <slide>
          <title><xsl:value-of select="title"/></title>
        </slide>
        <xsl:for-each select="./*[@slide='single']">
          <slide>
            <xsl:for-each select="./*[self::p or self::me or self::ol or self::ul]">
              <xsl:copy-of select="."/>
            </xsl:for-each>
          </slide>
        </xsl:for-each>
      </section>
    </xsl:for-each>
  </xsl:for-each>
</slideshow>
</pretext>
</xsl:template>

</xsl:stylesheet>
