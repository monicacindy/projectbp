<%-- 
    Document   : index
    Created on : Dec 2, 2020, 1:54:46 AM
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
 
	<div class="kotak_login">
		<p class="tulisan_login">Silahkan Login</p>
 
		<form action="proseslogin.jsp" method="post">
			<label>Username</label>
			<input type="text" name="username" class="form_login" placeholder="username..." required="required">
 
			<label>Password</label>
			<input type="password" name="password" class="form_login" placeholder="password..." required="required">
 
			<input type="submit" name="login" class="tombol_login" value="LOGIN">
 
			<br><br>
			<center><a href="registrasi.jsp">Register an Account</a>
                        <br><br>
                        <a href="index.jsp">Kembali</a></center>
		</form>	
	</div>
		<p><center style="color:white;">Copyright © 2020 by : Monica Cindy Meliyana</center></p>
</body>
</html>


