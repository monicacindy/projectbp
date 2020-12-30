<%-- 
    Document   : prosesedituser
    Created on : Dec 8, 2020, 5:24:04 AM
    Author     : monica
--%>

<%@page import="function.user"%>
<jsp:useBean id="u" class="function.fuser"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=user.update(u);
if(i>0){
out.print("<center><b>Edit Data Berhasil !</b></center>");
}else{
out.print("<center><b>Edit Data Gagal !</b></center>");
}
%>
<jsp:include page="menuadmin.jsp?file=homeadmin.jsp"></jsp:include>
