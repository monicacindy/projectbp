<%-- 
    Document   : welcomeadmin
    Created on : Dec 5, 2020, 4:57:29 PM
    Author     : monica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="function.admin"%>
<jsp:useBean id="u" class="function.fadmin"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
	<style>
	body {background-image: url(cyprus.jpg);}
        p {margin:0;font-size:100px;color:lightgrey;text-align: center;font-family: Brush Script MT;}
	h1 {margin:0;font-size:100px;padding-top:3%;color: lightblue;}
	h2 {margin:0;font-size:100px;color: lightblue;}
        h3 {margin:0;font-size:30px;color:lightgrey;text-align: right;font-family: Brush Script MT;}
	</style>
</head>
<body>
    <p>WELCOME ADMIN, <%=session.getAttribute("username")%><br></p>
    <h3>Time : <% out.print(new java.util.Date());%></h3>
	<marquee behavior="scroll" scrollamount="20" onmouseover="this.stop();" onmouseout="this.start();" direction="left">
	<h1>SISTEM APLIKASI WEB</h1><br>
	<marquee behavior="scroll" scrollamount="20" onmouseover="this.stop();" onmouseout="this.start();" direction="right">
	<h2>HIMA TI</h2>
   </body>
</html>
