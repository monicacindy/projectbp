<%-- 
    Document   : registrasi
    Created on : Dec 4, 2020, 3:57:11 PM
    Author     : monica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Monica Cindy Meliyana</title>
	<link rel="stylesheet" type="text/css" href="style1.css">
</head>
<body>
 <%
 String login_msg=(String)request.getAttribute("login_msg");
 if(login_msg!=null){
 out.print(login_msg);
 }
 %>
 
<div class="kotak_login">
	<p class="tulisan_login">Silahkan Isi Data</p>
	<form action="prosesregis.jsp" method="post">
		<label>Nama User</label>
		<input type="text" name="namauser" class="form_login" placeholder="nama user..." required="required">
                        
                <label>Username</label>
                <input type="text" name="username" class="form_login" placeholder="username..." required="required">
 
		<label>Password</label>
		<input type="password" name="password" class="form_login" placeholder="password..." required="required">
 
		<input type="submit" name="submit" class="tombol_login" value="Registrasi">
 
		<br><br>
		<center><a href="user.jsp">BATAL</a></center>
		</form>	
	</div>
		<p><center style="color:white;">Copyright © 2020 by : Monica Cindy Meliyana</center></p>
	

 
</body>
</html>

