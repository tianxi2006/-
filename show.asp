<meta http-equiv="refresh" content="5">ϵͳ�Զ�����<br><br>
<%
'For i=1 to Application.Contents.Count
  'Response.Write "Ŀǰ��<font color=red>" & Application.Contents.Count & "</font>�����ߣ�"
  'Response.Write Application("vistor")
'Next
%>
<link rel="stylesheet" type="text/css" href="style.css">
<body style="background:#f1f1f1;">
<%
If Request("toWhom") = "������" OR Request("toWhom") = "" Then
		If trim(Request.Form("talk"))<>"" then
			talk=trim(Request.Form("talk"))		' ȥ���ַ���Ŀո� 
			Application.lock
			Application("show")=time&"<br><table border='0' cellpadding='0' cellspacing='0' width='100%' ><tr><td width='100%' bgcolor='#C0C0C0'></td></tr><tr><td width='100%'><font color='#0000FF'><font color=red><a href=# onclick=javascript:top.say.document.getElementById('toWhom').value=this.innerHTML title=���˽��>"&Session("nick")&"</a></font> ˵��</font>"&talk&"</td></tr><tr><td width='100%' bgcolor='#C0C0C0'></td></tr></table><br>"&Application("show")
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
'===========================˽��====================================
If Request("toWhom") <> "������" And Request("toWhom") <> "" Then
  If Request("toWhom")<>Session("nick") Then
    If trim(Request.Form("talk"))<>"" then
      stalk=trim(Request.Form("talk"))
	'�洢���Ļ����Ҷ���˵�Ļ�
	  Application(Session("nick")&"toWhom")=time&"<br><table border='0' cellpadding='0' cellspacing='0' width='100%' ><tr><td width='100%' bgcolor='#C0C0C0'></td></tr><tr><td width='100%'><font color='#0000FF'><font color=red>�����ĵض�"&Request("toWhom")&" ˵��</font>"&stalk&"</font></td></tr><tr><td width='100%' bgcolor='#C0C0C0'></td></tr></table><br>"&Application(Request("toWhom"))
	  'Application("to"&Session("nick"))=Application(Session("nick")&"toWhom")

%>
		<script>
		window.top.talkTo.location.href="talkTo.asp";
		</script>
<%
     End If
		If trim(Request.Form("talk"))<>"" then
			stalk=trim(Request.Form("talk"))		' ȥ���ַ���Ŀո� 
			'nickObject=Request("TalkTo")
			Application.lock '�洢���Ļ������˶���˵�Ļ�
			Application(Request("toWhom"))=time&"<br><table border='0' cellpadding='0' cellspacing='0' width='100%' ><tr><td width='100%' bgcolor='#C0C0C0'></td></tr><tr><td width='100%'><font color='#0000FF'><font color=red><a href=# onclick=javascript:top.say.document.getElementById('toWhom').value=this.innerHTML title=���˽��>"&Session("nick")&"</a>���ĵض��� ˵��</font>"&stalk&"</font></td></tr><tr><td width='100%' bgcolor='#C0C0C0'></td></tr></table><br>"&Application(Request("toWhom"))
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
	window.alert("�ף�ץ��������������ˣ�");
	</script>
	<%
  End If
End If
%>
<script language="javascript">
	//setTimeout("location.href='show.asp'","10000")
</script>