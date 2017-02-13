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

  <xsl:template match="*">
    <xsl:apply-templates select="mods"/>
  </xsl:template>

  <xsl:template match="/version/mods">
    <xsl:text>| Mod | Version | Description |&#xa;</xsl:text>
    <xsl:text>|-----|:-------:|-------------|&#xa;</xsl:text>
    <xsl:apply-templates select="mod" />
  </xsl:template>

  <xsl:template match="mod">
    <xsl:text>| [</xsl:text>
    <xsl:value-of select="@name" />
    <xsl:text>](</xsl:text>
    <xsl:value-of select="@website" />
    <xsl:text>) | </xsl:text>
    <xsl:value-of select="@version" />
    <xsl:text> | </xsl:text>
    <xsl:value-of select="@description" />
    <xsl:text> |&#xa;</xsl:text>
  </xsl:template>

</xsl:stylesheet>
