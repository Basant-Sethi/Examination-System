<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Question</title>
</head>
<body><center>
<table>
<form action="questionaction.jsp">
	<h2>Enter Question</h2><a href="admin.jsp">Back to admin page</a>
	<tr><td><textarea rows="10" cols="100" name=text></textarea></td></tr>
	


		<tr><td>Option1<input type=text name=op1><br></td></tr>
		<tr><td>Option2<input type=text name=op2><br></td></tr>
		<tr><td>Option3<input type=text name=op3><br></td></tr>
		<tr><td>Option4<input type=text name=op4><br></td></tr>
		  <tr><td>Answer<input type=text name=ans><br></td></tr>
		<tr><td><input type="submit" value=Submit></td></tr>
</body>
</html>