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
			<div class="row">
				<div class="col-lg-4 offset-lg-2 col-md-6 offset-md-0 col-sm-9 offset-sm-3 d-flex align-items-center order-2 order-md-1">
					<div class="text">
						<p class="first">
							<xsl:value-of select="SubTitle"></xsl:value-of>
						</p>
						<h4 class="name">
							<xsl:value-of select="Title"></xsl:value-of>
						</h4>
						<p class="quote">
							<xsl:value-of select="BriefContent"></xsl:value-of>
						</p>
						<a class="btn fancybox">
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<span class="mdi mdi-arrow-right"></span>
							<span>XEM CHI TIẾT</span>
						</a>
					</div>
				</div>
				<div class="col-md-6 order-1 order-md-2">
					<div class="img">
						<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
						</img>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>
