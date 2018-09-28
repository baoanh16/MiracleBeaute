<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />


	<xsl:template match="/">
		<div class="container miracle-title text-center">
			<div class="row">
				<div class="col-12">
					<h2>
						<xsl:value-of select="/ZoneList/Title"></xsl:value-of>
					</h2>
				</div>
			</div>
			<div class="row justify-content-center mb-4">
				<ul class="nav nav-pills canhcam-nav-2">
					<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
				</ul>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="Zone">
		<li class="nav-item">
			<a class="nav-link">
				<xsl:if test="IsActive='true'">
					<xsl:attribute name="class">
						<xsl:text>nav-link active</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
</xsl:stylesheet>