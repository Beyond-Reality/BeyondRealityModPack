<?xml version="1.0" encoding="UTF-8"?>
<!--
ATLauncher XML to Markdown modlist converter
Author: Léa Gris
Date: 2017-01-08
Version: 0.1.0
License: http://www.wtfpl.net/

Example usage:
  xsltproc modlist.xsl ATLauncherModpack.xml > modlist.md
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:functx="http://www.functx.com"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    version="1.0">

  <xsl:strip-space elements="*"/>
  <xsl:output method="text" />

  <xsl:template name="tokenize">
    <xsl:param name="csv" />
    <xsl:variable name="first-item" select="normalize-space( substring-before( concat( $csv, ','), ','))" />
    <xsl:variable name="hasnext" select="contains( normalize-space($csv),',' )" />
    <xsl:choose>
      <xsl:when test="$first-item">
        <xsl:value-of select="$first-item" />
        <xsl:if test="$hasnext">
          <xsl:text><![CDATA[<br/>]]></xsl:text>
        </xsl:if>
        <xsl:call-template name="tokenize">
          <xsl:with-param name="csv" select="substring-after($csv,',')" />
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="*">
    <xsl:apply-templates select="version"/>
  </xsl:template>

  <xsl:template match="/version">
    <xsl:text># Beyond Reality Farscapes&#xa;</xsl:text>
    <xsl:text>* Version: </xsl:text>
    <xsl:value-of select="pack/version/text()"/>
    <xsl:text>&#xa;&#xa;</xsl:text>
    <xsl:text>## A Mod-pack for Minecraft: </xsl:text>
    <xsl:value-of select="pack/minecraft/text()"/>
    <xsl:text>&#xa;&#xa;</xsl:text>
    <xsl:text>### Powered by&#xa;</xsl:text>
    <xsl:text>* </xsl:text>
    <xsl:value-of select="mods/mod[@type='forge']/@name" />
    <xsl:text> </xsl:text>
    <xsl:value-of select="mods/mod[@type='forge']/@version" />
    <xsl:text>&#xa;</xsl:text>
    <xsl:text>* [</xsl:text>
    <xsl:value-of select="count(mods/mod[@type='mods'])" />
    <xsl:text><![CDATA[ Mods](#mods)]]>&#xa;</xsl:text>
    <xsl:text>* [</xsl:text>
    <xsl:value-of select="count(mods/mod[@type='dependency'])" />
    <xsl:text><![CDATA[ Dependency/Core Mods](#dependencycore-mods)]]>&#xa;</xsl:text>
    <xsl:text>&#xa;</xsl:text>
    <xsl:apply-templates select="mods"/>
  </xsl:template>

  <xsl:template match="/version/mods">
    <xsl:text>## Mods&#xa;</xsl:text>
    <xsl:text>| Mod | Version | Authors | Description |&#xa;</xsl:text>
    <xsl:text>|-----|:-------:|:--------|:------------|&#xa;</xsl:text>
    <xsl:apply-templates select="mod[@type='mods']">
      <xsl:sort select="@name"/>
    </xsl:apply-templates>
    <xsl:text>## Dependency/Core Mods&#xa;</xsl:text>
    <xsl:text>| Mod | Version | Authors | Description |&#xa;</xsl:text>
    <xsl:text>|-----|:-------:|:--------|:------------|&#xa;</xsl:text>
    <xsl:apply-templates select="mod[@type='dependency']">
      <xsl:sort select="@name"/>
    </xsl:apply-templates>
  </xsl:template>

  <xsl:template match="mod">
    <xsl:text>| [</xsl:text>
    <xsl:value-of select="@name" />
    <xsl:text>](</xsl:text>
    <xsl:value-of select="@website" />
    <xsl:text>) | </xsl:text>
    <xsl:value-of select="@version" />
    <xsl:text> | </xsl:text>
    <xsl:call-template name="tokenize">
      <xsl:with-param name="csv" select="@authors" />
    </xsl:call-template>
    <xsl:text> | </xsl:text>
    <xsl:value-of select="@description" />
    <xsl:text> |&#xa;</xsl:text>
  </xsl:template>

</xsl:stylesheet>
