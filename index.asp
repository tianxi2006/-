<HTML>
<HEAD>
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="0">
</HEAD>
<body style="background:URL('index.jpg') 0 0px repeat-x #f1f1f1;">
<%@ Language=VBScript %>
<link rel="stylesheet" type="text/css" href="style.css">
<%
Response.Buffer=true ' ����������棬������ʾ��ͬҳ�档
On error resume next ' ���Գ��������

If Request.ServerVariables("Request_Method")="GET" then
' �жϿͻ�����ʲô��ʽ���� WEB ҳ��
'------------------------
' �ͻ���½���� 
'------------------------
%>
<center>
<font size=5 color=red>&nbsp;&nbsp;&nbsp;&nbsp;��ӭ���������ң�</font>
<!--��¼-->
	<form name="MyForm" method="POST" action="enter.asp" target="login"><p>
	<b>�ǳ�</b>��
����<input type="text" name="nick" size="12" style="background-color: rgb(192,192,192);height:20px;">
����<b>����</b>��
����<input type="password" name="nickpsw" size="12" style="background-color: rgb(192,192,192);height:20px;">
	<input type="submit" value=" ���������� " name="B1" style="color: rgb(255,255,0); font-size: 9pt; background-color: rgb(0,128,128); width:80px;height:22px;">&nbsp;&nbsp;
������һ������3����<a href=# onclick=javascript:regForm();>ע��</a>һ�°ɣ�
	<p><input type="hidden" name="log" size="20" value="1"><br></p>
	</form>
	<p>���������ĸ����ǳƣ�Ȼ����������ң�</p>
<iframe name=regframe border=0 width=0 height=0 src=iframe.html></iframe>
</center>
<iframe name=login border=0 width=0 height=0 src=iframe.html></iframe>
<div id=reg style="position:absolute;width:380px;height:40px;border:solid 0px red;display:none;">
<!--ע��-->
	<form name="MyForm" method="POST" action="reg.asp" target="login"><p>
		<b>�ǳ�</b>��<input type="text" name="reg_nick" size="12" style="background-color: rgb(192,192,192);height:20px;"><b>����</b>��<input type="password" name="reg_nickpsw" size="12" style="background-color: rgb(192,192,192);height:20px;">
		<input type="submit" value=" ע  �� " name="B_reg" style="color: rgb(255,255,0); font-size: 9pt; background-color: rgb(0,128,128); width:60px;height:22px;">
	</form>
</div>
<script>
function regForm(){
	x=event.clientX
	y=event.clientY
	document.getElementById("reg").style.display=""
	document.getElementById("reg").style.left=x+10;
	document.getElementById("reg").style.top=y+10;
	//alert("X coords: " + x + ", Y coords: " + y)
}
</script>
<div id="ad" style="position:absolute;border:solid 0px red;width:100%;height:50%;z-index:100;background:#f1f1f1;"></div>
<%
	Response.End ' ��������Ĵ���
End If
%>
</body>
</html>