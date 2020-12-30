<%-- 
    Document   : prosesedit
    Created on : Dec 4, 2020, 11:36:39 AM
    Author     : monica
--%>

<%@page import="javax.swing.text.Document"%>
<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="function.admin"%>
<jsp:useBean id="u" class="function.fadmin"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
int i=admin.update(u);
if(i>0){
out.print("<center><b>Edit data berhasil !</b></center>");
}else{
out.print("<center><b>Edit data gagal !</b></center>");
}
%>
<jsp:include page="menuadmin.jsp?file=dataadmin.jsp"></jsp:include>
