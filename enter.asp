<!--#include file="conn.asp"-->
<%
If Request("nick") <> "" And Request("nickpsw") <> "" then
	Set rs=Server.CreateObject("ADODB.RecordSet")
	rs.CursorLocation=3
	sql="Select * from chat where c_name='" & Request("nick") & "'"
	rs.open sql,conn
	If Not rs.EOF OR Not rs.BOF Then
		If Request("nickpsw") = rs("c_psw") Then
			rs.close
%>
			<script language="javascript">
				top.location.href="MyChat.asp?nick=<% =Request("nick") %>"
			</script>
<%
		Else
%>
			<script language="javascript">
				alert("密码错误！");
				//location.href="index.asp"
			</script>
<%
		End If
	Else
%>
	<script language="javascript">
		alert("找不到用户！");
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