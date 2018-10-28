<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<article class="news-hot">
			<div class="container">
				<div class="row">
					<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
				</div>
			</div>
		</article>
	</xsl:template>


	<xsl:template match="News">
		<xsl:if test="position()=1">
			<xsl:text disable-output-escaping="yes">&lt;div class="col-lg-8 top-list"&gt;</xsl:text>
			<a class="item">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<figure>
					<div class="boxzoom">
						<img class="img-fluid">
						<xsl:attribute name="src">
							<xsl:apply-templates select="NewsImages"></xsl:apply-templates>
							<!-- <xsl:value-of select="ImageUrl"></xsl:value-of> -->
						</xsl:attribute>
						</img>
					</div>
					<figcaption>
						<time>
							<xsl:value-of select="CreatedDate"></xsl:value-of>
						</time>
						<h3>
							<xsl:value-of select="Title"></xsl:value-of>
							<xsl:value-of select="/NewsList/EditLink" disable-output-escaping="yes"></xsl:value-of>
						</h3>
						<p>
							<xsl:value-of select="BriefContent"></xsl:value-of>
						</p>
					</figcaption>
				</figure>
			</a>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
		</xsl:if>


		<xsl:if test="position()=2">
			<xsl:text disable-output-escaping="yes">&lt;div class="col-lg-4 part-list"&gt;&lt;div class="row"&gt;&lt;div class="col-sm-6 col-lg-12"&gt;</xsl:text>
			<a class="item">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<figure>
					<div class="boxzoom">
						<img class="img-fluid">
						<xsl:attribute name="src">
							<xsl:apply-templates select="NewsImages"></xsl:apply-templates>
							<!-- <xsl:value-of select="ImageUrl"></xsl:value-of> -->
						</xsl:attribute>
						</img>
					</div>
					<figcaption>
						<time>
							<xsl:value-of select="CreatedDate"></xsl:value-of>
						</time>
						<h3>
							<xsl:value-of select="Title"></xsl:value-of>
							<xsl:value-of select="/NewsList/EditLink" disable-output-escaping="yes"></xsl:value-of>
						</h3>
					</figcaption>
				</figure>
			</a>
		</xsl:if>


		<xsl:if test="position()=3">
			<a class="item">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<figure>
					<div class="boxzoom">
						<img class="img-fluid">
						<xsl:attribute name="src">
							<xsl:apply-templates select="NewsImages"></xsl:apply-templates>
							<!-- <xsl:value-of select="ImageUrl"></xsl:value-of> -->
						</xsl:attribute>
						</img>
					</div>
					<figcaption>
						<time>
							<xsl:value-of select="CreatedDate"></xsl:value-of>
						</time>
						<h3>
							<xsl:value-of select="Title"></xsl:value-of>
							<xsl:value-of select="/NewsList/EditLink" disable-output-escaping="yes"></xsl:value-of>
						</h3>
					</figcaption>
				</figure>
			</a>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;</xsl:text>
		</xsl:if>





		<xsl:if test="position()>3">
			<div class="col-sm-6 col-lg-4">
				<a class="item">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<figure>
						<div class="boxzoom">
							<img class="img-fluid">
							<xsl:attribute name="src">
							<xsl:apply-templates select="NewsImages"></xsl:apply-templates>
							<!-- <xsl:value-of select="ImageUrl"></xsl:value-of> -->
							</xsl:attribute>
							</img>
						</div>
						<figcaption>
							<time>
								<xsl:value-of select="CreatedDate"></xsl:value-of>
							</time>
							<h3>
								<xsl:value-of select="Title"></xsl:value-of>
								<xsl:value-of select="/NewsList/EditLink" disable-output-escaping="yes"></xsl:value-of>
							</h3>
						</figcaption>
					</figure>
				</a>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="NewsImages">
		<xsl:if test="position()=2">
			<xsl:value-of select="ImageUrl"></xsl:value-of>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>