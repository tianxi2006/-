<meta http-equiv="refresh" content="5">系统自动更新<br><br>
<%
'For i=1 to Application.Contents.Count
  'Response.Write "目前有<font color=red>" & Application.Contents.Count & "</font>人在线！"
  'Response.Write Application("vistor")
'Next
%>
<link rel="stylesheet" type="text/css" href="style.css">
<body style="background:#f1f1f1;">
<%
If Request("toWhom") = "所有人" OR Request("toWhom") = "" Then
		If trim(Request.Form("talk"))<>"" then
			talk=trim(Request.Form("talk"))		' 去掉字符后的空格 
			Application.lock
			Application("show")=time&"<br><table border='0' cellpadding='0' cellspacing='0' width='100%' ><tr><td width='100%' bgcolor='#C0C0C0'></td></tr><tr><td width='100%'><font color='#0000FF'><font color=red><a href=# onclick=javascript:top.say.document.getElementById('toWhom').value=this.innerHTML title=点击私聊>"&Session("nick")&"</a></font> 说：</font>"&talk&"</td></tr><tr><td width='100%' bgcolor='#C0C0C0'></td></tr></table><br>"&Application("show")
			Application.UnLock
			'Response.Write Application("show")
		Else
			Application.lock
			Application("show")=Application("show")
			Application.UnLock
			'Response.Write Application("show")	
		End If
		Response.Write Application("show")
Else
		Response.Write Application("show")
End If
%>
<%
'===========================私聊====================================
If Request("toWhom") <> "所有人" And Request("toWhom") <> "" Then
  If Request("toWhom")<>Session("nick") Then
    If trim(Request.Form("talk"))<>"" then
      stalk=trim(Request.Form("talk"))
	'存储悄悄话，我对人说的话
	  Application(Session("nick")&"toWhom")=time&"<br><table border='0' cellpadding='0' cellspacing='0' width='100%' ><tr><td width='100%' bgcolor='#C0C0C0'></td></tr><tr><td width='100%'><font color='#0000FF'><font color=red>我悄悄地对"&Request("toWhom")&" 说：</font>"&stalk&"</font></td></tr><tr><td width='100%' bgcolor='#C0C0C0'></td></tr></table><br>"&Application(Request("toWhom"))
	  'Application("to"&Session("nick"))=Application(Session("nick")&"toWhom")

%>
		<script>
		window.top.talkTo.location.href="talkTo.asp";
		</script>
<%
     End If
		If trim(Request.Form("talk"))<>"" then
			stalk=trim(Request.Form("talk"))		' 去掉字符后的空格 
			'nickObject=Request("TalkTo")
			Application.lock '存储悄悄话，别人对我说的话
			Application(Request("toWhom"))=time&"<br><table border='0' cellpadding='0' cellspacing='0' width='100%' ><tr><td width='100%' bgcolor='#C0C0C0'></td></tr><tr><td width='100%'><font color='#0000FF'><font color=red><a href=# onclick=javascript:top.say.document.getElementById('toWhom').value=this.innerHTML title=点击私聊>"&Session("nick")&"</a>悄悄地对我 说：</font>"&stalk&"</font></td></tr><tr><td width='100%' bgcolor='#C0C0C0'></td></tr></table><br>"&Application(Request("toWhom"))
			Application.UnLock
			'Response.Write Application(Session("nick")&Request("toWhom"))
		Else
			Application.lock
			Application(Request("toWhom"))=Application(Request("toWhom"))
			Application.UnLock
			'Response.WriteApplication(Session("nick")&"talkToWhom")	
		End If
  Else
  	%>
	<script>
	window.alert("咦，抓到个自言自语的人！");
	</script>
	<%
  End If
End If
%>
<script language="javascript">
	//setTimeout("location.href='show.asp'","10000")
</script>