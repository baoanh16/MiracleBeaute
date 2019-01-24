<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<ul class="list-unstyled main-nav mb-0">
			<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
		</ul>
	</xsl:template>



	<xsl:template match="Zone">

		<xsl:choose>
			<xsl:when test="position() = 5">
				<li class="nav-item dropdown-list mega-list">
					<xsl:if test="IsActive='true'">
						<xsl:attribute name="class">
							<xsl:text>nav-item dropdown-list mega-list active</xsl:text>
						</xsl:attribute>
					</xsl:if>
					<a class="nav-link">
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of select="Title"></xsl:value-of>
					</a>
					<div class="mega-menu">
						<div class="close-mega-menu d-lg-none">
							<span class="mdi mdi-chevron-left"></span>
						</div>
						<div class="row no-gutters">
							<div class="col-lg-9">
								<xsl:apply-templates select="Zone" mode="MegaContent"></xsl:apply-templates>
							</div>
							<div class="col-lg-3 d-none d-lg-block mega-list">
								<ul class="list-group list-unstyled">
									<xsl:apply-templates select="Zone" mode="MegaList"></xsl:apply-templates>
								</ul>
							</div>
							<!-- <xsl:apply-templates select="Zone" mode="LieuTrinh"></xsl:apply-templates> -->
						</div>
					</div>
				</li>
			</xsl:when>

			<xsl:when test="position() != 5">
				<li class="nav-item">
					<xsl:if test="count(Zone) > 0">
						<xsl:if test="IsActive='true'">
							<xsl:attribute name="class">
								<xsl:text>nav-item dropdown-list active</xsl:text>
							</xsl:attribute>
						</xsl:if>
						<xsl:attribute name="class">
							<xsl:text>nav-item dropdown-list</xsl:text>
						</xsl:attribute>
					</xsl:if>
					<xsl:if test="IsActive='true'">
						<xsl:attribute name="class">
							<xsl:text>nav-item dropdown-list active</xsl:text>
						</xsl:attribute>
					</xsl:if>
					<a class="nav-link">
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of select="Title"></xsl:value-of>
					</a>
					<xsl:if test="count(Zone) > 0">
						<ul class="list-unstyled child-list level-1">
							<xsl:apply-templates select="Zone" mode="ChildLevel1"></xsl:apply-templates>
						</ul>
					</xsl:if>
				</li>
			</xsl:when>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="Zone" mode="MegaContent">
		<div class="row no-gutters mega-content">
			<xsl:attribute name="id">
				<xsl:text>mega-</xsl:text>
				<xsl:value-of select="position()"></xsl:value-of>
			</xsl:attribute>
			<xsl:if test="position()=1">
				<xsl:attribute name="class">
					<xsl:text>row no-gutters mega-content active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<div class="col-lg-8 order-lg-2">
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
			</div>
			<div class="col-lg-4 order-lg-1">
				<div class="text">
					<h4>
						<xsl:value-of select="Title"></xsl:value-of>
					</h4>
					<p>
						<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
					</p>
					<p>
						<a class="btn btn-detail">
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of select="/ZoneList/ViewDetailText" disable-output-escaping="yes"></xsl:value-of>
							<span class="lnr lnr-arrow-right"></span>
						</a>
					</p>
				</div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="Zone" mode="MegaList">
		<li class="list-group-item">
			<xsl:attribute name="data-link">
				<xsl:text>#mega-</xsl:text>
				<xsl:value-of select="position()"></xsl:value-of>
			</xsl:attribute>
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
				<br></br>
				<!-- <xsl:text>(</xsl:text>
				<span>
					<xsl:value-of select="Title"></xsl:value-of>
				</span>
				<xsl:text>)</xsl:text> -->
			</a>
		</li>
	</xsl:template>

	<xsl:template match="Zone" mode="ChildLevel1">
		<li class="nav-item">
			<xsl:if test="count(Zone) &gt; 0">
				<xsl:attribute name="class">
					<xsl:text>nav-item dropdown-list</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a class="nav-link">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
			<xsl:if test="count(Zone) &gt; 0">
				<ul class="list-unstyled child-list level-2">
					<xsl:apply-templates select="Zone" mode="ChildLevel2"></xsl:apply-templates>
				</ul>
			</xsl:if>
		</li>
	</xsl:template>

	<xsl:template match="Zone" mode="ChildLevel2">
		<li class="nav-item">
			<a class="nav-link">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
		</li>
	</xsl:template>

</xsl:stylesheet>
