<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>logout</title>
</head>
<body>
<% session.invalidate(); %>
<h1>You have logged off successfully<br>Please login to continue</h1>
<hr>
<% 
	RequestDispatcher dt=request.getRequestDispatcher("login.html");
	dt.include(request, response);
%>
</body>
</html>