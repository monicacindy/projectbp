<%-- 
    Document   : admin
    Created on : Dec 4, 2020, 6:44:12 PM
    Author     : monica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Monica Cindy Meliyana</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
 <%
 String login_msg=(String)request.getAttribute("login_msg");
 if(login_msg!=null){
 out.print(login_msg);
 }
 %>
     <%
	    Cookie[] cookies=request.getCookies();
	    String username = "", password = "",rememberVal="";
	    if (cookies != null) {
	         for (Cookie cookie : cookies) {
	           if(cookie.getName().equals("cookuser")) {
	             username = cookie.getValue();
	           }
	           if(cookie.getName().equals("cookpass")){
	             password = cookie.getValue();
	           }
	           if(cookie.getName().equals("cookrem")){
	             rememberVal = cookie.getValue();
	           }
	        }
	    }
	%>
	<div class="kotak_login">
		<p class="tulisan_login">Silahkan Login</p>
 
		<form action="prosesloginadmin.jsp" method="post">
			<label>Username</label>
			<input type="text" name="username" class="form_login" placeholder="username..." required="required"
                               value="<%=username%>">
 
			<label>Password</label>
			<input type="password" name="password" class="form_login" placeholder="password..." required="required"
                               value="<%=password%>">
 
			<input type="submit" name="login" class="tombol_login" value="LOGIN">
                        
                        <br><br>
                        <center><a href="index.jsp">Kembali</a></center>
		</form>	
	</div>
		<p><center style="color:white;">Copyright © 2020 by : Monica Cindy Meliyana</center></p>
</body>
</html>
