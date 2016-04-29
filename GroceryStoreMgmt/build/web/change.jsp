<%-- 
    Document   : change
    Created on : Apr 19, 2013, 3:06:55 PM
    Author     : rockstar
--%>

<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<%
HttpSession session=request.getSession(false);
String[] a = new String[100];
String[] b = new String[100];
a=request.getParameterValues("itemid");
b=request.getParameterValues("qty");
int i;
for(i=0;i<a.length;i++){
out.println(a[i]);
out.println(b[i]);
session.setAttribute(a[i],b[i]);
}
response.sendRedirect("viewcart.jsp");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
