<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone" mode="ZoneChild"></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="Zone" mode="ZoneChild">
		<xsl:if test="position() = 3">
			<section class="canhcam-home-4">
				<div class="container miracle-title">
					<div class="row">
						<div class="col text-center">
							<h2>
								<xsl:value-of select="/ZoneList/ModuleTitle"></xsl:value-of>
							</h2>
						</div>
					</div>
					<div class="knowledge">
						<ul class="nav nav-pills canhcam-nav-2" id="tab" role="tablist" data-select="">
							<xsl:apply-templates select="Zone" mode="ZoneTab"></xsl:apply-templates>
						</ul>
						<div class="tab-content" id="tabContent">
							<xsl:apply-templates select="Zone" mode="ZoneContent"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>
	</xsl:template>

	<xsl:template match="Zone" mode="ZoneTab">
		<li class="nav-item">
			<a class="nav-link" data-toggle="pill" aria-selected="true">
				<xsl:if test="position()=1">
					<xsl:attribute name="class">
						<xsl:text>nav-link active</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<xsl:attribute name="href">
					<xsl:text>#kttab-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="id">
					<xsl:text>kt-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
		</li>
	</xsl:template>

	<xsl:template match="Zone" mode="ZoneContent">

		<div class="tab-pane fade" role="tabpanel">
			<xsl:if test="position()=1">
				<xsl:attribute name="class">
					<xsl:text>tab-pane fade show active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			
			<xsl:attribute name="id">
				<xsl:text>kttab-</xsl:text>
				<xsl:value-of select="position()"></xsl:value-of>
			</xsl:attribute>
			
			<xsl:attribute name="aria-labelledby">
				<xsl:text>#kt-</xsl:text>
				<xsl:value-of select="position()"></xsl:value-of>
			</xsl:attribute>
			<xsl:if test="position() = 1">
				<div class="row justify-content-center">
					<!-- <div class="col-10">
						<div class="owl-carousel owl-theme review"> -->
							<!-- <xsl:if test="position()=1"> -->
								<xsl:apply-templates select="News" mode="News1"></xsl:apply-templates>
							<!-- </xsl:if> -->
						<!-- </div>
					</div> -->
				</div>
			</xsl:if>
			<xsl:if test="position() = 2">
				<div class="row justify-content-center">
					<!-- <div class="col-10">
						<div class="owl-carousel owl-theme video"> -->
							<!-- <xsl:if test="position()=1"> -->
								<xsl:apply-templates select="News" mode="News2"></xsl:apply-templates>
							<!-- </xsl:if> -->
						<!-- </div>
					</div> -->
				</div>
			</xsl:if>
		</div>
	</xsl:template>

	<xsl:template match="News" mode="News1">
		<div class="col-md-4">
			<a class="item">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<figure>
				<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
				</img>
					<figcaption>
						<time>
						<xsl:value-of select="CreatedDate"></xsl:value-of></time>
						<h3>
						<xsl:value-of select="Title"></xsl:value-of></h3>
						<p>
						<xsl:value-of select="BriefContent"></xsl:value-of></p>
					</figcaption>
				</figure>
			</a>
		</div>
	</xsl:template>


	<xsl:template match="News" mode="News2">
		<div class="col-md-4 item">
			<div class="item">
				<figure>
					<a data-fancybox="" data-width="992" data-height="480">
						<xsl:attribute name="href">
							<xsl:value-of select="FullContent"></xsl:value-of>
						</xsl:attribute>
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
