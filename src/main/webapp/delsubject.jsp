<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@page import="com.LearnersAcademy.Dbconnection"%>
     <%@page import = "java.sql.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Subject</title>
</head>
<body>
<%
String id=request.getParameter("id");
try{
    Class.forName(Dbconnection.driver);
	Connection conn=DriverManager.getConnection(Dbconnection.url, Dbconnection.userName, Dbconnection.password);
	System.out.print(conn);
	Statement st=conn.createStatement();
	String query="delete from subject where id='"+id+"'";
	ResultSet rSet=st.executeQuery(query);
	%>
	<script> alert("successful")</script>
	<%
	response.sendRedirect("subject.jsp");
	} catch (Exception e) {
e.printStackTrace();
}
%>


</body>
</html>

</body>
</html>