<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="canhcam-home-2">
			<div class="container">
				<div class="miracle-title sub-title bold text-center">
					<h2>
						<xsl:value-of select="/ZoneList/ModuleTitle"></xsl:value-of>
					</h2>
					<h3>
						<xsl:value-of select="/ZoneList/ZonDescription"></xsl:value-of>
					</h3>
				</div>
				<!-- <div class="recover">
					<ul class="nav nav-pills mb-3 canhcam-nav-1" id="tab" role="tablist" data-select="">
						<xsl:apply-templates select="/ZoneList/Zone" mode="ZoneTab1"></xsl:apply-templates>
					</ul>
					<div class="tab-content" id="tabContent">
						<xsl:apply-templates select="/ZoneList/Zone" mode="ZoneContent1"></xsl:apply-templates>
					</div>
				</div> -->
				<div class="recover">
					<xsl:apply-templates select="/ZoneList/Zone" mode="ZoneChild"></xsl:apply-templates>
				</div>
				<div class="w-100"></div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="Zone" mode="ZoneChild">
		<xsl:if test="position()=1">
			<ul class="nav nav-pills mb-3 canhcam-nav-1" id="tab" role="tablist" data-select="">
				<xsl:apply-templates select="Zone" mode="ZoneTab"></xsl:apply-templates>
			</ul>
			<div class="tab-content" id="tabContent">
				<xsl:apply-templates select="Zone" mode="ZoneChild2"></xsl:apply-templates>
			</div>
		</xsl:if>
	</xsl:template>

	<xsl:template match="Zone" mode="ZoneTab">
		<li class="nav-item">
			<a class="nav-link" data-toggle="pill" aria-selected="true">
				<xsl:if test="position()=1">
					<xsl:attribute name="class">
						<xsl:text>nav-link active</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<xsl:attribute name="href">
					<xsl:text>#mbtab-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="id">
					<xsl:text>mb-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
		</li>
	</xsl:template>

	<xsl:template match="Zone" mode="ZoneChild2">
		<xsl:apply-templates select="News"></xsl:apply-templates>
	</xsl:template>
	
	<xsl:template match="News">
		<a class="item">
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="target">
				<xsl:value-of select="Target"></xsl:value-of>
			</xsl:attribute>
			<figure>
				<img class="img-fluid">
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				</img>
				<figcaption>
					<h3>
						<xsl:value-of select="Title"></xsl:value-of>
					</h3>
				</figcaption>
			</figure>
		</a>
	</xsl:template>

</xsl:stylesheet>
