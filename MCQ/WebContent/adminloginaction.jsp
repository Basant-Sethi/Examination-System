<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>adminactionpage</title>
</head>
<body>
<%
String un=request.getParameter("un");
String pw=request.getParameter("pw");
String dun="",dpw="";
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	PreparedStatement ps=con.prepareStatement("select uname,pass from webstudent where uname=? and pass=?");
	ps.setString(1,un);
	ps.setString(2,pw);
	
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
		dun=rs.getString(1);
		dpw=rs.getString(2);
		
	}
	if(dun.equals(dun) && pw.equals(dpw))
	{
		response.sendRedirect("admin.jsp");
	}
	else
	{
		response.sendRedirect("fall.jsp");
	}
	con.close();

}
catch(Exception e){out.println(e);}
%>

</body>
</html>