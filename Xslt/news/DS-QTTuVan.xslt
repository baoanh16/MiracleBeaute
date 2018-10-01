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
					<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
				</div>
			</article>
		</section>
	</xsl:template>


	<xsl:template match="Zone">
		<xsl:apply-templates select="News"></xsl:apply-templates>
	</xsl:template>


	<xsl:template match="News">
		<xsl:if test="position() = 1">
			<div class="row">
				<div class="col-lg-4 cam-ket pr-lg-0">
					<div class="text" bg-img="/Data/Sites/1/skins/default/img/qt-tuvan/q_1.png">
						<h3>
							<xsl:value-of select="Title"></xsl:value-of>
						</h3>
					</div>
				</div>
				<div class="col-lg-8 cam-ket">
					<div class="text" bg-img="/Data/Sites/1/skins/default/img/qt-tuvan/q_2.png">
						<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</div>
			</div>
		</xsl:if>

		<xsl:if test="position() = 2">
			<div class="row">
				<div class="col-lg-4 procedure-step pr-lg-0">
					<div class="text">
						<xsl:attribute name="bg-img">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<h3>
							<xsl:text>01</xsl:text>
						</h3>
						<h4>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h4>
					</div>
				</div>
				<div class="col-lg-8 procedure-step">
					<div class="text">
						<div class="row">
							<div class="col-12 col-sm-6 mb-4 mb-sm-0">
								<p>
									<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
								</p>
								<a class="btn btn-primary" data-fancybox="send-info" data-src="#send-info" href="javascript:;">
									<span class="mdi mdi-file-document"></span>Gửi thông tin về làn da</a>
								<div class="home-popup modal-form" id="send-info" style="display: none">
									<h4>Đặt lịch tư vấn trực tiếp</h4>
									<div class="row">
										<div class="form-group col-md-6">
											<label class="label" for="name">Tên(*)</label>
											<input class="form-control" name="name"></input>
										</div>
										<div class="form-group col-md-6">
											<label class="label" for="phone">Số điện thoại(*)</label>
											<input class="form-control" name="phone"></input>
										</div>
										<div class="form-group col-md-6">
											<label class="label" for="email">Email</label>
											<input class="form-control" name="email" type="email"></input>
										</div>
										<div class="form-group col-md-6">
											<label class="label" for="phone">Ngày hẹn(*)</label>
											<input class="form-control" name="phone"></input>
										</div>
										<div class="form-group col-12">
											<label class="label" for="content">Bạn cảm nhận như thế nào về làn da hiện tại?</label>
											<textarea class="form-control" name="content" rows="2"></textarea>
										</div>
										<div class="form-group col-12">
											<label class="label" for="content">Kể tên các sản phẩm bạn đang sử dụng (nếu có)</label>
											<textarea class="form-control" name="content" rows="2"></textarea>
										</div>
										<div class="form-group col-12">
											<label class="label" for="content">Bạn mong muốn chúng tôi cải thiện điều gì trên làn da hiện tại</label>
											<textarea class="form-control" name="content" rows="2"></textarea>
										</div>
										<div class="form-group col-auto mx-auto">
											<button class="btn btn-primary" type="submit">Đăng ký</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-12 col-sm-6">
								<p>
									<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
								</p>
								<a class="btn btn-primary" data-fancybox="book-meeting" data-src="#book-meeting" href="javascript:;"> <span
									 class="mdi mdi-tooltip-edit"></span>Đặt lịch hẹn ngay</a>
								<div class="home-popup modal-form" id="book-meeting" style="display: none; max-width: 500px">
									<h4>Đặt lịch tư vấn trực tiếp</h4>
									<div class="row">
										<div class="form-group col-md-12">
											<label class="label" for="name">Tên</label>
											<input class="form-control" name="name"></input>
										</div>
										<div class="form-group col-md-12">
											<label class="label" for="phone">Số điện thoại</label>
											<input class="form-control" name="phone"></input>
										</div>
										<div class="form-group col-md-12">
											<label class="label" for="email">Email</label>
											<input class="form-control" name="email" type="email"></input>
										</div>
										<div class="form-group col-md-12">
											<label class="label" for="date">Ngày hẹn</label>
											<input class="form-control" name="date"></input>
										</div>
										<div class="form-group col-md-12">
											<label class="label" for="date">Địa điểm</label>
											<select class="form-control">
												<option value="default">Chọn địa điểm</option>
												<option value="01">Hà Nội</option>
												<option value="02">TP. Hồ Chí Minh</option>
											</select>
										</div>
										<div class="form-group col-auto mx-auto">
											<button class="btn btn-primary" type="submit">Đăng ký</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</xsl:if>

		<xsl:if test="position() = 3">
			<div class="row">
				<div class="col-lg-4 procedure-step order-lg-2 pl-lg-0">
					<div class="text">
						<xsl:attribute name="bg-img">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<h3>
							<xsl:text>02</xsl:text>
						</h3>
						<h4>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h4>
					</div>
				</div>
				<div class="col-lg-8 procedure-step order-lg-1">
					<div class="text">
						<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</div>
			</div>
		</xsl:if>

		<xsl:if test="position() = 4">
			<div class="row">
				<div class="col-lg-4 procedure-step">
					<div class="text">
						<xsl:attribute name="bg-img">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<h3>
							<xsl:text>03</xsl:text>
						</h3>
						<h4>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h4>
					</div>
				</div>
				<div class="col-lg-8 procedure-step">
					<div class="text">
						<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>

</xsl:stylesheet>