<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>
<%

Integer result=(Integer)session.getAttribute("count");
if(result!=null){
out.print("Your Total Result:"+result+"<br>Thank You for Giving Exam .. All the best.");
session.setAttribute("count",0);}
else{
	out.print("Thank You for Giving Exam .But sorry.. you are not choosen any options.");
	session.setAttribute("count",0);
}
	
%>
</h1><a href="student.jsp">Click here for GoBack to profile</a>
</body>
</html>