<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes" />
<xsl:template match="/">
<xsl:apply-templates select="/ZoneList/Zone"/>
</xsl:template>
<xsl:template match="Zone">
<xsl:if test="count(Product)>0">
<section class="canhcam-carousel-5">
	<xsl:if test="position()>2">
	<xsl:attribute name="class">
	<xsl:text>canhcam-carousel-6</xsl:text>
	</xsl:attribute>
	</xsl:if>
	<article class="news-list">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 mb-4 mb-lg-0">
					<div class="box miracle-title text-center py-3 py-lg-0">
						<div class="num">
							<p><xsl:text>0</xsl:text><xsl:value-of select="position() -1"/></p>
						</div>
						<div class="title">
							<h2><xsl:value-of select="Title"/></h2>
						</div>
					</div>
				</div>
				<div class="col-lg-9">
					<div class="owl-carousel owl-theme">
						<xsl:apply-templates select="Product"/>
					</div>
				</div>
			</div>
		</div>
	</article>
</section>
</xsl:if>
</xsl:template>
<xsl:template match="Product">
<div class="item">
	<a class="item-detail" href="product-detail.html">
		<xsl:attribute name="href">
		<xsl:value-of select="Url"></xsl:value-of>
		</xsl:attribute>
		<xsl:attribute name="target">
		<xsl:value-of select="Target"></xsl:value-of>
		</xsl:attribute>
		<xsl:attribute name="title">
		<xsl:value-of select="Title"></xsl:value-of>
		</xsl:attribute>
		<figure>
			<div class="img">
				<img src="./img/product/product-1.jpg" alt="">
				<xsl:attribute name="src">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
				<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>
			</div>
			<figcaption>
			<h2>
			<xsl:value-of select="Code"/>
			<br/>
			<xsl:value-of select="Title"/>
			</h2>
			<p class="price">
			<xsl:value-of select="Price"/></p>
			<div class="btn btn-primary">XEM NGAY</div>
			</figcaption>
		</figure>
	</a>
</div>
</xsl:template>
</xsl:stylesheet>
