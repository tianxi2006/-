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
				alert("�������");
				//location.href="index.asp"
			</script>
<%
		End If
	Else
%>
	<script language="javascript">
		alert("�Ҳ����û���");
	</script>
<%
	End If
Else
%>
	<script language="javascript">
		alert("�ǳƻ����벻��Ϊ�գ�");
	</script>
<%
End If
%>