<%-- 
    Document   : 2
    Created on : Apr 18, 2013, 3:40:04 AM
    Author     : rockstar
--%>

<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%

HttpSession session=request.getSession(false);

String pid=request.getParameter("pid");
String qty=request.getParameter("qty");
String page1=request.getParameter("page");
session.setAttribute(pid,qty);
String s=(String)session.getAttribute(pid);
Enumeration e=session.getAttributeNames();
while(e.hasMoreElements())
       {
     String name = (String) e.nextElement();
      String name1=(String)session.getAttribute(name);
      
}

response.sendRedirect(page1);

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
