<%-- 
    Document   : deleteuser
    Created on : Dec 8, 2020, 5:27:46 AM
    Author     : monica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="function.user"%>
<jsp:useBean id="u" class="function.fuser"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
int d=user.delete(u);
if(d>0){
out.print("<center><b>Hapus Data Berhasil !</b></center>");
}else{
out.print("<center><b>Hapus Data Gagal !</b></center>");
}
%>
<jsp:include page="menuadmin.jsp?file=homeadmin.jsp"></jsp:include>
