package com.login.dao;

import java.sql.*;

public class LoginDao {
	
	public boolean check(String uname,String pass)
	{
		String url="jdbc:mysql://localhost:3306/library";
		String username="root";
		String password="root";
		
		String sql="select * from signup where uname=? and pass=?";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,username,password);
			PreparedStatement st=con.prepareStatement(sql);
			
			st.setString(1, uname);
			st.setString(2, pass);
			ResultSet rs=st.executeQuery();
			if(rs.next())
			{
				return true;
			}
			con.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
	}

}
