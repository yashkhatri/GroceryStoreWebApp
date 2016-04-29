<%-- 
    Document   : registerservlet
    Created on : Apr 13, 2013, 3:15:35 PM
    Author     : sumit rocks
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="mypack.Login"%>
<%@page import="mypack.customer"%>
<%@page import="java.sql.*"%>
<%@page import="javax.xml.ws.Response"%>


<!DOCTYPE html>
<% 

customer l=new customer(request.getParameter("customername_first"),request.getParameter("customername_second"),request.getParameter("usm"),request.getParameter("pass"),request.getParameter("repass"),request.getParameter("address"),request.getParameter("phone_number"),request.getParameter("email"));


if(l.register())
       {
out.println("success");
response.sendRedirect("login.jsp");

}
else{
   
   response.sendRedirect("otherusername.jsp");
   
}

%>
