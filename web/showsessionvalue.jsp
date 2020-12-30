<%-- 
    Document   : showsessionvalue
    Created on : Dec 21, 2020, 7:59:08 PM
    Author     : monica
--%>

<%@ page language="java" %>
<%
String username=(String) session.getAttribute("username");
if(username==null) username="";
%>
<html>
<head>
<title>Show Saved Name</title>
</head>
<body> 
<p>Welcome: <%=username%><p>
</body>
</html> 
