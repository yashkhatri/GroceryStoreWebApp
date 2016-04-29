<%@page contentType="text/html" pageEncoding="UTF-8" session="true" %>


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
    
      <div class="content_section" >
      <h2>FAQ's</h2>
     <div >
  <p>&nbsp;</p>
  
  <div id="accordion">
 
    
    <h3>How do I register?</h3>
	<div>
		<p>
		You can register by clicking on the "Register" link at the top right corner of the homepage. Please provide the information 
        in the form that appears. You can review the terms and conditions, provide your payment mode details and submit the                 registration information
		</p>
	</div>
    
    <h3>Are there any charges for registration?</h3>
	<div>
		<p>
		No. Registration on Bigbasket.com is absolutely free.
        </p></div>
	
    <h3>Do I have to necessarily register to shop on BigBasket?</h3>
	<div><p>You can surf and add products to the cart without registration but only   registered shoppers will be able to checkout and place orders.   Registered members have to be logged in at the time of checking out the   cart, they will be prompted to do so if they are not logged in.</p></div>
    
    
    <h3>Can I have multiple registrations?</h3>
	<div><p>Each email address and contact phone number can only be associated with one Bigbasket account.</p></div>
    
    <h3>Can I have multiple delivery addresses in same registration</h3>
	<div>
		<p>No, every account on Bigbasket can be associated with only one delivery   address. Slots available to you for delivery are shown depending on the   address associated with the account.</p></div>
        
        <h3>What is My Account?</h3>
	<div>
	  <p>My Account is the section you reach after you log in at Bigbasket.com.   My Account allows you to track your active orders, credit note details   as well as see your order history and update your contact details..</p>
	</div>
    <h3>How do I reset my password?</h3>
	<div>
	  <p>You need to enter your email address on the Login page and click on   forgot password. An email with a reset password will be sent to your   email address. With this, you can change your password. In case of any   further issues please contact our customer support team.</p>
	</div>
    <h3>What is delivery confirmation PIN, where I can find it &amp; can I edit it?</h3>
	<div>
	  <p>Delivery confirmation PIN is a unique 4 digit number tied to every   customer which enables you to give us service ratings at the time of   order delivery.</p>
	</div>
  <h3>What is My Shopping List?</h3>
	<div>
	  <p>My Shopping List is a comprehensive list of all the items previously   ordered by you on Bigbasket.com. This enables you to shop quickly and   easily in future</p>
	</div>
	
    <h3>How do I contact customer service?</h3>
	<div>
	  <p>Our customer service team is available throughout the week, all seven   days from 7 am to 10 pm. They can be reached at 9907058374 or via email at "theonlinegroceryshop@gmail.com"</p>
	</div><h3>What are your timings to contact customer service?</h3>
	<div>
	  <p>Our customer service team is available throughout the week, all seven days from 7 am to 10 pm.</p>
	</div>
	<h3>How can I give feedback on the quality of customer service?</h3>
	<div>
	  <p>Our customer support team constantly strives to ensure the best shopping   experience for all our customers. We would love to hear about your   experience with theonlinegroceryshop. Do write to us at "theonlinegroceryshop@gmail.com" in case of positive or negative feedback.</p>
	</div>
    </div>
    </div>
    
    </div>
  <!-- end of content -->
   <div class="cleaner"></div>
  <div id="sidebar">
    <div class="sidebar_top"></div>
    <div class="sidebar_bottom"></div>
    <div class="sidebar_section">
      <h2>Categories</h2>
      <ul class="categories_list">
        <li><a href="#">About Us</a></li>
        <li><a href="#">Phasellus eget lorem</a></li>
        <li><a href="#">Sed sit amet sem</a></li>
        <li><a href="#">Cras eget est vel</a></li>
        <li><a href="#">Quisque in ligula</a></li>
        <li><a href="#">Donec a massa dui</a></li>
        <li><a href="#">Aenean facilisis</a></li>
        <li><a href="#">Etiam vitae consequat</a></li></ul></div>
  </div>
  <p>
    <!-- end of sidebar --></p>
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
