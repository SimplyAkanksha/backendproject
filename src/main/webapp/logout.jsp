<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logout Page</title>
</head>
<body background="backgr.png">
	<%
	session.invalidate();
	%>
	<h1>
		<font color="Red">You are Sucessfully logged out...</font>
	</h1>
	<a href="index.html">Go-Back To Home Page</a>
</body>
</html>