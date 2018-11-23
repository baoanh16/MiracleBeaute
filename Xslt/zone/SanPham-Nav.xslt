<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />


	<xsl:template match="/">
		<div class="boxprice">
			<!-- <div class="title d-flex d-md-none justify-content-between align-items-center">
				<h3>
					<xsl:value-of select="/ZoneList/ProductListText"></xsl:value-of>
				</h3>
				<button class="collapsed btn btn-sm" data-toggle="collapse" data-target="#filterSearch" role="button" aria-expanded="false"
				 aria-controls="filterSearch">
					<i class="fa fa-search"></i>
				</button>
			</div> -->
			<div id="filterSearch">
				<h4><xsl:value-of select="/ZoneList/ProductListText"></xsl:value-of></h4>
				<ul class="list-group list-unstyled product-list">
					<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
				</ul>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="Zone">
		<xsl:choose>
			<xsl:when test="position() = 1">
				<li class="dropdown-list active">
					<h3>
						<xsl:value-of select="Title"></xsl:value-of>
					</h3>
					<ul class="list-group list-unstyled type-product">
						<xsl:apply-templates select="Zone" mode="Child"></xsl:apply-templates>
					</ul>
				</li>
			</xsl:when>
			
			<xsl:when test="position() = 5">
				<li class="dropdown-list active">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<h3>
							<xsl:value-of select="Title"></xsl:value-of>
						</h3>
					</a>
					<!-- <ul class="list-group list-unstyled type-product">
						<xsl:apply-templates select="Zone" mode="Child"></xsl:apply-templates>
					</ul> -->
				</li>
			</xsl:when>
			<xsl:when test="position() != 1 and position() != 5">
				<li class="dropdown-list">
					<h3>
						<xsl:value-of select="Title"></xsl:value-of>
					</h3>
					<ul class="list-group list-unstyled type-product" style="display: none">
						<xsl:apply-templates select="Zone" mode="Child"></xsl:apply-templates>
					</ul>
				</li>
			</xsl:when>

		</xsl:choose>
	</xsl:template>


	<xsl:template match="Zone" mode="Child">
		<li class="list-group-item">
			<a class="nav-link" href="#">
				<xsl:if test="IsActive='true'">
					<xsl:attribute name="class">
						<xsl:text>nav-link active</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
</xsl:stylesheet>