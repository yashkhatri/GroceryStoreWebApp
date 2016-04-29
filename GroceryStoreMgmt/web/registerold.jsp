<%-- 
    Document   : register
    Created on : Apr 13, 2013, 2:56:33 PM
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
        <form action="registerservlet.jsp" method="get">
        <table border="1" width="2" cellspacing="1" cellpadding="1">
            <thead>
                <tr>
                    <caption>Register</caption>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>First Name</td>
                    <td><input type="text" name="customername_first"/></td>
                </tr>
                <tr>
                    <td>Second Name</td>
                     <td><input type="text" name="customername_second"/></td>
                </tr>
                <tr><tr>
                    <td>email address</td>
                     <td><input type="text" name="email"/></td>
                </tr>
                <tr>
                    <td>User Name</td>
                     <td><input type="text" name="usm"/></td>
                </tr>
                <tr>
                    <td>Password</td>
                     <td><input type="password" name="pass"/></td>
                </tr>
                <tr>
                    <td>Reenter Password</td>
                     <td><input type="password" name="pass"/></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td>​<input type="text" name="address"/></td>
                </tr>
                <tr>
                    <td>Phone Number</td>
                    <td><input type="text" name="phone_number"/></td>
                </tr>
                
                <tr>
                    <td colspan="2"><input type="submit" value="Register" id="submit"/></td>
                </tr>
                
            </tbody>
        </table>
            </form>

    </body>
</html>
