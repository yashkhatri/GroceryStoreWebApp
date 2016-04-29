<%-- 
    Document   : loginservlet
    Created on : Apr 11, 2013, 6:03:57 PM
    Author     : sumit rocks
--%>

<%@page import="java.io.PrintWriter" session="false"%>
<%@page import="mypack.Login"%>
<%@page import="mypack.Login"%>
<%@page import="javax.xml.ws.Response"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="s" class="mypack.Login"/>
    <jsp:setProperty name="s" property="usm" />
       <jsp:setProperty name="s" property="pass" />
        <jsp:setProperty name="s" property="*" />
       

<!DOCTYPE html>
<%
HttpSession session=request.getSession(false);
if(s.checkLogin())
       {
    
    session.setAttribute("usm",s.getUnm());
    response.sendRedirect("submitorder.jsp");
}
else
       {
     response.sendRedirect("error.jsp");
   ;
}
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
    
    </body>
</html>
