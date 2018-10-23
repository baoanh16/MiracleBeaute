<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="row justify-content-center">
			<div class="col-10">
				<div class="owl-carousel review">
					<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
				</div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="News">
		<div class="item">
			<iframe frameborder="0" allow="autoplay; encrypted-media" allowfullscreen="">
				<xsl:attribute name="src">
					<xsl:value-of select="BriefContent"></xsl:value-of>
				</xsl:attribute>
			</iframe>
		</div>
	</xsl:template>

</xsl:stylesheet>
