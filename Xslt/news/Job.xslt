<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>


	<xsl:template match="Zone">
		<xsl:choose>
			<xsl:when test="position()=1">
				<section class="canhcam-boxes-3">
					<div class="container">
						<div class="row miracle-title text-center">
							<div class="col">
								<h2>
									<xsl:value-of select="/ZoneList/Title"></xsl:value-of>
								</h2>
							</div>
						</div>
						<div class="row justify-content-center">
							<xsl:apply-templates select="News" mode="TuyenDung"></xsl:apply-templates>
						</div>
					</div>
				</section>
			</xsl:when>
			<xsl:when test="position()=2">
				<section class="canhcam-boxes-1">
					<div class="container">
						<div class="row miracle-title text-center">
							<div class="col">
								<h2>
									<xsl:value-of select="Title"></xsl:value-of>
								</h2>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<div class="job-table">
									<xsl:apply-templates select="News" mode="ViTriTuyenDung"></xsl:apply-templates>
								</div>
							</div>
						</div>
					</div>
				</section>
			</xsl:when>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="News" mode="TuyenDung">
		<xsl:if test="position()=1">
			<div class="col-lg-6">
				<div class="img d-none d-lg-block">
					<xsl:attribute name="bg-img">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
				</div>
				<div class="img d-block d-lg-none">
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
			</div>
			<div class="col-lg-6 content">
				<div class="text">
					<p>
						<xsl:value-of select="BriefContent"></xsl:value-of>
					</p>
					<p>
						<xsl:value-of select="FullContent"></xsl:value-of>
					</p>

				</div>
			</div>
		</xsl:if>
	</xsl:template>





	<xsl:template match="News" mode="ViTriTuyenDung">
		<div class="job">
			<div class="job-title row m-0">
				<div class="col-1">
					<p>
						<xsl:if test="position()&lt;10">
							<xsl:text>0</xsl:text>
						</xsl:if>
						<xsl:value-of select="position()"></xsl:value-of>
					</p>
				</div>
				<div class="col-md-9 d-flex">
					<p>
						<xsl:value-of select="Title"></xsl:value-of>
					</p>
					<xsl:if test="floor(ShowOption div 1) mod 2 = 1">
						<span class="badge">Mới</span>
					</xsl:if>
				</div>
				<div class="col-2 d-flex align-items-center">
					<p>
						<xsl:value-of select="CreatedDate"></xsl:value-of>
					</p>
				</div>
			</div>
			<div class="job-content">
				<div class="content">
					<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
					<p>
					<a class="btn btn-primary toggle-apply-form" href="javascript:void(0);">ỨNG TUYỂN NGAY</a></p>
					<div class="career-frame" style="display:none;">
						<iframe class="frame" frameborder="0" width="100%" height="400px">
							<xsl:attribute name="src">
								<xsl:text>/News/JobApplyDialog.aspx?zoneid=</xsl:text>
								<xsl:value-of select="ZoneId" disable-output-escaping="yes"/>
								<xsl:text>&amp;NewsID=</xsl:text>
								<xsl:value-of select="NewsId" disable-output-escaping="yes"/>
							</xsl:attribute>
						</iframe>
					</div>
				</div>
			</div>
			
			
		</div>
	</xsl:template>
</xsl:stylesheet>
