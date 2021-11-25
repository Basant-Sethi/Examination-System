<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String un=request.getParameter("un");
String pw=request.getParameter("pw");
String dun="",dpw="",drole="",dstatus="";
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	PreparedStatement ps=con.prepareStatement("select * from regdata where email_id=? and password=? ");
	ps.setString(1,un);
	ps.setString(2,pw);
	
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
		dun=rs.getString(3);
		dpw=rs.getString(2);
		drole=rs.getString(6);
		dstatus=rs.getString(7);
		
		
	}
	if(dun.equals(dun) && pw.equals(dpw) && dstatus.equals("1"))
	{
		if(drole.equals("Admin"))
		{
			response.sendRedirect("admin.jsp");
		}
		else
		{
			response.sendRedirect("student.jsp");
		}
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