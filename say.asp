<%
'------------------------'
'�ͻ�������� 
'------------------------
%>

<link rel="stylesheet" type="text/css" href="style.css">
<body style="background:URL('index.jpg') 0 -8px repeat-x #f1f1f1;">

		<form method="POST" action="show.asp" name=form1 target="show" >
		<p>
		<b>
		<font color=blue>
		<%=Session("nick")%>
		</font>
		</b>
		��&nbsp;&nbsp;<input type="text" name="toWhom" id="toWhom" value="������" style="width:60px;height:20px;">&nbsp;&nbsp;˵��
		<input type="text" name="talk" style="width:50%;height:20px;">
		&nbsp;&nbsp;
		<input type="submit" value=" ˵�� " name="B1">
		<!--<input type="reset" value=" ȡ�� " name="B2">--></p>
		<input type=hidden name=log value=1>
		</form>
</body>