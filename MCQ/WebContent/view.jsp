<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin view page</title>
</head>
<body><center>
<div style="text-align:center;border:1px solid;" ><h3>Total Data Lists</h3></div>

<table width=800 border=1>
<tr><th>NAME</th><th>PASSWORD</th><th>EMAIL</th><th>ADDRESS</th><th>PHNO</th></tr>
<%
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from webstudent");
	int n=0;
	while(rs.next())
	{	
		n=n+1;
		if(n%2==0){
		out.println("<tr bgcolor=lightblue><td>"+rs.getString(1)+"</td>"
		+"<td><s>"+rs.getString(2)+"</s></td>"
		+"<td>"+rs.getString(3)+"</td>"
		+"<td>"+rs.getString(4)+"</td>"
		+"<td>"+rs.getString(5)+"</td></tr>");
		
		}
		else
		{
			out.println("<tr ><td>"+rs.getString(1)+"</td>"+"<td><s>"+rs.getString(2)+"</s></td>"+"<td>"+rs.getString(3)+"</td>"+"<td>"+rs.getString(4)+"</td>"+"<td>"+rs.getString(5)+"</td></tr>");
				
		}
	}
	con.close();
	
}catch(Exception e){out.println(e);}
%>
</table>
</center>
</body>
</html>