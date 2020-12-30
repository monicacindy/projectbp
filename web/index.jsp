<%-- 
    Document   : index
    Created on : Dec 2, 2020, 2:47:20 PM
    Author     : monica
--%>

<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Monica Cindy Meliyana</title>
<link rel="stylesheet" type="text/css" media="screen" href="style2.css">
</head>
<body>
<!-- header -->
<div id="header">PENDAFTARAN HIMA TI</div>
<div id="header1">ANGKATAN 2020</div>
<!-- Menu -->
<div id="menu">
<ul>
 <li><a href="index.jsp">Dashboard</a></li>
 <li><a href="index.jsp?file=home.jsp">Daftar</a></li>
 <li><a href="admin.jsp" onclick="return confirm('Anda Seorang Admin? SIlahkan Login DIsini!')">Login</a></li>
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
<jsp:include page="welcome.jsp" />
 <% }
} else {
%>
<jsp:include page="welcome.jsp" />
<%
}
%>
</div>
<br />
<div id="footer">Copyright &copy; 2020 Monica Cindy Meliyana</div>
</body>
</html>
