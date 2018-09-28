<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="canhcam-carousel-1">
			<div class="container miracle-title">
				<div class="row">
					<div class="col text-center">
						<h2>
							<xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of>
						</h2>
					</div>
				</div>
			</div>
			<article class="news-list">
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="owl-carousel owl-theme">
								<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</article>
		</section>
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
						<xsl:value-of select="Title"></xsl:value-of></h3>
					<p><xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of></p>
				</figcaption>
			</figure>
		</a>
	</xsl:template>

</xsl:stylesheet>