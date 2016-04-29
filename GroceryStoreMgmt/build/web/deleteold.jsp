<%-- 
    Document   : delete
    Created on : Apr 19, 2013, 4:26:15 PM
    Author     : rockstar
--%>
<%@page import="mypack.MyCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%

int order;
String pag;
order=Integer.parseInt(request.getParameter("order"));
pag=request.getParameter("pag");
Connection con=MyCon.getConnection();
PreparedStatement ps=con.prepareStatement("DELETE FROM userwish where orderno=?");
ps.setInt(1,order);
int i=ps.executeUpdate();
response.sendRedirect(pag);
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
