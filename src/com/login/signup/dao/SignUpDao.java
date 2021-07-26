package com.login.signup.dao;


import java.sql.*;
import com.login.signup.SignUpBean;

public class SignUpDao 
{
	public static boolean value;
	public void signupUser(SignUpBean signupBean)
	{
		
		String fname = signupBean.getfname().toUpperCase();
		String lname = signupBean.getlname().toUpperCase();
		String uname = signupBean.getuname();
        String email = signupBean.getemail();
        String password = signupBean.getPassword();
        
        String url="jdbc:mysql://localhost:3306/library";
		String username="root";
		String pwd="root";
		
        
        Connection con = null;
        PreparedStatement st = null; 
       
        try
        {
            con = DriverManager.getConnection(url,username,pwd);
            String sql ="select uname from signup where uname=?";
            st =con.prepareStatement(sql);
            st.setString(1,uname);
            ResultSet rs = st.executeQuery();
            if(rs.next())
            {
            	check(true);
            }
            
            else
            {
            
            
            String query = "insert into signup(fname,lname,uname,email,pass) values (?,?,?,?,?)"; //Insert user details into the table 'signup'
             st = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
            st.setString(1, fname);
            st.setString(2, lname);
            st.setString(3, uname);
            st.setString(4, email);
            st.setString(5, password);
            
            st.executeUpdate();
            }
        }
        catch(Exception e)
        {
           e.printStackTrace();
        }       
        // On failure, send a message from here.
    }
	public void check(boolean value)
	{
		this.value=value;
	}
}
