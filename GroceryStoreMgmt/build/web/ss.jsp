<%-- 
    Document   : index
    Created on : Apr 18, 2013, 3:35:37 AM
    Author     : rockstar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%
//HttpSession session=request.getSession(false);
session.setAttribute("l","fuck");%>
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
      <h1><a href="#"> <img src="images/logo.png" alt="" /><span>Online Grocery Store </span> </a></h1>
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
    <ul type="none" class="dropdown" style="z-index:+1000">
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
        
      
    </ul>
  </div>

  <!-- end of menu1 -->
  
  <div id="content">
    <div id="latest_product_gallery">
      <h2>Featured Products</h2>
      <div id="SlideItMoo_outer">
        <div id="SlideItMoo_inner">
          <div id="SlideItMoo_items">
            <div class="SlideItMoo_element"> <a href="#"> <img src="images/product_01.png" alt="" /></a> </div>
            <div class="SlideItMoo_element"> <a href="#"> <img src="images/product_02.png" alt="" /></a> </div>
            <div class="SlideItMoo_element"> <a href="#"> <img src="images/product_03.png" alt="" /></a> </div>
            <div class="SlideItMoo_element"> <a href="#"> <img src="images/product_04.png" alt="" /></a> </div>
            <div class="SlideItMoo_element"> <a href="#"> <img src="images/product_05.png" alt="" /></a> </div>
            <div class="SlideItMoo_element"> <a href="#"> <img src="images/product_06.png" alt="" /></a> </div>
            <div class="SlideItMoo_element"> <a href="#"> <img src="images/product_07.png" alt="" /></a> </div>
            <div class="SlideItMoo_element"> <a href="#"> <img src="images/product_08.png" alt="" /></a> </div>
          </div>
        </div>
      </div>
    </div>
    <!-- end of latest_content_gallery -->
    
      <div class="content_section">
      <h2>Beverages</h2>
      <div class="product_box margin_r35"><form action="add.jsp" method="get">
        <h3>Tata Tea Gold</h3>
        <div class="image_wrapper"> <a href="#"><img src="images/beverages1.jpg" alt="" width="190" height="120" /></a> </div>
        <p class="price"><input type="hidden"  name="pid"  value="1"/>Price: Rs.60</p>
        <p><a href="#">Detail</a> | <a href="#">Add to Cart</a></p>
        <p>
          <label><strong>Quantity   </strong></label>
          <select name="qty" id="qty">
            <option selected="selected">1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
            <option>6</option>
            <option>7</option>
            <option>8</option>
            <option>9</option>
            <option>10</option>


          </select>
        </p>
<br></br>
<input type="image" src="images/shop.png" alt="Submit"/>


        

 

</form>
      </div><div class="product_box margin_r35"><form action="add.jsp" method="get">
        <h3>Nestea Iced Tea</h3>
        <div class="image_wrapper"> <a href="#"><img src="images/beverages2.jpg" alt="" width="190" height="120"  /></a> </div>
        <p class="price"><input type="hidden"  name="pid"  value="1"/>Price: Rs.75</p>
        <a href="#">Detail</a> | <a href="#"><a href="#">Add to Cart</a>
        <p>
          <label><strong>Quantity   </strong></label>
          <select name="qty" id="qty">
            <option selected="selected">1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
            <option>6</option>
            <option>7</option>
            <option>8</option>
            <option>9</option>
            <option>10</option>


          </select>
        </p>
<br></br>
<input type="image" src="images/shop.png" alt="Submit"/>


        

 

</form>
      </div><div class="product_box">
        <h3>Bru Instant Coffee</h3>
        <div class="image_wrapper"> <a href="#"><img src="images/beverages3.jpg" alt="" width="190" height="120" /></a> </div>
        <p class="price"><input type="hidden"  name="pid"  value="1"/>Price: Rs.55</p>
        <a href="#">Detail</a> |<strong>Add to Cart</strong>
        <p>
          <label><strong>Quantity   </strong></label>
          <select name="qty" id="qty">
            <option selected="selected">1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
            <option>6</option>
            <option>7</option>
            <option>8</option>
            <option>9</option>
            <option>10</option>


          </select>
        </p>
<br></br>
<input type="image" src="images/shop.png" alt="Submit"/>


        

 

</form>
      </div><div class="cleaner"></div>
      <div class="product_box margin_r35"><form action="add.jsp" method="get">
        <h3>Bru Gold Coffee</h3>
        <div class="image_wrapper"> <a href="#"><img src="images/beverages4.jpg" alt="" width="190" height="120"  /></a> </div>
        <p class="price"><input type="hidden"  name="pid"  value="1"/>Price: Rs.65</p>
        <a href="#">Detail</a> |<strong>Add to Cart</strong>
        <p>
          <label><strong>Quantity   </strong></label>
          <select name="qty" id="qty">
            <option selected="selected">1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
            <option>6</option>
            <option>7</option>
            <option>8</option>
            <option>9</option>
            <option>10</option>


          </select>
        </p>
<br></br>
<input type="image" src="images/shop.png" alt="Submit"/>


        

 

</form>
      </div><div class="product_box margin_r35"><form action="add.jsp" method="get">
        <h3>Coke</h3>
        <div class="image_wrapper"> <a href="#"><img src="images/beverages5.jpg" alt="" width="190" height="120" /></a> </div>
        <p class="price"><input type="hidden"  name="pid"  value="1"/>Price: Rs.25</p>
        <a href="#">Detail</a> |<strong>Add to Cart</strong>
        <p>
          <label><strong>Quantity   </strong></label>
          <select name="qty" id="qty">
            <option selected="selected">1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
            <option>6</option>
            <option>7</option>
            <option>8</option>
            <option>9</option>
            <option>10</option>


          </select>
        </p>
<br></br>
<input type="image" src="images/shop.png" alt="Submit"/>


        

 

</form>
      </div><div class="product_box">
        <h3>Tang-Orange </h3>
        <div class="image_wrapper"> <a href="#"><img src="images/beverages6.jpg" alt="" width="190" height="120"  /></a> </div>
        <p class="price"><input type="hidden"  name="pid"  value="1"/>Price: Rs.65</p>
        <a href="#">Detail</a> |<strong>Add to Cart</strong>
        <p>
          <label><strong>Quantity   </strong></label>
          <select name="qty" id="qty">
            <option selected="selected">1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
            <option>6</option>
            <option>7</option>
            <option>8</option>
            <option>9</option>
            <option>10</option>


          </select>
        </p>
<br></br>
<input type="image" src="images/shop.png" alt="Submit"/>


        

 

</form>
      </div><div class="cleaner"></div>
     </div>

  
  </div>
  <!-- end of content -->
<div id="sidebar">
    <div class="sidebar_top"></div>
    <div class="sidebar_bottom"></div>
    <div class="sidebar_section">
            <div class="cleaner"></div>
    </div>
    <div class="sidebar_section">
           </ul>
    </div>
    <div class="sidebar_section">
      <h2>Discounts</h2>
      <div class="image_wrapper"><a href="#"><img src="images/image_01.jpg" alt="" /></a></div>
      <div class="discount"><span>25% off</span> | <a href="#">Read more</a></div>
    </div>
  </div>
  <!-- end of sidebar -->
 <div id="sidebar1">
    <div class="sidebar_top1"></div>
    <div class="sidebar_bottom1"></div>
    <div class="sidebar_section1">
            <div class="cleaner"></div>
    </div>
   <div class="sidebar_section1">
           </ul>
    </div><div class="sidebar_section1">
    </div>
</div>
  <!-- en  <!-- end of sidebar -->
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

