<%-- 
    Document   : view.jsp
    Created on : Apr 18, 2013, 3:05:22 PM
    Author     : rockstar
--%>

<%@page import="java.util.Enumeration"%>
<%@page import="mypack.MyCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="mypack.customer" import="java.sql.*" session="false"%>

<%
HttpSession session=request.getSession(false);
Connection con=MyCon.getConnection();
PreparedStatement ps=con.prepareStatement("SELECT * FROM userwish");
//ResultSet rs=ps.executeQuery();
ResultSet rp;
String l="sumit";
int i=0;
int temp=0;
PreparedStatement pr;
PreparedStatement ds;
ResultSet dis;
int total=0;
int grandtotal=0,grandtotal1=0;
int[] gt = new int[100];
String name,name1;

Enumeration enu=session.getAttributeNames();
    %>
    

<!DOCTYPE html>
<html> 
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
            <%
            
                
                
          
           
         
 %>
 <form action="change.jsp" method="get">
  <table border="2">
      
      <tr><td colspan="5"><b>ORDERS</b></td></tr>
      <tr><td>ProductId</td><td>Name</td><td>Quantity</td><td>Price</td><td>Total</td></tr>
<%while(enu.hasMoreElements()){
     name = (String)enu.nextElement();
     name1=(String)session.getAttribute(name);
          
    
    
    ds=con.prepareStatement("select * from product where pid=?");
    ds.setString(1,name);
    dis=ds.executeQuery();
   
    while(dis.next()){
        int x=Integer.parseInt(name1);
        int y=Integer.parseInt(dis.getString(3));
total=x*y;
grandtotal=grandtotal+total;
gt[i]=grandtotal;
                
   l=name;
   
    %>
    
   
    
      
   
    
    <tr><td><input type="text" name="itemid" value=<%=name%>><%=name%></td><td><%=dis.getString(2)%></td><td><input type="number" name="qty" value=<%=name1%> required></td><td><%=dis.getString(3)%></td><td><%=total%></td></tr>
   
<% }}%>
<tr><td colspan="4"><b>Grand Total</b></td><td><%=grandtotal%></td></tr>
 
 </table>
<input type="submit" value="change"/>
 <td><a href="login.jsp"><img src="images/submitorder.gif"/></a></td>
</form>
          
       
        
    </body>
</html>