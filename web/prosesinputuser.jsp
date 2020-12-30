<%-- 
    Document   : prosesinputuser
    Created on : Dec 2, 2020, 2:56:10 PM
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
<jsp:include page="index.jsp?file=home.jsp"></jsp:include>

