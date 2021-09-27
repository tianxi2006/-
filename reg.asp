<!--#include file="conn.asp"-->
<body style="background:#f1f1f1;">
<%
If Request("reg_nick") <> "" And Request("reg_nickpsw") <> "" then
	Set rs=Server.CreateObject("ADODB.RecordSet")
	rs.CursorLocation=3
	sql="Select * from chat where c_name='" & Request("reg_nick") & "'"
	rs.open sql,conn
	If Not rs.EOF OR Not rs.BOF Then
%>
		<script language="javascript">
			alert("昵称已存在，请重新输入！");
			//location.href="index.asp"
		</script>
<%
	Else
	rs.close
		sql="Insert Into chat(c_name,c_psw) Values('" & Request("reg_nick") & "','" & Request("reg_nickpsw") & "')"
		conn.ExeCute(sql)
%>
	<script language="javascript">
		alert("注册成功！您现在可以登录了。");
	</script>
<%
	End If
Else
%>
	<script language="javascript">
		alert("昵称或密码不能为空！");
	</script>
<%
End If
%>