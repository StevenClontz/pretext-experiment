<?xml version='1.0'?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
    xmlns:xml="http://www.w3.org/XML/1998/namespace"
>

<xsl:template match="/">
<pretext>


<slideshow>
<title><xsl:value-of select="pretext/book/title"/></title>
<xsl:if test="pretext/book/subtitle">
  <subtitle><xsl:value-of select="pretext/book/subtitle"/></subtitle>
</xsl:if>
<frontmatter>
<titlepage><xml:value-of select="pretext/book/frontmatter/titlepage"/></titlepage>
<!-- TODO support additional slides under title e.g. abstract -->	
</frontmatter>

<xsl:for-each select="pretext/book/chapter">
<section>
<slide>
<title><xsl:value-of select="title"/></title>
    <ul>
      <li><p>One item</p></li>
      <li><p>Another item</p></li>
      <li><p>A really long item which is really far too long to be an item in a talk. Points should really be only a single line unless they are really important.</p></li>
    </ul>
	</slide>

  <slide>
    <title>A second slide here</title>
    <p>
      Words and stuff
    </p>
    <ul>
      <subslide>
      <li><p>First thing</p></li>
      <li><p>Also a first thing</p></li>
      </subslide>
      <subslide>
      <li><p>Second thing</p></li>
    </subslide>
      <subslide>
      <li><p>Third thing</p></li>
    </subslide>
  </ul>
  </slide>

  <slide>
    <title>Put stuff next to other stuff</title>
    <sidebyside width="40%">
    <p>
      <img src="figs/client0.png" width="90%px"/>
    </p>
    <p>Thing two
      <ul>
        <li><p>a bit of this.</p></li>
        <li><p>a bit of that.</p></li>
        <li><p>a bit of the other.</p></li>
        <li><p>and yet more bit.</p></li>
      </ul>
    </p>

    </sidebyside>
  </slide>

</section>
</xsl:for-each>
</slideshow>

</pretext>
</xsl:template>

</xsl:stylesheet>
