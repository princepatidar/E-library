package com.login.forget.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ForgetDao {
	
		static String user;
	public boolean check(String email)
	{
		String url="jdbc:mysql://localhost:3306/library";
		String username="root";
		String password="root";
		
		String sql="select * from signup where email=?";
		
		
		try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection(url,username,password);
				PreparedStatement st=con.prepareStatement(sql);
			
				st.setString(1, email);
				ResultSet rs=st.executeQuery(); //to check email present in our database
				if(rs.next())
				{
					 user=rs.getString("uname");
					return true;
				}
			    con.close();
			}
		catch(Exception e) { e.printStackTrace();}
		return false;
	}
	public  static String setUser()
	{
		return user;
	}
}
