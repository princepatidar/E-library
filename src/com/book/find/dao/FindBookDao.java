package com.book.find.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class FindBookDao {
	public static Vector<String> check(String bookId)
	{
		String url="jdbc:mysql://localhost:3306/books";
		String username="root";
		String password="root";
		
		String sql="select imgId from elibrary where bookId like ?";
		try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection(url,username,password);
				PreparedStatement st=con.prepareStatement(sql);
				st.setString(1,"%"+bookId+"%");
				System.out.println("in dao "+bookId);
				ResultSet rs=st.executeQuery();
				Vector<String> v=new Vector<String>();
				while(rs.next())
				{
					System.out.println("in if");
					v.addElement(rs.getString(1));
				}
				con.close();
				return v;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
		return null;
	}
}

