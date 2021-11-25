<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
<h2 align="right"><a href=Home.jsp>Home</a></h2>

<h1 align=center>LoginPage</h1>
<table align=center >
<tr><td colspan=2><a href="registration.jsp"><img alt="" src="login.png"><br>For New Register click here</td></a></td>
<form action="loginaction.jsp" method="post">
<tr><td>USERNAME </td><td><input type="text" name="un" required></td></tr>
<tr><td>PASSWORD </td><td><input type="password" name="pw" required></td></tr>
	<tr><td><input type="submit" value="Login"></td><td><input type="submit" value="Reset"></td></tr>
</form>
</table>
</body>
</html>