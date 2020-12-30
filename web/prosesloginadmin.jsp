<%-- 
    Document   : prosesloginadmin
    Created on : Dec 4, 2020, 6:45:18 PM
    Author     : monica
--%>

<%@page import="function.loginadmin"%>
<jsp:useBean id="obj" class="function.floginadmin"/>
<jsp:setProperty property="*" name="obj"/>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%  
   Cookie Username = new Cookie("username",
 			  request.getParameter("username"));
   Cookie Password = new Cookie("password",
			  request.getParameter("password"));
   Username.setMaxAge(60*60*24); 
   Password.setMaxAge(60*60*24); 
   response.addCookie( Username );
   response.addCookie( Password );
%>
<html>
	<head>
		<title>Setting Cookies</title>
	</head>
	<body>
		<center>
		<h1>Setting Cookies</h1>
		</center>
		<ul>
			<li><p><b>First Name:</b>
			   <%= request.getParameter("username")%>
			</p></li>
			<li><p><b>Last  Name:</b>
			   <%= request.getParameter("password")%>
			</p></li>
		</ul>
		</table>
	</body>
</html>
<%
boolean status=loginadmin.validate(obj);
if(status){
out.println("Your successfully logged in");
session.setAttribute("session","TRUE");
%>
<%
String username=request.getParameter("username");
if(username==null) username="";
session.setAttribute("username",username);
%>
<jsp:forward page="menuadmin.jsp" />
<%
}
else
{
out.print("<center><b>Sorry, email or password error</b></center>");
%>
<jsp:include page="admin.jsp"></jsp:include>
<%
}
%>
<head>
<body>
<p><a href="showsessionvalue.jsp">Next Page to view the session value</a><p>
</body>
</head>