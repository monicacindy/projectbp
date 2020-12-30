<%-- 
    Document   : input
    Created on : Dec 28, 2020, 6:02:11 PM
    Author     : monica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title></title>
         <style>
	body {background-image: url(btf.jpg);}
	</style>
 </head>
 <body>
 <center>
     <h1>Tambah Data</h1>
 <hr>
 <form action="prosestambah.jsp" method="post">
 <table width="500px" border="5" bgcolor="lightpink">
 <tr>
 <td width="120px">Nim</td>
 <td><input type="text" name="nim"></td>
 </tr>
 <tr>
 <td width="120px">Nama</td>
 <td><input type="text" name="nama"></td>
 </tr>
 <tr>
 <td width="120px">Jenis Kelamin</td>
 <td><input type="radio" name="jk" value="Laki - Laki">Laki - Laki<br>
     <input type="radio" name="jk" value="Perempuan">Perempuan</td>
 </tr>
 <tr>
 <td width="120px">Kelas</td>
 <td><select name="kelas">
         <option>TI 2019 A</option>
         <option>TI 2019 B</option>
         <option>TI 2019 C</option>
         <option>TI 2019 D</option>
         <option>TI 2018 A</option>
         <option>TI 2018 B</option>
         <option>TI 2018 C</option>
         <option>TI 2018 D</option>
     </select></td>
 </tr>
 <tr>
 <td width="120px">Alamat</td>
 <td><input type="text" name="alamat"></td>
 </tr>
 <tr>
 <td></td>
 <td><input type="submit" name="proses" value="Tambah Data" onclick="return confirm('Apakah Yakin Ingin Menambah Data?')">
     <input type="reset" value="Reset"/><br>
     <a href="menuadmin.jsp?file=homeadmin.jsp">Kembali</a></td>
 </tr>
 </table>
 </form>
 </center>
 </body>
</html>

