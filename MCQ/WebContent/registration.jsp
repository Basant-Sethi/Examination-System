<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration page</title>
</head>
<body>
<h1 align="center">REGISTRATION</h1>
<p align=right><a href="Home.jsp">Home</a></p><hr>
<h2><table>
<form action="actionreg.jsp">
	<tr><th>UserName</th><th><input type="text" name="un"></th></tr>
	<tr><th>Password</th><th><input type="password" name="pw"></th></tr>
	<tr><th>EmailId</th><th><input type="email" name="eid"></th></tr>             
	<tr><th>Address</th><th><input type="text" name="adr"></th></tr>
	<tr><th>PhoneNumber</th><th><input type="number" name="phno"></th></tr>
	<tr><th>ChooseRole</th><th><select name=role ><option>Student</option><option>Admin</option></select></th></tr>
		<tr><th><input type="submit" value="Register"><br></th></tr>
	</table>
	 <hr>
</form>
</h2>
</body>
</html>