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
		<section class="canhcam-shop-details-1">
			<article class="product-details">
				<div class="container">
					<div class="row d-flex">
						<div class="col-md-6 order-md-2 mb-4 infomation">
							<h1>
								<xsl:value-of select="/ProductDetail/Code"></xsl:value-of>
								<br></br>
								<span>
									<xsl:value-of select="/ProductDetail/Title"></xsl:value-of>
								</span>
								<xsl:value-of select="/ProductDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
							</h1>
							<em class="desc">
								<xsl:value-of select="SubTitle"></xsl:value-of>
							</em>
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
						</div>
						<div class="col-md-6 order-md-1 slider-img">
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
					</div>

					<div class="row tab-product">
						<div class="col-12">
							<nav>
								<ul class="nav nav-tabs" id="nav-tab" role="tablist">
									<xsl:apply-templates select="/ProductDetail/ProductAttributes" mode="Nav"> </xsl:apply-templates>
								</ul>
							</nav>
							<div class="tab-content" id="nav-tabContent">
								<xsl:apply-templates select="/ProductDetail/ProductAttributes" mode="Content"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</article>
		</section>

		<section class="canhcam-carousel-2">
			<div class="container miracle-title">
				<div class="row">
					<div class="col text-center">
						<h2>
							<xsl:value-of select="/ProductDetail/ProductEffectText"></xsl:value-of>
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
	</xsl:template>


	<xsl:template match="ProductImages" mode="BigImages">
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
	</xsl:template>

	<xsl:template match="ProductImages" mode="SmallImages">

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
	</xsl:template>

	<xsl:template match="ProductAttributes" mode="Nav">
		<li class="nav-item">
			<a class="nav-link" data-toggle="tab" role="tab">
				<xsl:if test="position() =1">
					<xsl:attribute name="class">
						<xsl:text>nav-link active</xsl:text>
					</xsl:attribute>
				</xsl:if>

				<xsl:attribute name="href">
					<xsl:text>#tab</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>

				<xsl:attribute name="aria-controls">
					<xsl:text>tab</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>

				<xsl:attribute name="id">
					<xsl:text>tab</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
					<xsl:text>-tab</xsl:text>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</li>
	</xsl:template>

	<xsl:template match="ProductAttributes" mode="Content">
		<div class="tab-pane fade" id="tab1" role="tabpanel" aria-labelledby="tab1-tab">
			<xsl:if test="position() =1">
				<xsl:attribute name="class">
					<xsl:text>tab-pane fade show active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="aria-labelledby">
				<xsl:text>tab</xsl:text>
				<xsl:value-of select="position()"></xsl:value-of>
				<xsl:text>-tab</xsl:text>
			</xsl:attribute>

			<xsl:attribute name="id">
				<xsl:text>tab</xsl:text>
				<xsl:value-of select="position()"></xsl:value-of>
			</xsl:attribute>
			<div class="text">
				<xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</div>
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
							<xsl:value-of select="/ProductDetail/ReadNowText"></xsl:value-of></div>
					</figcaption>
				</figure>
			</a>
		</div>
	</xsl:template>

	<!-- <xsl:template match="ProductProperties">
	</xsl:template>

	<xsl:template match="ProductOther">
	</xsl:template>


	<xsl:template match="Options">
	</xsl:template> -->

</xsl:stylesheet>
