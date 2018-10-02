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
				<a class="item">
					<xsl:attribute name="href">
						<xsl:value-of select="BriefContent"></xsl:value-of>
					</xsl:attribute>
					<figure>
						<div class="boxzoom">
							<div class="zoom-item">
								<img class="img-fluid" src="/Data/Sites/1/skins/default/img/play-btn.png">
								</img>
							</div>
							<img class="img-fluid h-100">
								<xsl:attribute name="src">
									<xsl:value-of select="ImageUrl"></xsl:value-of>
								</xsl:attribute>
							</img>
						</div>
						<figcaption>
							<h3><xsl:value-of select="Title"></xsl:value-of></h3>
						</figcaption>
					</figure>
				</a>
			</div>
		</xsl:if>

		<xsl:if test="position()=2">
			<xsl:text disable-output-escaping="yes">&lt;div class="col-lg-4"&gt;&lt;div class="row"&gt;</xsl:text>
			<div class="col-sm-6 col-lg-12 item-wrap">
				<a class="item">
					<xsl:attribute name="href">
						<xsl:value-of select="BriefContent"></xsl:value-of>
					</xsl:attribute>
					<figure>
						<div class="boxzoom">
							<div class="zoom-item">
								<img class="img-fluid" src="/Data/Sites/1/skins/default/img/play-btn.png">
								</img>
							</div>
							<img class="img-fluid">
								<xsl:attribute name="src">
									<xsl:value-of select="ImageUrl"></xsl:value-of>
								</xsl:attribute>
							</img>
						</div>
						<figcaption>
							<h3>
								<xsl:value-of select="Title"></xsl:value-of>
							</h3>
						</figcaption>
					</figure>
				</a>
			</div>
		</xsl:if>

		<xsl:if test="position()=3">
			<div class="col-sm-6 col-lg-12 item-wrap">
				<div class="item">
					<figure>
						<div class="boxzoom">
							<div class="zoom-item">
								<img class="img-fluid" src="/Data/Sites/1/skins/default/img/play-btn.png">
								</img>
							</div>
							<img class="img-fluid">
								<xsl:attribute name="src">
									<xsl:value-of select="ImageUrl"></xsl:value-of>
								</xsl:attribute>
							</img>
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
							<div class="zoom-item">
								<img class="img-fluid" src="/Data/Sites/1/skins/default/img/play-btn.png">
								</img>
							</div>
							<img class="img-fluid">
								<xsl:attribute name="src">
									<xsl:value-of select="ImageUrl"></xsl:value-of>
								</xsl:attribute>
							</img>
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


	<!-- <xsl:template match="NewsImages">
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
	</xsl:template> -->

</xsl:stylesheet>