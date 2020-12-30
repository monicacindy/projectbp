<%-- 
    Document   : homeadmin
    Created on : Dec 5, 2020, 5:30:50 PM
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
 List<fuser> list = user.getAllRecords();
 request.setAttribute("list", list);
 %>
 <a href="tambah.jsp">Tambahkan Data</a>
 <table border="1" width="70%" bgcolor="lightpink">
<tr>
    <th>NIM</th>
    <th>NAMA</th>
    <th>JENIS KELAMIN</th>
    <th>KELAS</th>
    <th>ALAMAT</th>
    <th>Edit</th>
    <th>Delete</th>
</tr>

<c:forEach items="${list}" var="u">
<tr>
    <td>${u.getNim()}</td>
    <td>${u.getNama()}</td>
    <td>${u.getJk()}</td>
    <td>${u.getKelas()}</td>
    <td>${u.getAlamat()}</td>
    <td><a href="editformuser.jsp?nim=${u.getNim()}" onclick="return confirm('Anda Yakin Akan Edit Data Ini?')">Edit</a></td>
    <td><a href="deleteuser.jsp?nim=${u.getNim()}" onclick="return confirm('Anda Yakin Akan Hapus Data Ini?')">Delete</a></td>
</tr>
 </c:forEach>
 </table>
 </center>
 </body>
</html>
