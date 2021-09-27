<%
	connstr="Provider=Microsoft.Jet.OLEDB.4.0; Data Source="&server.mappath("Database4.mdb")
          '连接数据库
	set conn=server.CreateObject("adodb.connection")
	on error resume next          
	conn.Open connstr
	if Err.number<>0 then
		Response.write "<font color='#a9c0cf'><strong>数据库连接出错，请与管理员联系<br>" & err.description & "</strong></font>"
		Response.end
	end if
%>