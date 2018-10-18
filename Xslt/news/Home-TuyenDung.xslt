<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />


	<xsl:template match="/">
		<nav class="list-group">
			<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
		</nav>
	</xsl:template>

	<xsl:template match="News">
		<div class="list-group-item">
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="/NewsList/ZoneTuyenDungUrlText"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
		</div>
	</xsl:template>
</xsl:stylesheet>
