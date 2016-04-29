package mypack;


import mypack.MyCon;
import java.sql.*;
import java.lang.*;
public class Login {
    String pass,usm;
private Connection con;
public void setUsm(String usm){
    this.usm=usm;
}

public Login(){System.out.println("Login constructor");}
public void setPass(String pass){
this.pass=pass;
System.out.print("setpass");
}

    public String getUnm() {
        return usm;
    }
    
    public String getPass() {
        return pass;
    }
public boolean checkLogin() throws Exception{
    
    con=MyCon.getConnection();
    PreparedStatement ps=con.prepareStatement("select * from customer where usm=? and pass=?");
    ps.setString(1,usm);
    ps.setString(2,pass);
    ResultSet rs=ps.executeQuery();
    System.out.print("checklogin");
    if(rs.next())
    {return true;}
    else
    {return false;}
}
}
    

