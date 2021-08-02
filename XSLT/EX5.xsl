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
<tr>
<td><xsl:value-of select="@rollno"/></td>
<td><xsl:value-of select="firstname"/></td>
<td><xsl:value-of select="lastname"/></td>
  <!-- choose when works like if else  we can also avle to use multiple when  -->
<xsl:choose>
<xsl:when test='marks > 90'>

	<!-- we can also give val like in test cond <xsl:when test='marks &gt; 90'> -->
<td bg='#00ff00'><xsl:value-of select="marks"/></td>
</xsl:when>
<xsl:otherwise>
<td><xsl:value-of select="marks"/></td>
</xsl:otherwise>
</xsl:choose>
</tr>
</xsl:for-each>
</table>
</body></html>
</xsl:template>
</xsl:stylesheet>