<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%
HttpSession session=request.getSession(false);
if( session==null)
       {response.sendRedirect("admin1.jsp");
       }%>
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
     <%@page import="bean.RegisterDao,java.sql.ResultSet" %>>
<%RegisterDao rd = new RegisterDao();
 ResultSet rs = rd.getTotalStock();
 StringBuffer sb = new StringBuffer();
sb.append("  <div class=content_section>");
     sb.append(" <h2>Hello Admin</h2>");
      sb.append("<p><strong>Total Stock Details:</strong></p>");
      sb.append("<p>&nbsp;</p>");



 sb.append("<table width=800 border=2 cellspacing=2 cellpadding=2>");
          sb.append("<tr>");
          sb.append("  <th scope=col>Product_Id</th>");
          sb.append("<th scope=col>Article_Num</th>");
          sb.append("<th scope=col>Item_Name</th>");
          sb.append("<th scope=col>Quantity</th>");
          sb.append("<th scope=col>Price</th>");
          sb.append("  <th scope=col>MFG_Date</th>");
          sb.append("  <th scope=col>EXP_Date</th>");
          sb.append(" </tr>");

          while(rs.next())
 {
sb.append("<tr>");
sb.append("<td>");
sb.append(rs.getString(1));
sb.append("</td>");
sb.append("<td>");
sb.append(rs.getString(7));
sb.append("</td>");
sb.append("<td>");
sb.append(rs.getString(2));
sb.append("</td>");
sb.append("<td>");
sb.append(rs.getString(4));
sb.append("</td>");
sb.append("<td>");
sb.append(rs.getString(3));
sb.append("</td>");
sb.append("<td>");
sb.append(rs.getString(5));
sb.append("</td>");
sb.append("<td>");
sb.append(rs.getString(6));
sb.append("</td>");

sb.append("</tr>");

}
sb.append("</table>");
out.print(sb);
sb.append("</div>");

%>
<!--
<div class="content_section">
      <h2>Hello Admin</h2>
      <p><strong>InStock Products</strong>:</p>
      <p>&nbsp;</p>
      <table width="650" border="2" cellspacing="2" cellpadding="2">
        <tr>
          <th scope="col">Article Num</th>
          <th scope="col">Item Name</th>
          <th scope="col">Quantity</th>
          <th scope="col">Price</th>
          <th scope="col">MFG</th>
          <th scope="col">Expiry</th>
          <th scope="col">&nbsp;</th>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
      </table>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
</div>
  <!-- end of content --><!--
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

