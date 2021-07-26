package com.books.dao;

import java.sql.*;
public class BookReadDao {

		public static String check(String bookId) //byte[] replaced by boolean
		{
			String url="jdbc:mysql://localhost:3306/books";
			String username="root";
			String password="root";
			
			String sql="select bookContent from elibrary where bookId =?";
			try {
					Class.forName("com.mysql.jdbc.Driver");
					Connection con=DriverManager.getConnection(url,username,password);
					PreparedStatement st=con.prepareStatement(sql);
					st.setString(1,bookId);
					System.out.println("in dao "+bookId);
					ResultSet rs=st.executeQuery();
					
					//System.out.println("in dao");
					while(rs.next())
					{
						
						
						System.out.println("book found");
						//return rs.getBytes("bookContent");
						
						return (rs.getString("bookContent"));
					}
					
				
				}
			
			catch(Exception e)
			{
				e.printStackTrace();
			}
			System.out.println("BOOK NOT FOUND");
			//return null;
			return null;
		}
				
}
