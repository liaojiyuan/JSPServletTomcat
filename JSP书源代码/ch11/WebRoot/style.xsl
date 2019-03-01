<?xml version="1.0"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" indent="yes"/>

<xsl:template match="/">
  <html>
  <body>
   <xsl:apply-templates/>
  </body>
  </html>
</xsl:template>

<xsl:template match="users">
  <table border="1" width="100%">
    <xsl:for-each select="user">
      <tr>
        <td>
          <i><xsl:value-of select="name"/></i>
        </td>
        <td>
          <xsl:value-of select="password"/>
        </td>
        <td>
          <xsl:value-of select="age"/>
        </td>
        <td>
          <xsl:value-of select="sex"/>
        </td>
        <td>
          <xsl:value-of select="telephone"/>
        </td>
        <td>
          <xsl:value-of select="address"/>
        </td>
      </tr>
    </xsl:for-each>
  </table>
</xsl:template>
</xsl:transform>