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
int l=10;
int i=0;
int temp=0;
PreparedStatement pr;
int lm=0;
PreparedStatement ds;
ResultSet dis;
int total=0;
int grandtotal=0,grandtotal1=0;
int[] gt = new int[100];
int tag;

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
      <tr><td colspan="6"><b><p style="text-align: center">UNPROCESSED ORDERS</b></p></td></tr>
<%
PreparedStatement order;
while(rs.next()){
  tag=rs.getInt(6);
if(tag==0){   
    if(l==rs.getInt(7))
    {temp=1;}
    else
               {temp=0;
                i++;
                 grandtotal=0;
                 lm=0;
                 
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
    
    <tr><td colspan="1"><b>Grand Total&nbsp;&nbsp;&nbsp;</b></td><td colspan="6"  ><p style="text-align: right;margin-right: 180px"><%=gt[i-1]%> Rupee only</p></td></tr>
    <tr><td colspan="6"><input type="submit" value="ORDER ARRANGED/ACCEPT"></td></tr>
    <% } %> 
    <tr><td colspan="6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
     <tr><td colspan="6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
     <form action="delete.jsp" method="get">
         <tr><td><input type="hidden" name="order" value="<%=rs.getInt(7)%>"><b>Order No.</b></td><td colspan="5"><%=i%></td><input type="hidden" name="pag" value="view1.jsp"/></tr>
         <td colspan="6"><input type="submit" name="submit" value="DELETE ORDER"/></td>
     </form>
         <tr><td>Date</td><td><%=rs.getString(4)%></td><td colspan="3">Time</td><td><%=rs.getString(5)%></td></tr>
     
     <tr><td><input type="hidden" name="userid" value=<%=rp.getString(5)%>>Customer Id</td><td colspan="6"><%=rp.getString(5)%></td></tr>
     
     
     <tr><td>Customer Name</td><td colspan="6"><%=rp.getString(1)%>&nbsp;<%= rp.getString(2) %></td></tr>
     <tr><td>Customer Address</td><td colspan="6"><%=rp.getString(3)%></td></tr>
     <tr><td>Customer Phone Number</td><td colspan="6"><%=rp.getString(4)%></td></tr>
      <tr><td>ProductId</td><td>Name</td><td>Quantity</td><td>Price</td><td>Total</td><td>Article No</td></tr>
      
    <%}%>
    <%if(lm==0){%>
    <form action="shop.jsp" method="get">
        <%}lm++;%>
        <tr><td><input type="hidden" name="pid" value=<%=rs.getString(1)%>><%=rs.getString(1)%></td><td><%=dis.getString(2)%></td><td><%=rs.getString(2)%></td><td><%=dis.getString(3)%></td><td><%=total%></td><td><input type="text" name="articleno" value="" required><input type="text" name="qty" value=<%=rs.getString(2)%>></td></tr>
        <tr><td colspan="1"><input type="hidden" name="order" value="<%=rs.getInt(7)%></td></tr>
    
<% }}}%>

<tr><td colspan="4"><b>Grand Total</b></td><td colspan="6"><p style="text-align: right;margin-right: 180px"><%=grandtotal%> Rupee only</p></td></tr>
<tr><td colspan="6"><input type="submit" value="ORDER ARRANGED/ACCEPT"></td></tr>
 
 </table>
          
       
        
    </body>
</html>