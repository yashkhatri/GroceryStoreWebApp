<%-- 
    Document   : login
    Created on : Apr 14, 2013, 12:21:42 AM
    Author     : sumit rocks
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="loginservlet.jsp">
        <table border="1" width="1" cellspacing="1" cellpadding="1">
            <thead>
               <caption>login</caption </thead>
            <tbody>
                <tr>
                    <td>Username</td>
                    <td><input type="text" name="usm" value="" size="20" /></td>
                    <td><p style="color: #ff0033">Enter correct username</p></td>
                </tr>
               
                <tr>
                    <td>password</td>
                    <td><input type="password" name="pass" size="20"/></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" name="submit" value="login"/></td>
                    
                 <td><p style="color: #ff0033">Enter correct Password</p></td>
                </tr>
            </tbody>
        </table>
            </form>

    </body>
</html>
