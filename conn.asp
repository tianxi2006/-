<%
	connstr="Provider=Microsoft.Jet.OLEDB.4.0; Data Source="&server.mappath("Database4.mdb")
          '�������ݿ�
	set conn=server.CreateObject("adodb.connection")
	on error resume next          
	conn.Open connstr
	if Err.number<>0 then
		Response.write "<font color='#a9c0cf'><strong>���ݿ����ӳ����������Ա��ϵ<br>" & err.description & "</strong></font>"
		Response.end
	end if
%>