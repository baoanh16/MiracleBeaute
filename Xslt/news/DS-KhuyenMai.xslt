<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<article class="news-hot">
			<div class="container">
				<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
			</div>
		</article>
	</xsl:template>


	<xsl:template match="News">
		<div class="row no-gutters items">
			<div class="col-lg-7">
				<xsl:attribute name="bg-img">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<img class="img-fluid d-lg-none">
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
			</div>
			<div class="col-lg-5">
				<div class="text">
					<h3 class="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</h3>
					<div class="flag">
						<xsl:value-of select="CreatedDate"></xsl:value-of>
					</div>
					<p class="description">
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</p>
					<div class="view-more">
						<a class="btn">
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of select="/NewsList/ReadNowText"></xsl:value-of>
						</a>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>


</xsl:stylesheet>