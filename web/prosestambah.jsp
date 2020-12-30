<%-- 
    Document   : prosestambah
    Created on : Dec 28, 2020, 7:03:22 PM
    Author     : monica
--%>

<%@page import="function.input"%>
<jsp:useBean id="u" class="function.finput"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=input.save(u);
if(i>0){
out.print("<center><b>Input data berhasil !</b></center>");
}else{
out.print("<center><b>Input data gagal !</b></center>");
}
%>
<jsp:include page="index.jsp?file=homeadmin.jsp"></jsp:include>
