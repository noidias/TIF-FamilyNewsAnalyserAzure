<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="Application.NewsAnalyser"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Summary Family News</title>
</head>
<body>
 
<h1>Result</h1>
 
<p>
   <%
   String inputText = request.getParameter("news");
   String stringFromJava = NewsAnalyser.runFamNewsAnalyser(inputText); 
   %>
   <% out.println(stringFromJava); %>
</p>
<form action="index.jsp" method="POST">
	<input type="submit" value="Home" />
</form> 
</body>
</html>