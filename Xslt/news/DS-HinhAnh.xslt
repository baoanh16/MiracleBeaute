<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<article class="gallery-details">
			<div class="container">
				<div class="row gallery-lists">
					<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
				</div>
			</div>
		</article>
	</xsl:template>

	<xsl:template match="News">
		<xsl:if test="position()=1">
			<div class="col-lg-8 item-wrap top-list">
				<div class="item">
					<figure>
						<div class="boxzoom">
							<div class="d-lg-block">
								<xsl:attribute name="bg-img">
									<xsl:value-of select="ImageUrl"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="alt">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								<img class="img-fluid">
									<xsl:attribute name="src">
										<xsl:value-of select="ImageUrl"></xsl:value-of>
									</xsl:attribute>
									<xsl:attribute name="alt">
										<xsl:value-of select="Title"></xsl:value-of>
									</xsl:attribute>
								</img>
							</div>
						</div>
						<div class="hidden">
							<xsl:if test="count(NewsImages)>1">
								<xsl:apply-templates select="NewsImages">
									<xsl:with-param name="position" select="position()"></xsl:with-param>
								</xsl:apply-templates>
							</xsl:if>
						</div>
						<figcaption>
							<h3>golf-etc EXPANDS REFLECTIVE TECHNOLOGY</h3>
						</figcaption>
					</figure>
				</div>
			</div>
		</xsl:if>

		<xsl:if test="position()=2">
			<xsl:text disable-output-escaping="yes">&lt;div class="col-lg-4"&gt;&lt;div class="row"&gt;</xsl:text>
			<div class="col-sm-6 col-lg-12 item-wrap">
				<div class="item">
					<figure>
						<div class="boxzoom">
							<img class="img-fluid">
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							</img>
						</div>
						<div class="hidden">
							<xsl:if test="count(NewsImages)>1">
								<xsl:apply-templates select="NewsImages">
									<xsl:with-param name="position" select="position()"></xsl:with-param>
								</xsl:apply-templates>
							</xsl:if>
						</div>
						<figcaption>
							<h3>
								<xsl:value-of select="Title"></xsl:value-of>
							</h3>
						</figcaption>
					</figure>
				</div>
			</div>
		</xsl:if>

		<xsl:if test="position()=3">
			<div class="col-sm-6 col-lg-12 item-wrap">
				<div class="item">
					<figure>
						<div class="boxzoom">
							<img class="img-fluid">
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							</img>
						</div>
						<div class="hidden">
							<xsl:if test="count(NewsImages)>1">
								<xsl:apply-templates select="NewsImages">
									<xsl:with-param name="position" select="position()"></xsl:with-param>
								</xsl:apply-templates>
							</xsl:if>
						</div>
						<figcaption>
							<h3>
								<xsl:value-of select="Title"></xsl:value-of>
							</h3>
						</figcaption>
					</figure>
				</div>
			</div>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;&lt;/div&gt;</xsl:text>
		</xsl:if>

		<xsl:if test="position()>3">
			<div class="col-sm-6 col-lg-4 item-wrap">
				<div class="item">
					<figure>
						<div class="boxzoom">
							<img class="img-fluid">
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							</img>
						</div>
						<div class="hidden">
							<xsl:if test="count(NewsImages)>1">
								<xsl:apply-templates select="NewsImages">
									<xsl:with-param name="position" select="position()"></xsl:with-param>
								</xsl:apply-templates>
							</xsl:if>
						</div>
						<figcaption>
							<h3>
								<xsl:value-of select="Title"></xsl:value-of>
							</h3>
						</figcaption>
					</figure>
				</div>
			</div>
		</xsl:if>
	</xsl:template>


	<xsl:template match="NewsImages">
		<xsl:param name="position"></xsl:param>
		<xsl:if test="position()>1">
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<img class="img-fluid">
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
			</a>
		</xsl:if>
	</xsl:template>

</xsl:stylesheet>