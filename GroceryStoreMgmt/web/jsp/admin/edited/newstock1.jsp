<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Pink Shop</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../../finalfrontpage/edited/style.css" rel="stylesheet" type="text/css" />
<link href="../../finalfrontpage/edited/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" type="text/css" href="../../finalfrontpage/edited/stylesheet/styles.css" />
<script language="javascript" type="text/javascript">
function clearText(field) {
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>
<script language="javascript" type="text/javascript" src="../../finalfrontpage/edited/scripts/mootools-1.2.1-core.js"></script>
<script language="javascript" type="text/javascript" src="../../finalfrontpage/edited/scripts/mootools-1.2-more.js"></script>
<script language="javascript" type="text/javascript" src="../../finalfrontpage/edited/scripts/slideitmoo-1.1.js"></script>
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
      <li><a href="../../finalfrontpage/edited/finalfrontpage.html" class="current"><span>.01</span>Home</a></li>
      <li><a href="#"><span>.02</span>Login</a></li>
      <li><a href="../../Faqs/SimplejQueryDropdowns/faqs.html"><span>.03</span>FAQ's</a></li>
      <li><a href="#"><span>.04</span>Gallery</a></li>
      <li><a href="../../Contactus/SimplejQueryDropdowns/contactus.html"><span>.05</span>Contact us</a></li>
    </ul>
  </div>
  <!-- end of menu -->
  <div id="header_bar">
    <div id="header">
      <div class="right"></div>
      <h1><a href="#"> <img src="../../finalfrontpage/edited/images/logo.png" alt="" /><span>Online Grocery Store </span> </a></h1>
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
      <li><a href="newstock1.html" class="green">New Stock Arrivals</a></li>
      <li><a href="dailysales.jsp" class="blue">Daily Sales</a></li>
      <li><a href="dump.jsp" class="pink">Dump</a></li>
      <li><a href="InStock.jsp" class="skyblue"> InStock</a></li>
      <li><a href="CustomerRecord.jsp" class="yellow">Customer Records</a></li>
      <li><a href="admin1.html" class="blue">Admin Home</a></li>
    </ul>
  </div>

  <!-- end of menu1 -->
  
  <div id="content">
    <div id="latest_product_gallery">
      <h2>Featured Products</h2>
      <div id="SlideItMoo_outer">
        <div id="SlideItMoo_inner">
          <div id="SlideItMoo_items">
            <div class="SlideItMoo_element"> <a href="#"> <img src="../../finalfrontpage/edited/images/product_01.png" alt="" /></a> </div>
            <div class="SlideItMoo_element"> <a href="#"> <img src="../../finalfrontpage/edited/images/product_02.png" alt="" /></a> </div>
            <div class="SlideItMoo_element"> <a href="#"> <img src="../../finalfrontpage/edited/images/product_03.png" alt="" /></a> </div>
            <div class="SlideItMoo_element"> <a href="#"> <img src="../../finalfrontpage/edited/images/product_04.png" alt="" /></a> </div>
            <div class="SlideItMoo_element"> <a href="#"> <img src="../../finalfrontpage/edited/images/product_05.png" alt="" /></a> </div>
            <div class="SlideItMoo_element"> <a href="#"> <img src="../../finalfrontpage/edited/images/product_06.png" alt="" /></a> </div>
            <div class="SlideItMoo_element"> <a href="#"> <img src="../../finalfrontpage/edited/images/product_07.png" alt="" /></a> </div>
            <div class="SlideItMoo_element"> <a href="#"> <img src="../../finalfrontpage/edited/images/product_08.png" alt="" /></a> </div>
          </div>
        </div>
      </div>
    </div>
    <!-- end of latest_content_gallery -->
    
      <div class="content_section">
      <h2>Hello Admin</h2>
      <p><strong>NEW STOCK ARRIVALS</strong></p>
      <p>&nbsp;</p>
      <div id="newstock">
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <form action="process.jsp" method="get">
        <table align="center" width="331" height="197" cellpadding="2" cellspacing="2">
           <tr>
            <th scope="col">Product Id.</th>
            <th scope="col"><label for="pid"></label>
            <input type="text" name="pid" id="pid" /></th>
          </tr>
          <tr>
            <th scope="col">Article No.</th>
            <th scope="col"><label for="anum"></label>
            <input type="text" name="anum" id="anum" /></th>
          </tr>
          <tr>
            <td align="center"><strong>Item Name</strong></td>
            <td align="center"><label for="iname"></label>
            <input type="text" name="iname" id="iname" /></td>
          </tr>
          <tr>
            <td align="center"><strong>Quantity</strong></td>
            <td align="center"><label for="qty"></label>
            <input type="text" name="qty" id="qty" /></td>
          </tr>
          <tr>
            <td align="center"><strong>Price</strong></td>
            <td align="center"><label for="price"></label>
            <input type="text" name="price" id="price" /></td>
          </tr>
          <tr>
            <td align="center"><strong>MFG</strong></td>
            <td align="center"><label for="mfg"></label>
            <input type="text" name="mfgdt" id="mfg" /></td>
          </tr>
          <tr>
            <td align="center"><strong>Expiry</strong></td>
            <td align="center"><label for="expiry"></label>
            <input type="text" name="expdt" id="expiry" /></td>
          </tr>
        </table>
        <p>&nbsp;</p>
<p align="center">
  <input type="submit" name="Add" id="Add" value="Add to Stock" /> 
  &nbsp;&nbsp;&nbsp;<input type="reset" name="reset" id="reset" value="Reset" />
</p>
        </form>
        
<p align="center">&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
      </div>
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
      <h2><a href="admin1.html">Main Admin Page</a></h2>
      <ul class="categories_list">
        <li><a href="newstock1.html">New Stock Arrival</a></li>
        <li><a href="dailysales.html">Daily Sales</a></li>
        <li><a href="dump.html">Dump</a></li>
        <li><a href="InStock.html">InStock</a></li>
        <li><a href="CustomerRecord.html">Customer Records</a></li>
        <li><a href="#">Aenean facilisis</a></li>
        <li><a href="#">Etiam vitae consequat</a></li></ul></div>
  </div>
  <p>
    <!-- end of sidebar -->
</p>
</div>

<!-- end of wrapper -->
<div id="footer_wrapper">
  <div id="footer">
    <ul class="footer_menu">
      <li><a href="../../AboutUs/SimplejQueryDropdowns/aboutus.html">About us</a></li>
      <li><a href="#">Partners and Suppliers</a></li>
      <li><a href="#">Site Map</a></li>
      <li><a href="#">Careers</a></li>
      <li><a href="#">Payment</a></li>
      <li class="last_menu"><a href="#">Customer Service</a></li>
    </ul>
    Copyright &copy; 2048 <a href="#">Your Company Name</a> | Designed by <a href="http://www.templatemo.com/">Free CSS Templates</a></div>
  <!-- end of footer -->
</div>
<!-- end of footer_wrapper -->
  </div>
</body>
</html>
