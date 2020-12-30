<%-- 
    Document   : deleteuser
    Created on : Dec 4, 2020, 11:40:21 AM
    Author     : monica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="function.admin"%>
<jsp:useBean id="u" class="function.fadmin"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
int d=admin.delete(u);
if(d>0){
out.print("<center><b>Hapus data berhasil !</b></center>");
}else{
out.print("<center><b>Hapus data gagal !</b></center>");
}
%>
<jsp:include page="menuadmin.jsp?file=dataadmin.jsp"></jsp:include>
