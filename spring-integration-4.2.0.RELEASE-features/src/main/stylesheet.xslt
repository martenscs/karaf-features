<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output omit-xml-declaration="no" indent="no" />

	<xsl:param name="pNewType" />

	<xsl:template match="node()|@*">
		<xsl:copy>
			<xsl:apply-templates select="node()|@*" />
		</xsl:copy>
	</xsl:template>

	<xsl:template match="repository/@name">
		<xsl:attribute name="name">
            <xsl:value-of select="$pNewType" />
        </xsl:attribute>
	</xsl:template>
</xsl:stylesheet>