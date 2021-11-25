<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! int n; %>
<%
//int qno=Integer.parseInt(request.getParameter("qno"));
String txt=request.getParameter("text");
String op1=request.getParameter("op1");
String op2=request.getParameter("op2");
String op3=request.getParameter("op3");
String op4=request.getParameter("op4");
String ans=request.getParameter("ans");
out.print(txt+"<br>"+op1+"<br>"+op2+"<br>"+op3+"<br>"+op4+"<br>"+ans);
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	
	PreparedStatement ps=con.prepareStatement("insert into question values(?,?,?,?,?,?)");
	//ps.setInt(7,n);
	ps.setString(1,txt);
	ps.setString(2,op1);
	ps.setString(3,op2);
	ps.setString(4,op3);
	ps.setString(5,op4);
	ps.setString(6,ans);
	int a=ps.executeUpdate();
	if(a==0)
	{
		out.println("<br>Questionn Data insertion into radiobutton table is UNSUCCESSFULL");
	}
	else
	{
		out.println("<br>Question Data insertion into radiobutton table is SUCCESSFULL");
	}
	con.close();

}
catch(Exception e){out.println(e);}
%>
<a href=question.jsp >Add Again..</a>
</body>
</html>