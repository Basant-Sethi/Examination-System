<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>welcomePage</title>
</head>
<body>
<font color=blue size=30>Welcome User</font>
<p align=right><a href="http://localhost:8883/Studentwebpage/login.jsp">LogOut</a></p><hr color=red>
<ul><li><a href=http://localhost:8883/Studentwebpage/view.jsp>View</a></li>
	<li>Edit</li>
	<li>Delete</li>
	</ul>
<center>	
<h1>Lists of Student Record :</h1>
<%
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select uname from webstudent");
	
	while(rs.next())
	{	%><table border=2> <tr><th><%
		out.print(rs.getString(1)+" <br>");%></th></tr></table><%
	}
	con.close();
	
}catch(Exception e){out.println(e);}
%>

</td></tr>
</table>
</center>

</body>
</html>