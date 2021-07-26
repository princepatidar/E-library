package com.login.signup;

public class SignUpBean 
{
	 private String fname;
	 private String lname;
	 private String uname;
	 private String email;
	 private String password;
	 
	 //first name
	 public String getfname()
	 {
		 return fname;
	 }
	 public void setfname(String fname)
	 {
		 this.fname = fname;
	 }
	 
	 //last name
	 public String getlname() 
	 {
		 return lname;
	 }
	 public void setlname(String lname)
	 {
			 this.lname = lname;
	 }
	 
	 //user name
	 public String getuname()
	 {
		 return uname;
	 }
	 public void setuname(String uname)
	 {
		 this.uname = uname;
	 }
	 
	 //email
	 
	 public void setemail(String email)
	 {
		 this.email = email;
	 }
	 public String getemail()
	 {
		 return email;
	 }
	 
	 //password
	 public String getPassword()
	 {
		 return password;
	 }
	 public void setPassword(String password)
	 {
		 this.password = password;
	 }
		 
}