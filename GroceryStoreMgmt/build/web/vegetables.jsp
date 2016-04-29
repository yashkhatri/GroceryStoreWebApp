<%@page contentType="text/html" pageEncoding="UTF-8" session="false" %>
<%
HttpSession session=request.getSession(false);
if( session==null)
       {response.sendRedirect("finalfrontpage.jsp");
       }
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>The Grocery Shop</title>
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
      </li>
      <li><a href="beverages.jsp" class="green">Beverages</a>
        <ul type="none"class="sub_menu">
                     
              <li><a href="#">TataTea Gold</a></li>
              <li><a href="#">Nested Ice Tea</a></li>
              <li><a href="#">Bru Instant Coffee</a></li>
              <li><a href="#">Bru Gold Coffee</a></li>
              <li><a href="#">Coke</a></li>
              <li><a href="#">Tang Orange</a></li>
            
              
      </ul>
      <li><a href="bakery.jsp" class="blue">Bakery</a>
        <ul type="none"class="sub_menu">
          <li><a href="#">Britannia Veg Cakes</a></li>
          <li><a href="#">Cadbury Cookies</a></li>
          <li><a href="#">Grandma's Rasin Cookies</a></li>
          <li><a href="#">Wheat Bread</a></li>
          <li><a href="#">Brown Bread</a></li>
          <li><a href="#">Garlic Bread</a></li>
         </ul>
      <li><a href="desserts.jsp" class="pink">Desserts</a>
        <ul type="none"class="sub_menu">
          <li><a href="#">Instant Dessert Mix</a></li>
          <li><a href="">Jodhpuri Moong Halwa </a></li>
          <li><a href="">ButterScotch Icecream</a><li>
           <li><a href="">Choclate Icecream</a></li>
          
          <li><a href="">Amul-Gulab Jamun MIx</a></li>
          <li><a href="">Custard Powder</a></li>
          </ul>
          </li>
                
      <li><a href="dairys.jsp" class="skyblue"> Dairys</a>
        <ul type="none"class="sub_menu">
          <li><a href="#">Amul-Full Cream Milk</a></li>
           <li><a href="#">Amul-Lite MIlk</a></li>
              <li><a href="#">Amul-Butter</a></li>
              <li><a href="#">Amul Spiced Milk</a></li>
          <li><a href="#">Nestle Milk Whitener</a></li>
             <li><a href="#">Swiss Yogurt</a></li>
             
            </ul>
          </li>
          
        
      <li><a href="vegetables.jsp" class="yellow">Vegetables</a>
        <ul type="none"class="sub_menu">
          <li><a href="#">Tomato</a></li>
           <li><a href="#">Bitter Gourd</a></li>
              <li><a href="#">Potato</a></li>
              <li><a href="#">Capsicum</a></li>
              <li><a href="#">Carrots</a></li>
              <li><a href="#">Spinach</a></li>
                         </ul>
          </li>
      
     
      <li><a href="fruits.jsp" class="skyblue">Fruits </a>
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
       
      <li><a href="viewcart.jsp" class="blue">My Shopping List </a>
        
      
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
    
      <div class="content_section">
      <h2>Vegetables</h2>
      <div class="product_box margin_r35"><form action="add.jsp" method="get">
        <h3>Tomato</h3>
        <div class="image_wrapper"> <a href="#"><img src="images/veg1.jpg" alt="" width="190" height="120" /></a> </div>
       <p class="price"><input type="hidden"  name="page"  value="vegetables.jsp"/><input type="hidden"  name="pid"  value="VE01TO"/>Price: Rs.15</p>
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
      </div>
      <div class="product_box margin_r35"><form action="add.jsp" method="get">
        <h3>Bitter Gourd</h3>
        <div class="image_wrapper"> <a href="#"><img src="images/veg2.jpg" alt="" width="190" height="120" /></a> </div>
        <p class="price"><input type="hidden"  name="page"  value="vegetables.jsp"/><input type="hidden"  name="pid"  value="VE02BG"/>Price: Rs.20</p>
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
        
        </div>
        
      <div class="product_box"><form action="add.jsp" method="get">
        <h3>Potato</h3>
        <div class="image_wrapper"> <a href="#"><img src="images/veg3.jpg" alt="" width="190" height="120" /></a> </div>
       <p class="price"><input type="hidden"  name="page"  value="vegetables.jsp"/><input type="hidden"  name="pid"  value="VE03PO"/>Price: Rs.10</p>
       
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
        
        </div>
      <div class="cleaner"></div>
      <div class="product_box margin_r35"><form action="add.jsp" method="get">
        <h3>Capsicum</h3>
        <div class="image_wrapper"> <a href="#"><img src="images/veg4.jpg" alt="" width="190" height="120"  /></a> </div>
      <p class="price"><input type="hidden"  name="page"  value="vegetables.jsp"/><input type="hidden"  name="pid"  value="VE04CM"/>Price: Rs.20</p>
       
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
        </div>
      <div class="product_box margin_r35"><form action="add.jsp" method="get">
        <h3>Carrots</h3>
        <div class="image_wrapper"> <a href="#"><img src="images/veg5.jpg" alt="" width="190" height="120"  /></a> </div>
       <p class="price"><input type="hidden"  name="page"  value="vegetables.jsp"/><input type="hidden"  name="pid"  value="VE05CS"/>Price: Rs.12</p>
       
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

        </div> 
      <div class="product_box"><form action="add.jsp" method="get">
        <h3>Spinach</h3>
        <div class="image_wrapper"> <a href="#"><img src="images/veg6.jpg" alt="" width="190" height="120"  /></a> </div>
       <p class="price"><input type="hidden"  name="page"  value="vegetables.jsp"/><input type="hidden"  name="pid"  value="VE06SP"/>Price: Rs.15</p>
       
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

        </div>
      <div class="cleaner"></div>
         </div>

  
  </div>
  <!-- end of content -->
  <div class="cleaner"></div>
  <div id="sidebar">
    <div class="sidebar_top"></div>
    <div class="sidebar_bottom"></div>
    <div class="sidebar_section">
      <h2>Categories</h2>
      <h2><a href="finalfrontpage.jsp">Home</a></h2>
      <ul class="categories_list">
        <li><a href="bakery.jsp">Bakery</a></li>
        <li><a href="beverages.jsp">Beverages</a></li>
        <li><a href="dairys.jsp">Dairy</a></li>
        <li><a href="desserts.jsp">Desserts</a></li>
        <li><a href="fruits.jsp">Fruits</a></li>
        <li><a href="vegetables.jsp">Vegetables</a></li>
      </ul>
    </div>
  </div>
  <p></p>
    <!-- end of sidebar -->
 <div id="sidebar1">
    <div class="sidebar_top1"></div>
    <div class="sidebar_bottom1"></div>
    <div class="sidebar_section1">
      <form action="login.jsp" method="get">
   <p><b>Click here to confirm order</b></p>
   click here<br></br>
  <input type="image" src="images/submitorder.gif" alt="Submit"/>
           </form>
    </div>
 </div>
<!-- end of sidebar1 -->
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
