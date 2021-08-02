<?xml version = "1.0"  encoding = "UTF-8"?>
<xsl:stylesheet version = "1.0" 
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform"> 
<xsl:template match="/">
<html>
<body>
<h1>Student Details</h1>
<table border="1">

<tr><th>Roll no</th>
<th>FirstName</th>
<th>LastName</th>
<th>Marks</th>
</tr>

<xsl:for-each select="students/student">

<xsl:sort select='firstname'/>
<!-- 
if is used for condition chk if get true then body run  -->

<xsl:if test='marks &gt; 95'>
<tr>
<td><xsl:value-of select="@rollno"/></td>
<td><xsl:value-of select="firstname"/></td>
<td><xsl:value-of select="lastname"/></td>
<td><xsl:value-of select="marks"/></td>
</xsl:if>
</tr>

</xsl:for-each>
</table>
</body></html>
</xsl:template>
</xsl:stylesheet>