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
        <input type="text" value="Enter keyword here..." name="q" size="10" id="searchfield" onFocus="clearText(this)" onBlur="clearText(this)" />
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
</p>
</div>
<div>
 <div class="content_section" style="width: 800px">
      <h2>Hello Admin</h2>
      <p><strong>Raw Orders</strong>:</p>
      <p>&nbsp;</p>
      <%
String s=request.getParameter("wish");
String userid=request.getParameter("userid");
String k1[]=request.getParameterValues("qty");

String l1[]=request.getParameterValues("pid");

int order1;

order1=Integer.parseInt(request.getParameter("order"));

if(s.equals("delete"))
{
    
int order;
String pag;
order=Integer.parseInt(request.getParameter("order"));
pag=request.getParameter("pag");
Connection con=MyCon.getConnection();
PreparedStatement ps=con.prepareStatement("DELETE FROM userwish where orderno=?");
ps.setInt(1,order);
int i=ps.executeUpdate();
response.sendRedirect(pag);
}
else
{
    int i;
    Connection con=MyCon.getConnection();
    PreparedStatement ps;
String k[]=request.getParameterValues("qty");

String l[]=request.getParameterValues("pid");
for(i=0;i<k.length;i++){
ps=con.prepareStatement("update product set qty=qty-? where pid=?");
ps.setInt(1, Integer.parseInt(k[i]));
ps.setString(2,l[i]);
ps.executeUpdate();   

}
int order;
String pag;
order=Integer.parseInt(request.getParameter("order"));
pag=request.getParameter("pag");
try{
PreparedStatement rs=con.prepareStatement("update userwish set tag=? where orderno=?");
rs.setInt(2,order);
rs.setInt(1,1);
rs.executeUpdate();}
catch(Exception e){response.sendRedirect("outofstock.jsp");
}
//response.sendRedirect(pag);  
}
%>
<% 
Connection con=MyCon.getConnection();
PreparedStatement pr=con.prepareStatement("select * from customer where usm=?");
      pr.setString(1,userid);
      ResultSet rp=pr.executeQuery();
      rp.next();
      int i=0;
      int grandtotal=0;
      ResultSet dis;
      PreparedStatement ds;
      String s1;
      String s2;
      String name=rp.getString(1);
      String sname=rp.getString(2);
      String phone=rp.getString(4);
      String email=rp.getString(8);%>

   <table border="2" width="800px">
        <caption>BILL ONLINE GROCERY SHOP</caption>
        <tr><td>Customer Name</td><td colspan="4"><%=rp.getString(1)%>&nbsp;<%= rp.getString(2) %></td></tr>
     <tr><td>Customer Address</td><td colspan="4"><%=rp.getString(3)%></td></tr>
     <tr><td>Customer Phone Number</td><td colspan="4"><%=rp.getString(4)%></td></tr>
     <tr><td>Product Name</td><td>Qty</td><td>Price</td><td>Total</td>
         
                
 <% for(i=0;i<k1.length;i++){
    
ds=con.prepareStatement("select * from product where pid=?");
    ds.setString(1,l1[i]);
    dis=ds.executeQuery();
dis.next();
    s1=dis.getString(2);
grandtotal=grandtotal+ Integer.parseInt(k1[i])*Integer.parseInt(dis.getString(3));

out.println("<tr><td>"+s1+"</td>");
out.println("<td>"+k1[i]+"</td>");
out.println("<td>"+dis.getString(3)+"</td>");
out.println("<td>"+(Integer.parseInt(k1[i])*Integer.parseInt(dis.getString(3)))+"</td>");
if(i==k1.length-1){out.println("<tr><td>Grand total==>"+grandtotal+" Rsonly</td></tr>");
s2=request.getParameter("wish");
if(s2.equals("accept"))
mypack.SendEmail1.setmail(name, sname, phone, email,  grandtotal);
}
%> <% }%>
    </table>
    <p>&nbsp;</p>  
 <p>&nbsp;</p>  
 <p>&nbsp;</p>  
 <p>&nbsp;</p>  
 <p>&nbsp;</p>  </div>

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
