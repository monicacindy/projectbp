<%-- 
    Document   : editformuser
    Created on : Dec 8, 2020, 5:06:46 AM
    Author     : monica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Edit Form</title>
 <link rel="stylesheet" type="text/css" href="style3.css">
         <style>
	body {background-image: url(btf.jpg);}
	</style>
 </head>
 <body>
  <center>
      <!-- header -->
<div id="header">EDIT FORM</div><br><br>
 <%@page import="function.user,function.fuser"%>
 <%
 String id = request.getParameter("nim");
 fuser u = user.getRecordById(Integer.parseInt(id));
 %>

 <form action="prosesedituser.jsp" method="post">
 <input type="hidden" name="nim" value="<%=u.getNim()%>"/>
 <table border="5" bgcolor="lightpink">
 <tr>
     <td width="120px">Nama : </td>
     <td><input type="text" name="nama" value="<%=u.getNama()%>"/></td>
 </tr>
 <tr>
     <td width="120px">Jenis Kelamin : </td>
     <td>
         <input type="radio" name="jk" value="Laki - Laki" <%= u.getJk().equals("Laki - Laki") ? "checked=\"checked\"" : ""%> />Laki - Laki<br>
         <input type="radio" name="jk" value="Perempuan" <%= u.getJk().equals("Perempuan") ? "checked=\"checked\"" : ""%> />Perempuan</td>
 </tr>
 <tr>
  <td width="120px">Kelas : </td>
  <td><select name="kelas">
         <option value="TI 2019 A" <%= u.getKelas().equals("TI 2019 A") ? "selected=\"selected\"": ""%>>TI 2019 A</option>
         <option value="TI 2019 B" <%= u.getKelas().equals("TI 2019 B") ? "selected=\"selected\"": ""%>>TI 2019 B</option>
         <option value="TI 2019 C" <%= u.getKelas().equals("TI 2019 C") ? "selected=\"selected\"": ""%>>TI 2019 C</option>
         <option value="TI 2019 D" <%= u.getKelas().equals("TI 2019 D") ? "selected=\"selected\"": ""%>>TI 2019 D</option>
         <option value="TI 2018 A" <%= u.getKelas().equals("TI 2018 A") ? "selected=\"selected\"": ""%>>TI 2018 A</option>
         <option value="TI 2018 B" <%= u.getKelas().equals("TI 2018 B") ? "selected=\"selected\"": ""%>>TI 2018 B</option>
         <option value="TI 2018 C" <%= u.getKelas().equals("TI 2018 C") ? "selected=\"selected\"": ""%>>TI 2018 C</option>
         <option value="TI 2018 D" <%= u.getKelas().equals("TI 2018 D") ? "selected=\"selected\"": ""%>>TI 2018 D</option>
     </select></td>
 </tr>
 <tr>
     <td width="120px">Alamat : </td>
     <td><input type="text" name="alamat" value="<%=u.getAlamat()%>"></td>
 </tr>
 <tr>
     <td></td>
     <td colspan="2"><input type="submit" value="Edit User"/>
         <input type="reset" value="Reset"/><br>
         <a href="menuadmin.jsp?file=homeadmin.jsp">Kembali</a></td>
 </tr>
 </table>
 </form>
 </center>
 </body>
</html>
