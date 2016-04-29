<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Pink Shop</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" type="text/css" href="stylesheet/styles.css" />
<script language="javascript" type="text/javascript">
function clearText(field) {
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>
<script language="javascript" type="text/javascript" src="scripts/mootools-1.2.1-core.js"></script>
<script language="javascript" type="text/javascript" src="scripts/mootools-1.2-more.js"></script>
<script language="javascript" type="text/javascript" src="scripts/slideitmoo-1.1.js"></script>
<script language="javascript" type="text/javascript">
window.addEvents({
    'domready': function () { /* thumbnails example , div containers */
        new SlideItMoo({
            overallContainer: 'SlideItMoo_outer',
            elementScrolled: 'SlideItMoo_inner',
            thumbsContainer: 'SlideItMoo_items',
            itemsVisible: 5,
            elemsSlide: 3,
            duration: 200,
            itemsSelector: '.SlideItMoo_element',
            itemWidth: 140,
            showControls: 1
        });
    },

});
</script>
</head>
<body>
<div id="wrapper">

  <div id="menu">
    <ul>
      <li><a href="finalfrontpage.jsp" class="current"><span>.01</span>Home</a></li>
      <li><a href="aboutus.jsp"><span>.02</span>About Us</a></li>
      <li><a href="faq's.jsp"><span>.03</span>FAQ's</a></li>
      <li><a href="contactus.jsp"><span>.04</span>Contact Us</a></li>
    </ul>
  </div>
  <!-- end of menu -->
  <div id="header_bar">
    <div id="header">
      <div class="right"></div>
      <h1><a href="finalfrontpage.jsp"> <img src="images/logo.png" alt="" /><span>Online Grocery Store </span> </a></h1>
    </div>
    <div id="search_box">
      <form action="#" method="get">
        <input type="text" value="Enter keyword here..." name="q" size="10" id="searchfield" onfocus="clearText(this)" onblur="clearText(this)" />
        <input type="submit" name="Search" value="" alt="Search" id="searchbutton" />
      </form>
    </div>
  </div>
  <!-- end of header_bar -->
   <div class="clear" style="z-index:+1000">
    <ul type="none"class="dropdown" style="z-index:+1000">
      <li><a href="newstock1.jsp" class="green">New Stock Arrivals</a></li>
      <li><a href="view.jsp" class="blue">Daily Sales</a></li>
      <li><a href="view1.jsp" class="blue">Raw Orders</a></li>
      <li><a href="dump.jsp" class="pink">Dump</a></li>
      <li><a href="InStock.jsp" class="skyblue"> InStock</a></li>
      <li><a href="CustomerRecord.jsp" class="yellow">Customer Records</a></li>
      <li><a href="admin1.jsp" class="blue">Admin Home</a></li>
    </ul>
  </div>

  <!-- end of menu1 -->
  
  <div id="content">
    <div id="latest_product_gallery">
      <h2>Featured Products</h2>
      <p>&nbsp;</p>
      <div id="SlideItMoo_outer">
        <div id="SlideItMoo_inner">
          <div id="SlideItMoo_items">
            <div class="SlideItMoo_element"> <a href="#"> <img src="images/bakery5.jpg" alt="" width="109" height="97" /></a> </div>
            <div class="SlideItMoo_element"> <a href="#"> <img src="images/dairy6.jpg" alt="" width="109" height="97" /></a> </div>
            <div class="SlideItMoo_element"> <a href="#"> <img src="images/dessert3.jpg" alt="" width="109" height="97" /></a> </div>
            <div class="SlideItMoo_element"> <a href="#"> <img src="images/fruit1.jpg" alt="" width="109" height="97" /></a> </div>
            <div class="SlideItMoo_element"> <a href="#"> <img src="images/fruit2.jpg" alt="" width="109" height="97"/></a> </div>
            <div class="SlideItMoo_element"> <a href="#"> <img src="images/fruit4.jpg" alt="" width="109" height="97"/></a> </div>
            <div class="SlideItMoo_element"> <a href="#"> <img src="images/veg5.jpg" alt="" width="109" height="97"/></a> </div>
            <div class="SlideItMoo_element"> <a href="#"> <img src="images/beverages3.jpg" alt="" width="109" height="97"/></a> </div>
          </div>
        </div>
      </div>
    </div>
    <!-- end of latest_content_gallery -->
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
    
    <div class="content_section" style="width: 800px">
      <h2>Hello Admin</h2>
      <p><strong>Processed Orders</strong>:</p>
      <p>&nbsp;</p>
      
      <table border="2" width="800px">
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
    
    
    <% } %> 
    <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
     <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
     <form action="deleteold.jsp" method="get">
         <tr><td><input type="hidden" name="order" value="<%=rs.getInt(7)%>"><b>Order No.</b></td><td colspan="4"><%=rs.getInt(7)%></td><input type="hidden" name="pag" value="view.jsp"/></tr>
         <td colspan="5"><input type="submit" name="wish" value="delete"/></td>
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
           <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
    </div>
  <!-- end of content -->
   <div class="cleaner"></div>
  <div id="sidebar">
    <div class="sidebar_top"></div>
    <div class="sidebar_bottom"></div>
    <div class="sidebar_section">
      <h2>Categories</h2>
      <h2><a href="admin1.jsp">Main Admin Page</a></h2>
      <ul class="categories_list">
        <li><a href="newstock1.jsp">New Stock Arrival</a></li>
        <li><a href="view.jsp">Daily Sales</a></li>
        <li><a href="dump.jsp">Dump</a></li>
        <li><a href="InStock.jsp">InStock</a></li>
        <li><a href="CustomerRecord.jsp">Customer Records</a></li>
<li><a href="view1.jsp">Raw Orders</a></li>
      </ul></div>
  </div>
  <p>
    <!-- end of sidebar -->
</div>

<!-- end of wrapper -->
<div id="footer_wrapper">
  <div id="footer">
    <ul class="footer_menu">
      <li><a href="Partners&Suppliers.jsp">Partners and Suppliers</a></li>
      <li><a href="careers.jsp">Careers</a></li>
      <li><a href="termsand conditions.jsp">Terms &amp; Conditions</a></li>
      <li><a href="privacypolicy.jsp" class="last_menu" >Privacy Policy</a></li></ul>
    Copyright &copy; 2013 <a href="#">CSB III Year</a> | Designed by Students</div>
  <!-- end of footer -->
</div>
<!-- end of footer_wrapper -->
  </div>
</body>
</html>
