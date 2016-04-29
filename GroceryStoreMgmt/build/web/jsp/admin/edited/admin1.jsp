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
      </li>
      <li><a href="../../products/edited/beverages.html" class="green">Beverages</a>
        <ul type="none"class="sub_menu">
                     
              <li><a href="#">TataTea Gold</a></li>
              <li><a href="#">Nested Ice Tea</a></li>
              <li><a href="#">Bru Instant Coffee</a></li>
              <li><a href="#">Bru Gold Coffee</a></li>
              <li><a href="#">Coke</a></li>
              <li><a href="#">Tang Orange</a></li>
            
              
      </ul>
      <li><a href="../../products/edited/bakery.html" class="blue">Bakery</a>
        <ul type="none"class="sub_menu">
          <li><a href="#">Britannia Veg Cakes</a></li>
          <li><a href="#">Cadbury Cookies</a></li>
          <li><a href="#">Grandma's Rasin Cookies</a></li>
          <li><a href="#">Wheat Bread</a></li>
          <li><a href="#">Brown Bread</a></li>
          <li><a href="#">Garlic Bread</a></li>
         </ul>
      <li><a href="../../products/edited/desserts.html" class="pink">Desserts</a>
        <ul type="none"class="sub_menu">
          <li><a href="#">Instant Dessert Mix</a></li>
          <li><a href="">Jodhpuri Moong Halwa </a></li>
          <li><a href="">ButterScotch Icecream</a><li>
           <li><a href="">Choclate Icecream</a></li>
          
          <li><a href="">Amul-Gulab Jamun MIx</a></li>
          <li><a href="">Custard Powder</a></li>
          </ul>
          </li>
                
      <li><a href="../../products/edited/dairys.html" class="skyblue"> Dairys</a>
        <ul type="none"class="sub_menu">
          <li><a href="#">Amul-Full Cream Milk</a></li>
           <li><a href="#">Amul-Lite MIlk</a></li>
              <li><a href="#">Amul-Butter</a></li>
              <li><a href="#">Amul Spiced Milk</a></li>
          <li><a href="#">Nestle Milk Whitener</a></li>
             <li><a href="#">Swiss Yogurt</a></li>
             
            </ul>
          </li>
          
        
      <li><a href="../../products/edited/vegetables.html" class="yellow">Vegetables</a>
        <ul type="none"class="sub_menu">
          <li><a href="#">Tomato</a></li>
           <li><a href="#">Bitter Gourd</a></li>
              <li><a href="#">Potato</a></li>
              <li><a href="#">Capsicum</a></li>
              <li><a href="#">Carrots</a></li>
              <li><a href="#">Spinach</a></li>
                         </ul>
          </li>
      
     
      <li><a href="../../products/edited/fruits.html" class="skyblue">Fruits </a>
        <ul type="none"class="sub_menu">
         
            
             <li><a href="#">Apple</a></li>
          <li><a href="#">Green Apple</a></li>
          <li><a href="#">Banana</a></li>
          <li><a href="#"> Strawberry </a></li>
              <li><a href="#">Papaya</a></li>
              <li><a href="#">Mango
</a></li>
              
            
         
           </ul>
          </li>
       
      <li><a href="../../Showcart/edited/showcart.html" class="blue">My Shopping List </a>
       <li><a href="admin1.html" class="blue">Admin Home</a>
        
        
      
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
      <p>&nbsp;</p>
      <blockquote>
        <blockquote>
          <blockquote>
            <blockquote>
              <blockquote>
                <blockquote>
                  <p align="justify"><a href="newstock1.html">NEW STOCK ARRIVAL</a></p>
                  <p align="justify"><a href="Web Pages\view.jsp">DAILY SALES</a></p>
                  <p align="justify"><a href="dump.html">DUMP</a></p>
                  <p align="justify"><a href="InStock.html">INSTOCK</a></p>
                  <p align="justify"><a href="CustomerRecord.html">CUSTOMER RECORD</a></p>
                </blockquote>
              </blockquote>
            </blockquote>
          </blockquote>
        </blockquote>
        </blockquote>
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
