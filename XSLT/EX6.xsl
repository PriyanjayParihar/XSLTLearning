<?xml version = "1.0"  encoding = "UTF-8"?>
<xsl:stylesheet version = "1.0" 
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform"> 
<xsl:template match="/">
<html>
<body>
<h1>Student Details</h1>
<table border="1">
<tr>
<th>FirstName</th>
<th>LastName</th>
<th>Marks</th>
</tr>
<xsl:for-each select="students/student">
<tr>

	<xsl:apply-templates />
<!-- apply templates is used to create multiple templates and use them -->


<!-- <td><xsl:value-of select="@rollno"/></td>
<td><xsl:value-of select="firstname"/></td>
<td><xsl:value-of select="lastname"/></td>
<td><xsl:value-of select="marks"/></td> -->

</tr>

</xsl:for-each>
</table>
</body></html>
</xsl:template>

<xsl:template match="student">
<xsl:apply-templates select="rollno"/>
<xsl:apply-templates select="firstname"/>
<xsl:apply-templates select="lastname"/>
<xsl:apply-templates select="marks"/>

</xsl:template>
<xsl:template match="rollno">
	<td><xsl:value-of select="@rollno"/></td>
	</xsl:template>
<!-- not working with attribute -->

<xsl:template match="firstname">
	<td><xsl:value-of select="."/></td>
	</xsl:template>

<xsl:template match="lastname">
	<td><xsl:value-of select="."/></td>
	</xsl:template>

<xsl:template match="marks">
	<td><xsl:value-of select="."/></td> 
	</xsl:template>

</xsl:stylesheet>