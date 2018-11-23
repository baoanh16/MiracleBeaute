<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="owl-carousel home-sanpham owl-theme">
			<xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
		</div>
	</xsl:template>

	<!-- <xsl:template match="Zone">
		<xsl:if test="position() = 1">
			<xsl:apply-templates select="News"></xsl:apply-templates>
		</xsl:if>
	</xsl:template> -->

	<xsl:template match="Product">
		<div class="item">
			<a class="item-detail">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<figure>
					<div class="img">
						<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
					<figcaption>
						<h3>
							<xsl:value-of select="Code"></xsl:value-of>
							<br></br>
							<xsl:value-of select="Title"></xsl:value-of>
						</h3>
						<p class="price">
							<xsl:value-of select="Price"></xsl:value-of>
						</p>
						<div class="btn btn-primary">
							<xsl:value-of select="/ProductList/ReadNowText"></xsl:value-of>
						</div>
					</figcaption>
				</figure>
			</a>
		</div>
	</xsl:template>
</xsl:stylesheet>
