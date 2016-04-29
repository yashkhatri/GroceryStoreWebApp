package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminlogin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<head>\r\n");
      out.write("<title>Pink Shop</title>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<link href=\"SpryMenuBarHorizontal.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"stylesheet/styles.css\" />\r\n");
      out.write("<script language=\"javascript\" type=\"text/javascript\">\r\n");
      out.write("function clearText(field) {\r\n");
      out.write("    if (field.defaultValue == field.value) field.value = '';\r\n");
      out.write("    else if (field.value == '') field.value = field.defaultValue;\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("<script language=\"javascript\" type=\"text/javascript\" src=\"scripts/mootools-1.2.1-core.js\"></script>\r\n");
      out.write("<script language=\"javascript\" type=\"text/javascript\" src=\"scripts/mootools-1.2-more.js\"></script>\r\n");
      out.write("<script language=\"javascript\" type=\"text/javascript\" src=\"scripts/slideitmoo-1.1.js\"></script>\r\n");
      out.write("<script language=\"javascript\" type=\"text/javascript\">\r\n");
      out.write("window.addEvents({\r\n");
      out.write("    'domready': function () { /* thumbnails example , div containers */\r\n");
      out.write("        new SlideItMoo({\r\n");
      out.write("            overallContainer: 'SlideItMoo_outer',\r\n");
      out.write("            elementScrolled: 'SlideItMoo_inner',\r\n");
      out.write("            thumbsContainer: 'SlideItMoo_items',\r\n");
      out.write("            itemsVisible: 5,\r\n");
      out.write("            elemsSlide: 3,\r\n");
      out.write("            duration: 200,\r\n");
      out.write("            itemsSelector: '.SlideItMoo_element',\r\n");
      out.write("            itemWidth: 140,\r\n");
      out.write("            showControls: 1\r\n");
      out.write("        });\r\n");
      out.write("    },\r\n");
      out.write("\r\n");
      out.write("});\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div id=\"wrapper\">\r\n");
      out.write("\r\n");
      out.write("  <div id=\"menu\">\r\n");
      out.write("    <ul>\r\n");
      out.write("      <li><a href=\"finalfrontpage.jsp\" class=\"current\"><span>.01</span>Home</a></li>\r\n");
      out.write("      <li><a href=\"aboutus.jsp\"><span>.02</span>About Us</a></li>\r\n");
      out.write("      <li><a href=\"faq's.jsp\"><span>.03</span>FAQ's</a></li>\r\n");
      out.write("      <li><a href=\"contactus.jsp\"><span>.04</span>Contact Us</a></li>\r\n");
      out.write("    </ul>\r\n");
      out.write("  </div>\r\n");
      out.write("  <!-- end of menu -->\r\n");
      out.write("  <div id=\"header_bar\">\r\n");
      out.write("    <div id=\"header\">\r\n");
      out.write("      <div class=\"right\"></div>\r\n");
      out.write("      <h1><a href=\"finalfrontpage.jsp\"> <img src=\"images/logo.png\" alt=\"\" /><span>Online Grocery Store </span> </a></h1>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div id=\"search_box\">\r\n");
      out.write("      <form action=\"#\" method=\"get\">\r\n");
      out.write("        <input type=\"text\" value=\"Enter keyword here...\" name=\"q\" size=\"10\" id=\"searchfield\" onfocus=\"clearText(this)\" onblur=\"clearText(this)\" />\r\n");
      out.write("        <input type=\"submit\" name=\"Search\" value=\"\" alt=\"Search\" id=\"searchbutton\" />\r\n");
      out.write("      </form>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("  <!-- end of header_bar -->\r\n");
      out.write("  <div class=\"clear\" style=\"z-index:+1000\">\r\n");
      out.write("    <ul type=\"none\"class=\"dropdown\" style=\"z-index:+1000\">\r\n");
      out.write("      </li>\r\n");
      out.write("      <li><a href=\"beverages.jsp\" class=\"green\">Beverages</a>\r\n");
      out.write("        <ul type=\"none\"class=\"sub_menu\">\r\n");
      out.write("                     \r\n");
      out.write("              <li><a href=\"#\">TataTea Gold</a></li>\r\n");
      out.write("              <li><a href=\"#\">Nested Ice Tea</a></li>\r\n");
      out.write("              <li><a href=\"#\">Bru Instant Coffee</a></li>\r\n");
      out.write("              <li><a href=\"#\">Bru Gold Coffee</a></li>\r\n");
      out.write("              <li><a href=\"#\">Coke</a></li>\r\n");
      out.write("              <li><a href=\"#\">Tang Orange</a></li>\r\n");
      out.write("            \r\n");
      out.write("              \r\n");
      out.write("      </ul>\r\n");
      out.write("      <li><a href=\"bakery.jsp\" class=\"blue\">Bakery</a>\r\n");
      out.write("        <ul type=\"none\"class=\"sub_menu\">\r\n");
      out.write("          <li><a href=\"#\">Britannia Veg Cakes</a></li>\r\n");
      out.write("          <li><a href=\"#\">Cadbury Cookies</a></li>\r\n");
      out.write("          <li><a href=\"#\">Grandma's Rasin Cookies</a></li>\r\n");
      out.write("          <li><a href=\"#\">Wheat Bread</a></li>\r\n");
      out.write("          <li><a href=\"#\">Brown Bread</a></li>\r\n");
      out.write("          <li><a href=\"#\">Garlic Bread</a></li>\r\n");
      out.write("         </ul>\r\n");
      out.write("      <li><a href=\"desserts.jsp\" class=\"pink\">Desserts</a>\r\n");
      out.write("        <ul type=\"none\"class=\"sub_menu\">\r\n");
      out.write("          <li><a href=\"#\">Instant Dessert Mix</a></li>\r\n");
      out.write("          <li><a href=\"\">Jodhpuri Moong Halwa </a></li>\r\n");
      out.write("          <li><a href=\"\">ButterScotch Icecream</a><li>\r\n");
      out.write("           <li><a href=\"\">Choclate Icecream</a></li>\r\n");
      out.write("          \r\n");
      out.write("          <li><a href=\"\">Amul-Gulab Jamun MIx</a></li>\r\n");
      out.write("          <li><a href=\"\">Custard Powder</a></li>\r\n");
      out.write("          </ul>\r\n");
      out.write("          </li>\r\n");
      out.write("                \r\n");
      out.write("      <li><a href=\"dairys.jsp\" class=\"skyblue\"> Dairys</a>\r\n");
      out.write("        <ul type=\"none\"class=\"sub_menu\">\r\n");
      out.write("          <li><a href=\"#\">Amul-Full Cream Milk</a></li>\r\n");
      out.write("           <li><a href=\"#\">Amul-Lite MIlk</a></li>\r\n");
      out.write("              <li><a href=\"#\">Amul-Butter</a></li>\r\n");
      out.write("              <li><a href=\"#\">Amul Spiced Milk</a></li>\r\n");
      out.write("          <li><a href=\"#\">Nestle Milk Whitener</a></li>\r\n");
      out.write("             <li><a href=\"#\">Swiss Yogurt</a></li>\r\n");
      out.write("             \r\n");
      out.write("            </ul>\r\n");
      out.write("          </li>\r\n");
      out.write("          \r\n");
      out.write("        \r\n");
      out.write("      <li><a href=\"vegetables.jsp\" class=\"yellow\">Vegetables</a>\r\n");
      out.write("        <ul type=\"none\"class=\"sub_menu\">\r\n");
      out.write("          <li><a href=\"#\">Tomato</a></li>\r\n");
      out.write("           <li><a href=\"#\">Bitter Gourd</a></li>\r\n");
      out.write("              <li><a href=\"#\">Potato</a></li>\r\n");
      out.write("              <li><a href=\"#\">Capsicum</a></li>\r\n");
      out.write("              <li><a href=\"#\">Carrots</a></li>\r\n");
      out.write("              <li><a href=\"#\">Spinach</a></li>\r\n");
      out.write("                         </ul>\r\n");
      out.write("          </li>\r\n");
      out.write("      \r\n");
      out.write("     \r\n");
      out.write("      <li><a href=\"fruits.jsp\" class=\"skyblue\">Fruits </a>\r\n");
      out.write("        <ul type=\"none\"class=\"sub_menu\">\r\n");
      out.write("         \r\n");
      out.write("            \r\n");
      out.write("             <li><a href=\"#\">Apple</a></li>\r\n");
      out.write("          <li><a href=\"#\">Green Apple</a></li>\r\n");
      out.write("          <li><a href=\"#\">Banana</a></li>\r\n");
      out.write("          <li><a href=\"#\"> Strawberry </a></li>\r\n");
      out.write("              <li><a href=\"#\">Papaya</a></li>\r\n");
      out.write("              <li><a href=\"#\">Mango\r\n");
      out.write("</a></li>\r\n");
      out.write("              \r\n");
      out.write("            \r\n");
      out.write("         \r\n");
      out.write("           </ul>\r\n");
      out.write("          </li>\r\n");
      out.write("       \r\n");
      out.write("      <li><a href=\"viewcart.jsp\" class=\"blue\">My Shopping List </a>\r\n");
      out.write("        \r\n");
      out.write("      \r\n");
      out.write("    </ul>\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("  <!-- end of menu1 -->\r\n");
      out.write("  \r\n");
      out.write("  <div id=\"content\">\r\n");
      out.write("    <div id=\"latest_product_gallery\">\r\n");
      out.write("      <h2>Featured Products</h2>\r\n");
      out.write("      <p>&nbsp;</p>\r\n");
      out.write("      <div id=\"SlideItMoo_outer\">\r\n");
      out.write("        <div id=\"SlideItMoo_inner\">\r\n");
      out.write("          <div id=\"SlideItMoo_items\">\r\n");
      out.write("            <div class=\"SlideItMoo_element\"> <a href=\"#\"> <img src=\"images/bakery5.jpg\" alt=\"\" width=\"109\" height=\"97\" /></a> </div>\r\n");
      out.write("            <div class=\"SlideItMoo_element\"> <a href=\"#\"> <img src=\"images/dairy6.jpg\" alt=\"\" width=\"109\" height=\"97\" /></a> </div>\r\n");
      out.write("            <div class=\"SlideItMoo_element\"> <a href=\"#\"> <img src=\"images/dessert3.jpg\" alt=\"\" width=\"109\" height=\"97\" /></a> </div>\r\n");
      out.write("            <div class=\"SlideItMoo_element\"> <a href=\"#\"> <img src=\"images/fruit1.jpg\" alt=\"\" width=\"109\" height=\"97\" /></a> </div>\r\n");
      out.write("            <div class=\"SlideItMoo_element\"> <a href=\"#\"> <img src=\"images/fruit2.jpg\" alt=\"\" width=\"109\" height=\"97\"/></a> </div>\r\n");
      out.write("            <div class=\"SlideItMoo_element\"> <a href=\"#\"> <img src=\"images/fruit4.jpg\" alt=\"\" width=\"109\" height=\"97\"/></a> </div>\r\n");
      out.write("            <div class=\"SlideItMoo_element\"> <a href=\"#\"> <img src=\"images/veg5.jpg\" alt=\"\" width=\"109\" height=\"97\"/></a> </div>\r\n");
      out.write("            <div class=\"SlideItMoo_element\"> <a href=\"#\"> <img src=\"images/beverages3.jpg\" alt=\"\" width=\"109\" height=\"97\"/></a> </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- end of latest_content_gallery -->\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    <div class=\"content_section\" style=\"width: 800px\">\r\n");
      out.write("      <h2>Hello Admin</h2>\r\n");
      out.write("      <p><strong>Login Required</strong>:</p>\r\n");
      out.write("      <p>&nbsp;</p>\r\n");
      out.write("         <form action=\"adminloginservlet.jsp\" method=\"get\">\r\n");
      out.write("        <table border=\"1\" width=\"800px\" cellspacing=\"1\" cellpadding=\"1\" >\r\n");
      out.write("            <thead>\r\n");
      out.write("               <caption>Login</caption ></thead>\r\n");
      out.write("            <tbody>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td>Username</td>\r\n");
      out.write("                    <td><input type=\"text\" name=\"usm\" value=\"\" size=\"20\" /></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td>password</td>\r\n");
      out.write("                    <td><input type=\"password\" name=\"pass\" size=\"20\"/></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td colspan=\"2\"><input type=\"submit\" name=\"submit\" value=\"login\"/></td>\r\n");
      out.write("                    \r\n");
      out.write("                </tr>\r\n");
      out.write("            </tbody>\r\n");
      out.write("        </table>\r\n");
      out.write("            </form>\r\n");
      out.write("\r\n");
      out.write("         \r\n");
      out.write("          \r\n");
      out.write("           <p>&nbsp;</p>\r\n");
      out.write("      <p>&nbsp;</p>\r\n");
      out.write("      <p>&nbsp;</p>\r\n");
      out.write("      <p>&nbsp;</p>\r\n");
      out.write("      <p>&nbsp;</p>\r\n");
      out.write("      <p>&nbsp;</p>\r\n");
      out.write("      <p>&nbsp;</p>\r\n");
      out.write("    </div>\r\n");
      out.write("  <!-- end of content -->\r\n");
      out.write("  \r\n");
      out.write("\r\n");
      out.write("<!-- end of wrapper -->\r\n");
      out.write("<div id=\"footer_wrapper\">\r\n");
      out.write("  <div id=\"footer\">\r\n");
      out.write("    <ul class=\"footer_menu\">\r\n");
      out.write("      <li><a href=\"Partners&Suppliers.jsp\">Partners and Suppliers</a></li>\r\n");
      out.write("      <li><a href=\"careers.jsp\">Careers</a></li>\r\n");
      out.write("      <li><a href=\"termsand conditions.jsp\">Terms &amp; Conditions</a></li>\r\n");
      out.write("      <li><a href=\"privacypolicy.jsp\" class=\"last_menu\" >Privacy Policy</a></li></ul>\r\n");
      out.write("    Copyright &copy; 2013 <a href=\"#\">CSB III Year</a> | Designed by Students</div>\r\n");
      out.write("  <!-- end of footer -->\r\n");
      out.write("</div>\r\n");
      out.write("<!-- end of footer_wrapper -->\r\n");
      out.write("  </div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}