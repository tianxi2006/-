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
			alert("�ǳ��Ѵ��ڣ����������룡");
			//location.href="index.asp"
		</script>
<%
	Else
	rs.close
		sql="Insert Into chat(c_name,c_psw) Values('" & Request("reg_nick") & "','" & Request("reg_nickpsw") & "')"
		conn.ExeCute(sql)
%>
	<script language="javascript">
		alert("ע��ɹ��������ڿ��Ե�¼�ˡ�");
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