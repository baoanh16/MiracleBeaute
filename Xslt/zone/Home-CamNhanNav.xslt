<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />


	<xsl:template match="/">
		<div class="row">
			<div class="col text-center">
				<h2>
					<xsl:value-of select="/ZoneList/ModuleTitle"></xsl:value-of>
				</h2>
			</div>
		</div>
		<ul class="nav nav-pills canhcam-nav-2">
			<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
		</ul>
	</xsl:template>

	<xsl:template match="Zone">
		<li class="nav-item">
			<a class="nav-link" data-toggle="pill" aria-selected="false">
				<xsl:if test="position()=1">
					<xsl:attribute name="class">
						<xsl:text>nav-link active show</xsl:text>
					</xsl:attribute>

					<xsl:attribute name="aria-selected">
						<xsl:text>true</xsl:text>
					</xsl:attribute>
				</xsl:if>
					
				<xsl:attribute name="id">
					<xsl:text>camnhan-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				
				<xsl:attribute name="href">
					<xsl:text>#camnhan-tab-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
</xsl:stylesheet>