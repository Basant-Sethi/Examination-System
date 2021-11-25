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

String ans=request.getParameter("ans"); 
out.print(ans);

%>

<%! int count=0; %>

<%
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	Statement st=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
	ResultSet rs=st.executeQuery("Select answer from question where answer='"+ans+"'");
	
	while(rs.next())
	{
		count=count+1;
		session.setAttribute("count",count);
		out.print(rs.getString(1));
		
		
	}
	response.sendRedirect("test.jsp");
		con.close();
}catch(Exception e){	
}
%>	






</body>
</html>