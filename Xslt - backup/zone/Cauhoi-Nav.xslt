<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>


	<xsl:template match="/">
            <div class="list-group-item list-faq" data-fix="65" data-fix-type="initial" data-fix-change="sticky">
                <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
            </div>
	</xsl:template>

	<xsl:template match="Zone">
		<div class="list-item">
                <xsl:if test="IsActive='true'">
                    <xsl:attribute name="class">
                    <xsl:text>list-item active</xsl:text>
                    </xsl:attribute>
                </xsl:if>
            <a class="nav-link">
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="target">
                    <xsl:value-of select="Target"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            </a>
		</div>
	</xsl:template>
</xsl:stylesheet>