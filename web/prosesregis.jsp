<%-- 
    Document   : prosesregis
    Created on : Dec 4, 2020, 3:59:40 PM
    Author     : monica
--%>

<%@page import="function.regis"%>
<jsp:useBean id="u" class="function.fregis"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int r = regis.simpan(u);
if(r>0){
out.print("<center><b>Registrasi Berhasil !</b></center>");
}else{
out.print("<center><b>Registrasi Gagal !</b></center>");
}
%>
<jsp:include page="user.jsp"></jsp:include>
