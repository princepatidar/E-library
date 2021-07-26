package com.login.forget.reset.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class ResetDao {
	public boolean check(String email,String pass)
	{
		String url="jdbc:mysql://localhost:3306/library";
		String username="root";
		String password="root";
		
		String sql="update signup set pass=? where email=?";
		System.out.println("on resetdao.java page");
		
		try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection(url,username,password);
				PreparedStatement st=con.prepareStatement(sql);
				System.out.println("email:"+ email);
				System.out.println("pass:"+pass);
				st.setString(1,pass);
				st.setString(2, email);
				int row =st.executeUpdate();
				
				 System.out.println(row);
				con.close();
				return true;
			}
		catch(Exception e) { e.printStackTrace();}
		return false;
	}
}
