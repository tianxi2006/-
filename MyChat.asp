<html>
<HEAD>
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="0">
</HEAD>
<%
	Response.clear ' 清空缓存中的内容
	Response.Buffer=true ' 设置输出缓存，用于显示不同页面。
	On error resume next ' 忽略程序出错部分
	Response.Expires=0
	dim talk
	'Application("vistor")=0
	If Request("nick")<>"" then
		'Application.lock
	' 判断客户是是否在聊天界面中 
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