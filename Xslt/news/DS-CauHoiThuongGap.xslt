<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
        <div class="miracle-title">
            <h2 class="text-center">
                Câu hỏi thường gặp
            </h2>
            <div class="list-group-item p-0">
                <xsl:if test="IsActive='true'">
                    <xsl:attribute name="class">
                        <xsl:text>nav-link active</xsl:text>
                    </xsl:attribute>
                </xsl:if>
                <xsl:apply-templates select="/NewsList/News" mode="Hot"></xsl:apply-templates>
        </div>
        </div>
	</xsl:template>
	<xsl:template match="News" mode="Hot">
    <div class="list-item">
		<div class="question">
            <p>
                <xsl:value-of select="Title"></xsl:value-of>
            </p>
            <span class="mdi mdi-comment-question-outline"></span></div>
            <div class="answer show-more">
                <p>
                    <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                </p>
            </div>
            <div class="toggle-text show">Xem thêm</div>
    </div>
	</xsl:template>

	
</xsl:stylesheet>