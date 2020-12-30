<%-- 
    Document   : menuadmin
    Created on : Dec 4, 2020, 6:51:28 PM
    Author     : monica
--%>

<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link rel="stylesheet" type="text/css" media="screen" href="style3.css">
</head>
<body>
<!-- header -->
<div id="header">PENDAFTARAN HIMA TI</div>
<div id="header1">ANGKATAN 2020</div>
<!-- Menu -->
<div id="menu">
<ul>
 <li><a href="menuadmin.jsp">Dashboard</a></li>
 <li><a href="menuadmin.jsp?file=homeadmin.jsp">Data Pendaftar</a></li>
 <li><a href="menuadmin.jsp?file=dataadmin.jsp">Data Admin</a></li>
 <li><a href="admin.jsp" onclick="return confirm('Anda Yakin Ingin Keluar?')">Logout</a></li>
</ul>
</div>
<div id="konten">
<%
if (request.getParameter("file")!=null) {
 String dataFile =request.getParameter("file");
 File file = new File(request.getServletContext().getRealPath(dataFile));
 if (file.exists()) { %>
 <jsp:include page="<%=dataFile%>" />
 <% } else { %>
<jsp:include page="welcomeadmin.jsp" />
 <% }
} else {
%>
<jsp:include page="welcomeadmin.jsp" />
<%
}
%>
</div>
<br />
<div id="footer">Copyright &copy; 2020 Monica Cindy Meliyana</div>
</body>
</html>
