<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="canhcam-home-1">
			<div class="container miracle-title">
				<div class="row">
					<div class="col text-center">
						<h2>
						<xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of></h2>
					</div>
				</div>
			</div>
			<article class="procedure">
				<div class="container">
					<div class="row">
						<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
					</div>
				</div>
			</article>
		</section>
	</xsl:template>


	<xsl:template match="News">
		<xsl:if test="position() = 1">
			<div class="col-lg-4 cam-ket">
				<div class="text" bg-img="/Data/Sites/1/skins/default/img/home/home-bg-1.png">
					<h3>
						<xsl:value-of select="Title"></xsl:value-of>
					</h3>
					<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</div>
		</xsl:if>


		<xsl:if test="position() = 2">
			<div class="col-lg-8 procedure-step">
				<div class="text">
					<h3>01</h3>
					<h4>
						<xsl:value-of select="Title"></xsl:value-of>
					</h4>
					<div class="row">
						<div class="col-12 col-sm-6 mb-4 mb-sm-0">
							<p>
								<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
							</p>
							<a class="btn btn-primary" data-fancybox="send-info" data-src="#send-info" href="javascript:;"> <span class="mdi mdi-file-document"></span>Gửi
								thông tin về làn da</a>
							<!-- <div class="home-popup modal-form" id="send-info" style="display: none">
								<h4>Gửi thông tin về làn da</h4>
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
										<label class="label" for="content">Nội dung</label>
										<textarea class="form-control datepicker" name="content" placeholder="Nội dung" rows="3"></textarea>
									</div>
									<div class="form-group">
										<button class="btn btn-primary" type="submit">Đăng ký</button>
									</div>
								</div>
							</div> -->
						</div>
						<div class="col-12 col-sm-6">
							<p>
								<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
							</p><a class="btn btn-primary" data-fancybox="book-meeting" data-src="#book-meeting" href="javascript:;"> <span
								 class="mdi mdi-tooltip-edit"></span>Đặt lịch hẹn ngay</a>
							<!-- <div class="home-popup modal-form" id="book-meeting" style="display: none">
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
							</div> -->
						</div>
					</div>
				</div>
			</div>
		</xsl:if>

		<xsl:if test="position() > 2">
			<div class="col-lg-6 procedure-step">
				<div class="text">
					<h3>
						<xsl:text>0</xsl:text>
						<xsl:value-of select="position()-1"></xsl:value-of>
					</h3>
					<h4>
						<xsl:value-of select="Title"></xsl:value-of>
					</h4>
					<p>
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</div>
			</div>
		</xsl:if>

	</xsl:template>

</xsl:stylesheet>
