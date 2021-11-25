<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Action Page</title>
</head>
<body>
<%
String un=request.getParameter("un");
String pw=request.getParameter("pw");
String eid=request.getParameter("eid");
String adr=request.getParameter("adr");
String phno=request.getParameter("phno");
String role=request.getParameter("role");
out.println(un+pw+eid+adr+phno+role);
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	PreparedStatement ps=con.prepareStatement("insert into regdata values(?,?,?,?,?,?,?)");
	ps.setString(1,un);
	ps.setString(2,pw);
	ps.setString(3,eid);
	ps.setString(4,adr);
	ps.setString(5,phno);
	ps.setString(6,role);
	ps.setString(7,"0");
	int a=ps.executeUpdate();
	out.println("Entered Email Id is your UserName.<br>Your Account is activated after 30 minutes Thank you.");
	response.setHeader("Refresh","6;registration.jsp");
	con.close();

}
catch(Exception e){out.println(e);}
%>
</body>
</html>