<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>

	<!--Begin Video-->
	<xsl:template match="/">
        <article class="gallery-details">
            <div class="container">
                <xsl:if test="count(/NewsList/News) > 0">
                    <xsl:apply-templates select="/VideoList/Video"></xsl:apply-templates>
                </xsl:if>
            </div>
        </article>
	</xsl:template>

	<!--Begin Video Child-->
	<xsl:template match="Video">
		<!--item 1 -->
        <xsl:if test="position() = 1 ">
			<xsl:text disable-output-escaping="yes">&lt;div class="row gallery-lists"&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position() = 1 ">
            <div class="col-sm-6 col-lg-8 item-wrap top-list">
                <a class="item">
                    <xsl:attribute name="href">
                        <xsl:value-of select="VideoUrl"></xsl:value-of>
                    </xsl:attribute>
                    <figure>
                        <div class="boxzoom">
                            <div class="zoom-item">
                                <img src="Data/Sites/1/skins/default/img/play-btn.png">
                                </img>
                            </div>
                            <div class="d-none d-lg-block" bg-img="">
                                <xsl:attribute name="bg-img">
                                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                                </xsl:attribute>
                                <img class="img-fluid d-lg-none">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                                    </xsl:attribute>
                                </img>
                            </div>
                        </div>
                        <figcaption>
                            <h3>
                                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                            </h3>
                        </figcaption>
                    </figure>
                </a>
            </div>
        </xsl:if>
        <!-- item 2,3 -->
        <xsl:if test="position() = 2 ">
			<xsl:text disable-output-escaping="yes">&lt;div class="col-sm-6 col-lg-4"&gt;</xsl:text>
            <xsl:text disable-output-escaping="yes">&lt;div class="row "&gt;</xsl:text>
		</xsl:if>
        <xsl:if test="position() = 2">
            <div class="col-12 item-wrap">
                <a class="item">
                    <xsl:attribute name="href">
                        <xsl:value-of select="VideoUrl"></xsl:value-of>
                    </xsl:attribute>
                    <figure>
                        <div class="boxzoom">
                            <div class="zoom-item">
                                <img src="Data/Sites/1/skins/default/img/play-btn.png">
                                </img>
                            </div>
                            <img class="img-fluid">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                                </xsl:attribute>
                            </img>
                        </div>
                        <figcaption>
                            <h3>
                                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                            </h3>
                        </figcaption>
                    </figure>
                </a>
            </div>
        </xsl:if>
        <xsl:if test="position() = 3">
            <div class="col-12 item-wrap">
                <a class="item">
                    <xsl:attribute name="href">
                        <xsl:value-of select="VideoUrl"></xsl:value-of>
                    </xsl:attribute>
                    <figure>
                        <div class="boxzoom">
                            <div class="zoom-item">
                                <img src="Data/Sites/1/skins/default/img/play-btn.png">
                                </img>
                            </div>
                            <img class="img-fluid">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                                </xsl:attribute>
                            </img>
                        </div>
                        <figcaption>
                            <h3>
                                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                            </h3>
                        </figcaption>
                    </figure>
                </a>
            </div>
        </xsl:if>
        <!-- item 4,5,6,... -->
        <xsl:if test="position() = 4 ">
			<xsl:text disable-output-escaping="yes">&lt;&gt;</xsl:text>
		</xsl:if>
        <xsl:if test="position() > 3 ">
			<div class="col-sm-6 col-lg-4 item-wrap">
                <div class="item">
                    <xsl:attribute name="href">
                        <xsl:value-of select="VideoUrl"></xsl:value-of>
                    </xsl:attribute>
                    <figure>
                        <div class="boxzoom">
                            <div class="zoom-item"><img src="./img/play-btn.png" alt=""></div><img class="img-fluid" src="./img/news/news-2.jpg"></div>
                        <figcaption>
                            <h3>golf-etc EXPANN SPRING 2017 COLLECTION</h3>
                        </figcaption>
                    </figure>
                </div>
            </div>
		</xsl:if>
		<xsl:if test="position() = 10 ">
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
		</xsl:if>
		<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>

</xsl:stylesheet>