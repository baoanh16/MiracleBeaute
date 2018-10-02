<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="canhcam-boxes-7" bg-img="/Data/Sites/1/skins/default/img/about/bg.png">
			<article>
				<div class="container">
					<div class="row">
						<div class="col-lg-4 nav-about">
							<div class="list-group" data-fix="65" data-fix-type="initial" data-fix-change="sticky">
								<xsl:apply-templates select="/ZoneList/Zone" mode="Tab"></xsl:apply-templates>
							</div>
						</div>

						<div class="col-lg-8">
							<div class="row">
								<xsl:apply-templates select="/ZoneList/Zone" mode="Content"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</article>
		</section>
	</xsl:template>

	<xsl:template match="Zone" mode="Tab">
		<div class="list-group-item">
			<a class="nav-link">
				<xsl:attribute name="data-link">
					<xsl:text>#sec-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
		</div>
	</xsl:template>


	<xsl:template match="Zone" mode="Content">
		<xsl:choose>
			<xsl:when test="position()=1">
				<div class="col-12 sec-1" id="sec-1">
					<div class="content miracle-title">
						<h2 class="text-center">
							<xsl:value-of select="Title"></xsl:value-of>
						</h2>
						<xsl:apply-templates select="News" mode="ZoneNews1"></xsl:apply-templates>
					</div>
				</div>
			</xsl:when>
			<xsl:when test="position()=2">
				<div class="col-12 sec-2" id="sec-2">
					<div class="content miracle-title">
						<h2 class="text-center">
							<xsl:value-of select="Title"></xsl:value-of>
						</h2>
						<xsl:apply-templates select="News" mode="ZoneNews1"></xsl:apply-templates>
					</div>
				</div>
			</xsl:when>
			<xsl:when test="position()=3">
				<div class="col-12 sec-3" id="sec-3">
					<div class="content miracle-title">
						<h2 class="text-center">
							<xsl:value-of select="Title"></xsl:value-of>
						</h2>
						<xsl:apply-templates select="News" mode="ZoneNews1"></xsl:apply-templates>
					</div>
				</div>
			</xsl:when>
			<xsl:when test="position()=4">
				<div class="col-12 sec-4" id="sec-4">
					<div class="content miracle-title">
						<h2 class="text-center">
							<xsl:value-of select="Title"></xsl:value-of>
						</h2>
						<xsl:apply-templates select="News" mode="ZoneNews1"></xsl:apply-templates>
					</div>
				</div>
			</xsl:when>
			<xsl:when test="position()=5">
				<div class="col-12 sec-5" id="sec-5">
					<div class="content miracle-title">
						<h2 class="text-center">
							<xsl:value-of select="Title"></xsl:value-of>
						</h2>
						<xsl:apply-templates select="News" mode="ZoneNews1"></xsl:apply-templates>
					</div>
				</div>
			</xsl:when>
		</xsl:choose>
	</xsl:template>
	
	
	<xsl:template match="News" mode="ZoneNews1">
		<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews2">
		<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews3">
		<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews4">
		<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews5">
		<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>

	<!-- <xsl:template match="NewsList" mode="ZoneNews1News">
		<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template> -->



</xsl:stylesheet>
