<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone" mode="ZoneChild"></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="Zone" mode="ZoneChild">

		<xsl:if test="position() = 2">
			<section class="canhcam-home-3">
				<div class="container miracle-title">
					<div class="row">
						<div class="col text-center">
							<h2>
								<xsl:value-of select="/ZoneList/ModuleTitle"></xsl:value-of>
							</h2>
						</div>
					</div>
					<div class="feeling">
						<ul class="nav nav-pills canhcam-nav-2" id="tab" role="tablist">
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
					<xsl:text>#cntab-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="id">
					<xsl:text>cn-</xsl:text>
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
				<xsl:text>cntab-</xsl:text>
				<xsl:value-of select="position()"></xsl:value-of>
			</xsl:attribute>
			
			<xsl:attribute name="aria-labelledby">
				<xsl:text>#cn-</xsl:text>
				<xsl:value-of select="position()"></xsl:value-of>
			</xsl:attribute>
			<xsl:if test="position() = 1">
				<div class="row justify-content-center">
					<div class="col-md-10">
						<div class="owl-carousel owl-theme review">
							<!-- <xsl:if test="position()=1"> -->
								<xsl:apply-templates select="News" mode="News1"></xsl:apply-templates>
							<!-- </xsl:if> -->
						</div>
					</div>
				</div>
			</xsl:if>
			<xsl:if test="position() = 2">
				<div class="row justify-content-center">
					<div class="col-md-10">
						<div class="owl-carousel owl-theme video">
							<!-- <xsl:if test="position()=1"> -->
								<xsl:apply-templates select="News" mode="News2"></xsl:apply-templates>
							<!-- </xsl:if> -->
						</div>
					</div>
				</div>
			</xsl:if>
		</div>
	</xsl:template>

	<xsl:template match="News" mode="News1">
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
						<a class="btn fancybox" data-fancybox="">
							<xsl:attribute name="href">
								<xsl:text>#fancytext</xsl:text>
								<xsl:value-of select="position()"></xsl:value-of>
							</xsl:attribute>
							<span class="mdi mdi-arrow-right"></span>
							<span>XEM CHI TIẾT</span>
						</a>
					</div>
					<div class="fancy" style="display: none">
						<xsl:attribute name="id">
							<xsl:text>fancytext</xsl:text>
							<xsl:value-of select="position()"></xsl:value-of>
						</xsl:attribute>
						<div class="fancy-img" style="width: 100%; text-align: center">
							<img style="max-width: 250px">
								<xsl:attribute name="src">
									<xsl:value-of select="ImageUrl"></xsl:value-of>
								</xsl:attribute>
							</img>
						</div>
						<div class="fctext" style="text-align: center">
							<h4>
							<xsl:value-of select="Title"></xsl:value-of>
							</h4>
							<p>
							<xsl:value-of select="SubTitle"></xsl:value-of>
							</p>
							<p style="text-align: justify;">
							<xsl:value-of select="BriefContent"></xsl:value-of></p>
						</div>
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


	<xsl:template match="News" mode="News2">
		<div class="item">
			<iframe frameborder="0" allow="autoplay; encrypted-media" allowfullscreen="">
				<xsl:attribute name="src">
					<xsl:value-of select="FullContent"></xsl:value-of>
				</xsl:attribute>
			</iframe>
		</div>
	</xsl:template>

</xsl:stylesheet>
