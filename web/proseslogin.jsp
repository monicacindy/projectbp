<%-- 
    Document   : proseslogin
    Created on : Dec 2, 2020, 2:38:10 AM
    Author     : monica
--%>


<%@page import="function.login"%>
<jsp:useBean id="obj" class="function.flogin"/>
<jsp:setProperty property="*" name="obj"/>

<%
boolean status=login.validate(obj);
if(status){
out.println("Your successfully logged in");
session.setAttribute("session","TRUE");
%>
<jsp:forward page="menu.jsp" />
<%
}
else
{
out.print("<center><b>Sorry, email or password error</b></center>");
%>
<jsp:include page="index.jsp"></jsp:include>
<%
}
%>