<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
	
                <div class="row no-gutters">
		<xsl:apply-templates select="/ZoneList/Zone"/>
		</div>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:apply-templates select="News"/>
	</xsl:template>

	<xsl:template match="News">	
		<div class="col-lg-5">
			<div class="img-wrap" bg-img="./img/lieutrinh/coban/cb-1.jpg">
				<xsl:attribute name="bg-img">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
			<img class="d-lg-none img-fluid" src="./img/lieutrinh/coban/cb-1.jpg" alt=""> 
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
			</img>
			</div>
		</div>
		<div class="col-lg-7">
			<div class="text text-center">
				<h1>
					<xsl:value-of select="Title"   disable-output-escaping="yes"/></h1>
				<div class="html">
					<xsl:value-of select="FullContent"   disable-output-escaping="yes"/>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>