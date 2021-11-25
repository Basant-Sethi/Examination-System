<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login failed</title>
</head>
<body>
<h2>Invalid login id or password</h2>
<%
response.setHeader("Refresh","6; url=login.jsp");
%>
</body>
</html>