package mypack;

import java.sql.*;
import java.util.Enumeration;

import java.util.Vector;

public class customer {
    public Enumeration e;
    private String customername_first,customername_second,address,phone_number,usm,pass,email,repass;
   public customer(String customername_first,String customername_second,String usm,String pass,String repass,String address,String phone_number,String email){
 
          this.customername_first=customername_first;
          this.customername_second=customername_second;
          this.address=address;
          this.phone_number=phone_number;
                  this.usm=usm;
                  this.pass=pass;
                  this.email=email;
                  this.repass=repass;
   }
   public customer(){}
   
   public Boolean register(){
       try{
   Connection con=MyCon.getConnection();
   PreparedStatement ps=con.prepareStatement("INSERT INTO customer VALUES(?,?,?,?,?,?,?,?)");
  
    ps.setString(5,usm);
    ps.setString(1,customername_first);
    ps.setString(2,customername_second);
    ps.setString(6,pass);
    ps.setString(3,address);
    ps.setString(4,phone_number);
    ps.setString(8,email);
    ps.setString(7,repass);
    int a=ps.executeUpdate();
 
    System.out.println("register function");
   
   return true;
  
        }
    catch(Exception e)
    {return false;}
        
    }

 public String add(Vector v,String s,java.sql.Date dat,java.sql.Time t,int order) throws Exception
{ Connection con=MyCon.getConnection();
    String name="0";
    String name1="0";
    PreparedStatement ps;
    e=v.elements();
  
    while(e.hasMoreElements())
       {
      name = (String)e.nextElement();
      name1 = (String)e.nextElement();
     
  ps=con.prepareStatement("INSERT INTO userwish VALUES(?,?,?,?,?,?,?)");
  ps.setString(1,name);
ps.setString(2,name1);
ps.setString(3, s);
ps.setDate(4, dat);
ps.setTime(5, t);
ps.setInt(7,order);
ps.setString(6, "0");
int i=ps.executeUpdate();
       }
     return name;
 
}
 
}

