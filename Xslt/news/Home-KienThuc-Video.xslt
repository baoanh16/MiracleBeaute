<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="row">
			<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
		</div>
	</xsl:template>

	<xsl:template match="News">
		<div class="col-6 col-md-4 item">
			<div class="item">
				<figure>
					<a data-fancybox="" data-width="992" data-height="480">
						<xsl:attribute name="href">
							<xsl:value-of select="BriefContent"></xsl:value-of>
						</xsl:attribute>
						<div class="play-btn">
							<img src="/Data/Sites/1/skins/default/img/play-btn.png">
							</img>
						</div>
						<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
						</img>
					</a>
					<figcaption>
						<time>
						<xsl:value-of select="CreatedDate"></xsl:value-of></time>
						<h3>
						<xsl:value-of select="Title"></xsl:value-of></h3>
					</figcaption>
				</figure>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
