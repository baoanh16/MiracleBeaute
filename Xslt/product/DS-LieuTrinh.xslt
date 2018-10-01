<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<!-- <section class="canhcam-lieutrinh-1">
			<div class="container miracle-title text-center"> -->
				<!-- <div class="row">
					<div class="col">
						<h2>
							<xsl:value-of select="/ZoneList/ModuleTitle"></xsl:value-of>
						</h2>
						<p class="description">
							<xsl:value-of select="ZoneDescription"></xsl:value-of>
						</p>
					</div>
				</div> -->

				<div class="container">
					<div class="row ajaxresponsewrap">
						<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
					</div>
				</div>
			<!-- </div>
		</section> -->
	</xsl:template>

	<xsl:template match="Zone">
		<xsl:apply-templates select="Product"></xsl:apply-templates>
	</xsl:template>


	<xsl:template match="Product">
		<div class="col-lg-4 col-sm-6">
			<div class="item">
				<figure>
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
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
					</a>
					<figcaption>
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<h3>
								<xsl:value-of select="Code"></xsl:value-of>
								<br></br>
								<xsl:value-of select="Title"></xsl:value-of>
							</h3>
						</a>
						<p class="price">
								<xsl:if test="OldPrice != ''">
									<xsl:value-of select="OldPrice"></xsl:value-of>
								</xsl:if>
								<xsl:if test="Price != ''">
									<xsl:value-of select="Price"></xsl:value-of>
								</xsl:if>
						</p>
						<a class="btn btn-primary" data-fancybox="book-meeting-1" data-src="#book-meeting-1"
						href="javascript:;">
						<xsl:attribute name="data-fancybox">
							<xsl:text>book-meeting-</xsl:text>
							<xsl:value-of select="position()"></xsl:value-of>
						</xsl:attribute>

						<xsl:attribute name="data-src">
							<xsl:text>#book-meeting-</xsl:text>
							<xsl:value-of select="position()"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of select="/ZoneList/BookNowText"></xsl:value-of>
					</a>
					</figcaption>
				</figure>


				<div class="home-popup modal-form" id="book-meeting-1" style="display: none">
					<xsl:attribute name="id">
						<xsl:text>book-meeting-</xsl:text>
						<xsl:value-of select="position()"></xsl:value-of>
					</xsl:attribute>
					<h4>Đặt lịch hẹn ngay</h4>
					<div>
						<div class="form-group">
							<label class="label" for="name">Tên</label>
							<input class="form-control" name="name" placeholder="Tên"></input>
						</div>
						<div class="form-group">
							<label class="label" for="phone">Số điện thoại</label>
							<input class="form-control" name="phone" placeholder="Số điện thoại"></input>
						</div>
						<div class="form-group">
							<label class="label" for="email">Email</label>
							<input class="form-control" name="email" type="email" placeholder="Email"></input>
						</div>
						<div class="form-group">
							<label class="label" for="date">Ngày hẹn</label>
							<input class="form-control datepicker" name="date" type="date" value="2018-07-26"></input>
						</div>
						<div class="form-group">
							<button class="btn btn-primary" type="submit">Đăng ký</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
