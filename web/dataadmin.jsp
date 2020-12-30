<%-- 
    Document   : homeadmin
    Created on : Dec 5, 2020, 4:54:22 PM
    Author     : monica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title></title>
        <style>
	body {background-image: url(btf.jpg);}
	</style>
 </head>
 <body>
 <%@page import="function.*,java.util.*"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <hr>
 <center>
 <%
 List<fadmin> list = admin.getAllRecords();
 request.setAttribute("list", list);
 %>
 <table border="1" width="50%" bgcolor="lightpink">
<tr>
    <th>Nama</th>
    <th>Username</th>
    <th>Password</th>
</tr>

<c:forEach items="${list}" var="u">
<tr>
    <td>${u.getNamaadmin()}</td>
    <td>${u.getUsername()}</td>
    <td>${u.getPassword()}</td>
</tr>
 </c:forEach>
 </table>
 </center>
 </body>
</html>
