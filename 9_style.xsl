<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">   
		<html>
			<head>
				<style>
					td {
						text-align: center;;
					}
				</style>
			</head>
			<body>
				<h2>Hospital patients</h2>
				<table border="1">
					<tr bgcolor="yellow">
						<th colspan="3">Name</th>
						<th rowspan="2">Age</th>
						<th rowspan="2">Room number</th>
						<th colspan="3">Primary Insurance</th>
						<th colspan="3">Secondary Insurance</th>
						<th rowspan="2">Existing Medical Problems</th>
						<th rowspan="2">Existing Allergies</th>
					</tr>
					<tr bgcolor="yellow">
						<th>First Name</th>
						<th>Middle Name</th>
						<th>Last Name</th>
						<th>Insurance Name</th>
						<th>Personal ID</th>
						<th>Group ID</th>
						<th>Insurance Name</th>
						<th>Personal ID</th>
						<th>Group ID</th>
					</tr>
					<xsl:for-each select="hospital/patient">
						<tr>
							<td><xsl:value-of select="name/fname"/></td>
							<td><xsl:value-of select="name/mname"/></td>
							<td><xsl:value-of select="name/lname"/></td>
							<td><xsl:value-of select="age"/></td>
							<td><xsl:value-of select="rnum"/></td>
							<td><xsl:value-of select="insurancecompany[@type='primary']/insurancename"/></td>
							<td><xsl:value-of select="insurancecompany[@type='primary']/pnum"/></td>
							<td><xsl:value-of select="insurancecompany[@type='primary']/gnum"/></td>
							<td><xsl:value-of select="insurancecompany[@type='secondary']/insurancename"/></td>
							<td><xsl:value-of select="insurancecompany[@type='secondary']/pnum"/></td>
							<td><xsl:value-of select="insurancecompany[@type='secondary']/gnum"/></td>
							<td><xsl:value-of select="medicalprobs"/></td>
							<td><xsl:value-of select="knownallergies"/></td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>