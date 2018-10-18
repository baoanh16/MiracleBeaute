<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="canhcam-boxes-6">
			<div class="container miracle-title">
				<div class="row">
					<div class="col text-center">
						<h2>
							<xsl:value-of select="/ZoneList/ModuleTitle"></xsl:value-of>
						</h2>
					</div>
				</div>
			</div>
			<article class="procedure">
				<div class="container">
					<div class="row">
						<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
					</div>
				</div>
			</article>
		</section>
	</xsl:template>


	<xsl:template match="Zone">
		<xsl:apply-templates select="News"></xsl:apply-templates>
	</xsl:template>


	<xsl:template match="News">
		<xsl:if test="position() = 1">
			<div class="col-lg-4 cam-ket">
				<div class="text" bg-img="/Data/Sites/1/skins/default/img/qt-tuvan/q_2.png">
					<h3>
						<xsl:value-of select="Title"></xsl:value-of>
					</h3>
					<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</div>
		</xsl:if>

		<xsl:if test="position() = 2">
			<div class="col-lg-8 procedure-step">
				<div class="text">
					<h3>
						<xsl:text>01</xsl:text>
					</h3>
					<h4>
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</h4>
					<div class="row">
						<div class="col-12 col-sm-6 mb-4 mb-sm-0">
							<p>
								<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
							</p>
							<a class="btn btn-primary" data-fancybox="send-info" data-src="#send-info" href="javascript:;">
								<span class="mdi mdi-file-document"></span>
								Gửi thông tin về làn da
							</a>
						</div>
						<div class="col-12 col-sm-6">
							<p>
								<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
							</p>
							<a class="btn btn-primary" data-fancybox="book-meeting" data-src="#book-meeting" href="javascript:;"> <span class="mdi mdi-tooltip-edit"></span>
								Đặt lịch hẹn ngay
							</a>
						</div>
					</div>
					</div>
			</div>
		</xsl:if>

		<xsl:if test="position() > 2">
				<div class="col-lg-8 offset-lg-4 procedure-step">
					<div class="text">
						<h3>
							<xsl:text>0</xsl:text>
							<xsl:value-of select="position() - 1"></xsl:value-of>
						</h3>
						<h4>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h4>
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
						<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</div>
		</xsl:if>
	</xsl:template>

</xsl:stylesheet>
