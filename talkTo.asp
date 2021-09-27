<link rel="stylesheet" type="text/css" href="style.css">
<%
	Response.Write Application(Session("nick")&"toWhom")
%>
<body style="background:#f1f1f1;">
		<p>
		<center>为了实时看到信息，每5秒钟会自动刷新一次，您也可以手动刷新！
		<br>
		<!--<a href="#" onclick="logout()">退出</a>-->
		</center>
		</p>