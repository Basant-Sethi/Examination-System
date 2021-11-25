<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2 align="right"><a href=login.jsp>Logout</a></h2>
<h2 align="right"><a href=admin.jsp>Return to AdminPage</a></h2>


<table align="center" border="2">
<%
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	PreparedStatement ps=con.prepareStatement("select * from regdata where status=?");
	ps.setString(1,"0");
	ResultSet rs=ps.executeQuery();
	int n=0;
	while(rs.next())
	{	
	out.println("<form action=confirm.jsp><input type=hidden name=e value="+rs.getString(3)
	+"><tr bgcolor=lightblue><td>"+rs.getString(1)+"</td>"
	+"<td>"+rs.getString(3)+"</td>"
	+"<td>"+rs.getString(4)+"</td>"
	+"<td>"+rs.getString(5)+"</td>"
	+"<td>"+rs.getString(6)+"</td><td><input type=submit value=Confirm></td></tr></form>");
	
	}
	//response.setHeader("Refresh","2;registration.jsp");
	con.close();

}
catch(Exception e){out.println(e);}

%>
</table>
</body>
</html>