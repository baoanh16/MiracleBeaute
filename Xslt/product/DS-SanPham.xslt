<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="row no-gutters ajaxresponsewrap">
			<xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
		</div>
	</xsl:template>

	<xsl:template match="Product">
		<div class="col-6 col-lg-4 item">
			<a class="item-detail">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<figure>
					<div class="img">
						<img class="img-fluid">
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
							<xsl:if test="OldPrice != ''">
								<xsl:value-of select="OldPrice"></xsl:value-of>
							</xsl:if>
							<xsl:if test="Price != ''">
								<xsl:value-of select="Price"></xsl:value-of>
							</xsl:if>
						</p>
						<div class="btn btn-primary">
							<xsl:attribute name="data-productid">
								<xsl:value-of select="ProductId"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of select="/ProductList/ReadNowText"></xsl:value-of>
						</div>
					</figcaption>
				</figure>
			</a>
		</div>
	</xsl:template>
</xsl:stylesheet>