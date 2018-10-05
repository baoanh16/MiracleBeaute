<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />



	<!-- <xsl:apply-templates select="/ProductDetail/ProductImages" mode="BigImages"></xsl:apply-templates>
	<xsl:apply-templates select="/ProductDetail/ProductImages" mode="SmallImages"></xsl:apply-templates>
	<xsl:apply-templates select="/ProductDetail/ProductProperties"></xsl:apply-templates>
	<xsl:apply-templates select="/ProductDetail/ProductOther"></xsl:apply-templates>
	<xsl:apply-templates select="/ProductDetail/ProductRelated"></xsl:apply-templates>
	<xsl:apply-templates select="Options"></xsl:apply-templates> -->




	<xsl:template match="/">
		<section class="lieutrinhchitiet-1">
			<div class="container chitiet pb-5">
				<div class="row">

					<div class="col-md-6 slider-img">
						<article class="slider-for">
							<xsl:apply-templates select="/ProductDetail/ProductImages" mode="BigImages"></xsl:apply-templates>
						</article>
						<article class="slider-control">
							<div class="slider-nav">
								<xsl:apply-templates select="/ProductDetail/ProductImages" mode="SmallImages"></xsl:apply-templates>
							</div>
							<button class="btn left-arrow">
								<i class="fa fa-chevron-left"></i>
							</button>
							<button class="btn right-arrow">
								<i class="fa fa-chevron-right"></i>
							</button>
						</article>
					</div>
					<div class="col-md-6">
						<div class="text">
							<h1>
								<xsl:value-of select="/ProductDetail/Code"></xsl:value-of>
								<br></br>
								<span>
									<xsl:value-of select="/ProductDetail/Title"></xsl:value-of>
								</span>
								<xsl:value-of select="/ProductDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
							</h1>
							<div class="html">
								<xsl:value-of select="/ProductDetail/SubTitle"></xsl:value-of>
							</div>
							<hr>
							</hr>
							<div class="table-responsive">
								<table class="table">
									<tbody>
										<tr>
											<td>
												<xsl:value-of select="/ProductDetail/PriceText"></xsl:value-of>
											</td>
											<td class="price">
												<xsl:if test="/ProductDetail/Price != ''">
													<xsl:value-of select="/ProductDetail/Price"></xsl:value-of>
												</xsl:if>

												<xsl:if test="/ProductDetail/Price = 0">
													<xsl:text>Liên hệ</xsl:text>
												</xsl:if>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<xsl:value-of select="/ProductDetail/BriefContent" disable-output-escaping="yes"></xsl:value-of>
							<div class="button-list container">
								<div class="row">
									<div class="col-lg-6">
										<a class="btn btn-primary" data-fancybox="">
											<xsl:attribute name="href">
												<xsl:apply-templates select="/ProductDetail/ProductAttributes"> </xsl:apply-templates>
											</xsl:attribute>
											<span class="fab fa-youtube"></span>
											VIDEO
										</a>
									</div>
									<div class="col-lg-6">
										<a class="btn btn-primary" data-fancybox="popup-2" data-src="#book-meeting" href="javascript:;">
											<xsl:value-of select="/ProductDetail/BookNowText" disable-output-escaping="yes"></xsl:value-of>
										</a>
									</div>
								</div>
							</div>
							
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="canhcam-step-1">
			<div class="container">
				<div class="row">
					<div class="col-12 miracle-title">
						<h2>
							<xsl:value-of select="/ProductDetail/ProcessStepText"></xsl:value-of>
						</h2>
					</div>
				</div>
				<div class="row">
					<xsl:value-of select="/ProductDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</div>
		</section>
<xsl:if test="count(/ProductDetail/ProductRelated)>0">
		<section class="canhcam-carousel-7">
			<div class="container miracle-title">
				<div class="row">
					<div class="col text-center">
						<h2>
							<xsl:value-of select="/ProductDetail/ProductUseText"></xsl:value-of>
						</h2>
					</div>
				</div>
			</div>
			
				<article class="news-list">
					<div class="container">
						<div class="row">
							<div class="col">
								<div class="owl-carousel owl-theme">
									<xsl:apply-templates select="/ProductDetail/ProductRelated"> </xsl:apply-templates>
								</div>
							</div>
						</div>
					</div>
				</article>
			
		</section>
</xsl:if>

<xsl:if test="count(/ProductDetail/ProductOther)>0">
		<section class="canhcam-carousel-3">
			<div class="container miracle-title">
				<div class="row">
					<div class="col text-center">
						<h2>
							<xsl:value-of select="/ProductDetail/ProcedureOtherText"></xsl:value-of>
						</h2>
					</div>
				</div>
			</div>
			<article class="news-list">
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="owl-carousel owl-theme">
								<xsl:apply-templates select="/ProductDetail/ProductOther"> </xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</article>
		</section>
		
</xsl:if>
	</xsl:template>


	<xsl:template match="ProductImages" mode="BigImages">
		<xsl:if test="position()>1">
			<div class="item">
				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>
			</div>
		</xsl:if>
	</xsl:template>

	<xsl:template match="ProductImages" mode="SmallImages">
		<xsl:if test="position()>1">
		<div class="item">
			<img>
			<xsl:attribute name="src">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="alt">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			</img>
		</div>
	</xsl:if>
	</xsl:template>

	<xsl:template match="ProductAttributes">
		<xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>

	<xsl:template match="ProductOther">
		<div class="item">
			<a class="item-detail">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<figure>
					<div class="img">
						<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
					<figcaption>
						<h3>
							<xsl:value-of select="Code"></xsl:value-of>
							<br></br>
							<xsl:value-of select="Title"></xsl:value-of>
						</h3>
						<p class="price">
							<xsl:value-of select="Price"></xsl:value-of>
						</p>
						<div class="btn btn-primary">
							<xsl:value-of select="/ProductDetail/ReadNowText"></xsl:value-of>
						</div>
					</figcaption>
				</figure>
			</a>
		</div>
	</xsl:template>

	<xsl:template match="ProductRelated">
		<div class="item">
			<a class="item-detail">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<figure>
					<div class="img">
						<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
					<figcaption>
						<h3>
							<xsl:value-of select="Code"></xsl:value-of>
							<br></br>
							<xsl:value-of select="Title"></xsl:value-of>
						</h3>
						<p class="price">
							<xsl:value-of select="Price"></xsl:value-of>
						</p>
						<div class="btn btn-primary">
							<xsl:value-of select="/ProductDetail/ReadNowText"></xsl:value-of>
						</div>
					</figcaption>
				</figure>
			</a>
		</div>
	</xsl:template>

	<!-- <xsl:template match="ProductProperties">
	</xsl:template> -->



</xsl:stylesheet>
