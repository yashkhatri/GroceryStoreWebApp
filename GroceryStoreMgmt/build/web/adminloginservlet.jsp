<%-- 
    Document   : adminloginservlet
    Created on : Apr 28, 2013, 9:15:20 PM
    Author     : hcl
--%>

<%@page import="bean.RegisterDao"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="mypack.MyCon"%>
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<%
String usm =request.getParameter("usm");
String pass =request.getParameter("pass");

String dumpact =null;
int x=0;

if(usm.equals("admin") && pass.equals("admin") )
       {
           // dumpact="yes";
            //Dump d=new Dump();
            //x=d.dump(dumpact);
           // out.println("success");
            //out.println(x);
   
      
    Connection con=null;
        try {
            con = MyCon.getConnection();
        } catch (Exception ex) {
        }
    try
        {
          Date now = new Date();
         DateFormat df=new SimpleDateFormat("dd/MM/yyyy");
          String dt = (df.format(now));
          //out.print(dt);
        //System.out.print((mediumDf.format(now)));
            PreparedStatement ps=con.prepareStatement("select * from product where exp = (?)");
            ps.setString(1,dt);
            //int rs=ps.executeUpdate();
          ResultSet rs=ps.executeQuery();
          int status=0;
          
          while(rs.next())
                           {
          PreparedStatement ps1=con.prepareStatement("insert into dump values(?,?,?,?,?,?,?)");
			ps1.setString(1,rs.getString(1));
			ps1.setString(7,rs.getString(7));
			ps1.setString(2,rs.getString(2));
                        ps1.setString(4,rs.getString(3));
                        ps1.setString(3,rs.getString(4));
                        ps1.setString(5,rs.getString(5));
                        ps1.setString(6,rs.getString(6));

			
		status=status+ps1.executeUpdate();
                               }
                //   out.print(status);
            //out.print("success1");
            
          }

        catch(Exception e)
        {
            e.printStackTrace();
        }
  
   
    
    try
        {
          Date now = new Date();
         DateFormat df=new SimpleDateFormat("dd/MM/yyyy");
          String dt = (df.format(now));
          //out.print(dt);
        //System.out.print((mediumDf.format(now)));
          System.out.println(dt);  
          PreparedStatement ps=con.prepareStatement("delete from product where exp = (?)");
            ps.setString(1,dt);
            int rs=ps.executeUpdate();
          //out.print(rs);
            /* Statement stmt=con.createStatement();
            int d =stmt.executeUpdate("delete * from Stock where Expiry = ?  ");
       */
          }

        catch(Exception e)
        {
            e.printStackTrace();
        }

    
    
            session.setAttribute("check", "admin");
    
            response.sendRedirect("admin1.jsp");
    
}
else
       {
response.sendRedirect("erroradminlogin.jsp");
}

%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     
    </body>
</html>
