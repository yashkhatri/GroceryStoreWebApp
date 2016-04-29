package bean;

import java.sql.*;
public class RegisterDao {

	public static int register(User u){
		int status=0;
		try{
			Connection con=ConnectionProvider.getCon();
            PreparedStatement ps=con.prepareStatement("insert into product values(?,?,?,?,?,?,?)");
			ps.setString(1,u.getPid());
			ps.setString(7,u.getAnum());
			ps.setString(2,u.getIname());
                        ps.setString(4,u.getQty());
                        ps.setString(3,u.getPrice());
                       ps.setString(5,u.getMfgdt());
                       ps.setString(6,u.getExpdt());

			
		status=ps.executeUpdate();
		}catch(Exception e){}
		
		return status;
	}

	public ResultSet getAll() throws Exception
   {   ResultSet rs=null;

		try{
                 Connection con=ConnectionProvider.getCon();
		 PreparedStatement ps1=con.prepareStatement("select * from customer");

		rs=ps1.executeQuery();

		if(rs==null) return null;

		return rs;
   }catch(Exception e){}

return rs;
        }



        public ResultSet getDailysales() throws Exception
   {   ResultSet rs=null;

		try{
                 Connection con=ConnectionProvider.getCon();
		 PreparedStatement ps1=con.prepareStatement("select * from dailysales");

		rs=ps1.executeQuery();

		if(rs==null) return null;

		return rs;
   }catch(Exception e){}

return rs;
        }


        public ResultSet getTotalStock() throws Exception
   {   ResultSet rs=null;

		try{
                 Connection con=ConnectionProvider.getCon();
		 PreparedStatement ps1=con.prepareStatement("select * from product");

		rs=ps1.executeQuery();

		if(rs==null) return null;

		return rs;
   }catch(Exception e){}

return rs;
        }


        public ResultSet getDump() throws Exception
   {   ResultSet rs=null;

		try{
                 Connection con=ConnectionProvider.getCon();
		 PreparedStatement ps1=con.prepareStatement("select * from dump");

		rs=ps1.executeQuery();

		if(rs==null) return null;

		return rs;
   }catch(Exception e){}

return rs;
        }



}
