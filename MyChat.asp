<html>
<HEAD>
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="0">
</HEAD>
<%
	Response.clear ' ��ջ����е�����
	Response.Buffer=true ' ����������棬������ʾ��ͬҳ�档
	On error resume next ' ���Գ��������
	Response.Expires=0
	dim talk
	'Application("vistor")=0
	If Request("nick")<>"" then
		'Application.lock
	' �жϿͻ����Ƿ������������ 
		Session("nick")=Request("nick")
		'Application("vistor")=Application("vistor")+1
		'Application.unlock
	'Response.Write Application(Session("nick"))
	End If
%>
<frameset rows=70%,* frameborder="no" >
<frameset cols=70%,* frameborder="no" >
	<frame name="show" src="show.asp?myName=<% =Request("nick") %>" noresize scrolling="no">
	<frame name="secret_show" src="secret_show.asp" noresize>
</frameset>
<frameset rows=50%,*>
	<frame name="say" src="say.asp" scrolling="no" noresize>
	<frame name="talkTo" src="talkTo.asp" scrolling="no" noresize>
</frameset>
</frameset><noframes></noframes>
</html>