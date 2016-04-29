<%-- 
    Document   : view.jsp
    Created on : Apr 18, 2013, 3:05:22 PM
    Author     : rockstar
--%>

<%@page import="mypack.MyCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="mypack.customer" import="java.sql.*"%>

<%
Connection con=MyCon.getConnection();
PreparedStatement del=con.prepareStatement("delete from userwish where qty=?");
del.setString(1,"0");
del.executeUpdate();
PreparedStatement ps=con.prepareStatement("SELECT * FROM userwish");
ResultSet rs=ps.executeQuery();
ResultSet rp;
int l=0;
int i=0;
int temp=0;
PreparedStatement pr;
PreparedStatement ds;
ResultSet dis;
int total=0;
int grandtotal=0,grandtotal1=0;
int[] gt = new int[100];


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
  <table border="2">
      <tr><td colspan="5"><p style="text-align: center"><b>ALL ORDERS</b></td></tr>
<%
PreparedStatement order;
while(rs.next()){
    if(l==rs.getInt(7))
    {temp=1;}
    else
               {temp=0;
                i++;
                 grandtotal=0;
                   }
        
       
    
    
    ds=con.prepareStatement("select * from product where pid=?");
    ds.setString(1,rs.getString(1));
    dis=ds.executeQuery();
    String usm1=rs.getString(3);
     pr=con.prepareStatement("select * from customer where usm=?");
      pr.setString(1,usm1);
       rp=pr.executeQuery();
         rp.next();
    while(dis.next()){
        int x=Integer.parseInt(rs.getString(2));
        int y=Integer.parseInt(dis.getString(3));
total=x*y;
grandtotal=grandtotal+total;
gt[i]=grandtotal;

                
   l=rs.getInt(7);
   if(temp==0){
       
      
     if(i!=1){   
    %>
    
    <tr><td colspan="4"><b>Grand Total</b></td><td><%=gt[i-1]%></td></tr>
    <% } %> 
    <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
     <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
     <form action="delete.jsp" method="get">
         <tr><td><input type="hidden" name="order" value="<%=rs.getInt(7)%>"><b>Order No.</b></td><td colspan="4"><%=i%></td><input type="hidden" name="pag" value="view.jsp"/></tr>
         <td colspan="5"><input type="submit" name="submit" value="DELETE ORDER"/></td>
     </form>
         <tr><td>Date</td><td><%=rs.getString(4)%></td><td>Time</td><td colspan="2"><%=rs.getString(5)%></td></tr>
     
     <tr><td><input type="hidden" name="userid" value=<%=rp.getString(5)%>>Customer Id</td><td colspan="4"><%=rp.getString(5)%></td></tr>
     
     
     <tr><td>Customer Name</td><td colspan="4"><%=rp.getString(1)%>&nbsp;<%= rp.getString(2) %></td></tr>
     <tr><td>Customer Address</td><td colspan="4"><%=rp.getString(3)%></td></tr>
     <tr><td>Customer Phone Number</td><td colspan="4"><%=rp.getString(4)%></td></tr>
      <tr><td>ProductId</td><td>Name</td><td>Quantity</td><td>Price</td><td>Total</td></tr>
      
    <%}%>
    <tr><td><%=rs.getString(1)%></td><td><%=dis.getString(2)%></td><td><%=rs.getString(2)%></td><td><%=dis.getString(3)%></td><td><%=total%></td></tr>
    
<% }}%>
<tr><td colspan="4"><b>Grand Total</b></td><td><%=grandtotal%></td></tr>
 
 </table>
          
       
        
    </body>
</html>